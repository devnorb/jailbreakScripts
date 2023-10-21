--[[ teleport.lua script by norb_ ]]--

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local PathfindingService = game:GetService("PathfindingService");
local Players = game:GetService("Players");

local player = Players.LocalPlayer;

local dependencies = {
    variables = {
        up_vector = Vector3.new(0, 500, 0),
        raycast_params = RaycastParams.new(),
        path = PathfindingService:CreatePath({ WaypointSpacing = 2 }),
        player_speed = 150,
        vehicle_speed = 450,
        teleporting = false,
        stopVelocity = false
    },
    modules = {
        ui = require(ReplicatedStorage.Module.UI),
        store = require(ReplicatedStorage.App.store),
        player_utils = require(ReplicatedStorage.Game.PlayerUtils),
        vehicle_data = require(ReplicatedStorage.Game.Garage.VehicleData),
        character_util = require(ReplicatedStorage.Game.CharacterUtil),
        paraglide = require(ReplicatedStorage.Game.Paraglide)
    },
    Vehicles = {"Camaro", "Jeep"},
    door_positions = { }    
};

local movement = { };
local utilities = { };

local function antiCollision(door, toggle)
    for index, child in next, door.Model:GetChildren() do 
        if child:IsA("BasePart") then 
            child.CanCollide = toggle;
        end; 
    end;
end;

local function getVehicle(tried)
    local nearest;
    local distance = math.huge;

    for index, action in next, dependencies.modules.ui.CircleAction.Specs do 
        if action.IsVehicle and action.ShouldAllowEntry == true and action.Enabled == true and action.Name == "Enter Driver" then
            local vehicle = action.ValidRoot;

            if not table.find(tried, vehicle) and workspace.VehicleSpawns:FindFirstChild(vehicle.Name) then
                if not dependencies.unsupported_vehicles[vehicle.Name] and (dependencies.modules.store._state.garageOwned.Vehicles[vehicle.Name] or dependencies.free_vehicles[vehicle.Name]) and not vehicle.Seat.Player.Value then
                    if not workspace:Raycast(vehicle.Seat.Position, dependencies.variables.up_vector, dependencies.variables.raycast_params) then
                        local magnitude = (vehicle.Seat.Position - player.Character.HumanoidRootPart.Position).Magnitude; 

                        if magnitude < distance then 
                            distance = magnitude;
                            nearest = action;
                        end;
                    end;
                end;
            end;
        end;
    end;

    return nearest;
end;

local function CheckRaycast(Position, Vector)
    local Raycasted = Workspace:Raycast(Position, Vector, TeleportParams)

    return Raycasted ~= nil
end

local function startPathfind(tried)
    local distance = math.huge;
    local nearest;

    local tried = tried or { };
    
    for index, value in next, dependencies.door_positions do
        if not table.find(tried, value) then
            local magnitude = (value.position - player.Character.HumanoidRootPart.Position).Magnitude;
            
            if magnitude < distance then 
                distance = magnitude;
                nearest = value;
            end;
        end;
    end;

    table.insert(tried, nearest);

    antiCollision(nearest.instance, false);

    local path = dependencies.variables.path;
    path:ComputeAsync(player.Character.HumanoidRootPart.Position, nearest.position);

    if path.Status == Enum.PathStatus.Success then 
        local waypoints = path:GetWaypoints();

        for index = 1, #waypoints do 
            local waypoint = waypoints[index];
            
            player.Character.HumanoidRootPart.CFrame = CFrame.new(waypoint.Position + Vector3.new(0, 2.5, 0))

            if not workspace:Raycast(player.Character.HumanoidRootPart.Position, dependencies.variables.up_vector, dependencies.variables.raycast_params) then
                antiCollision(nearest.instance, true);

                return;
            end;

            task.wait(0.05);
        end;
    end;

    antiCollision(nearest.instance, true);

    startPathfind(tried);
end;

local function enterVehicle(part, cframe, speed, car, target_vehicle, tried_vehicles)
    local vector_position = cframe.Position;
    
    if not car and workspace:Raycast(part.Position, dependencies.variables.up_vector, dependencies.variables.raycast_params) then
        startPathfind();
        task.wait(0.5);
    end;
    
    local y_level = 500;
    local higher_position = Vector3.new(vector_position.X, y_level, vector_position.Z);

    repeat
        local velocity_unit = (higher_position - part.Position).Unit * speed;
        part.Velocity = Vector3.new(velocity_unit.X, 0, velocity_unit.Z);

        task.wait();

        part.CFrame = CFrame.new(part.CFrame.X, y_level, part.CFrame.Z);

        if target_vehicle and target_vehicle.Seat.Player.Value then
            table.insert(tried_vehicles, target_vehicle);

            local nearest_vehicle = getVehicle(tried_vehicles);
            local vehicle_object = nearest_vehicle and nearest_vehicle.ValidRoot;

            if vehicle_object then 
                enterVehicle(player.Character.HumanoidRootPart, vehicle_object.Seat.CFrame, 135, false, vehicle_object);
            end;

            return;
        end;
    until (part.Position - higher_position).Magnitude < 10;

    part.CFrame = CFrame.new(part.Position.X, vector_position.Y, part.Position.Z);
    part.Velocity = Vector3.zero;
end;

dependencies.variables.raycast_params.FilterType = Enum.RaycastFilterType.Blacklist;
dependencies.variables.raycast_params.FilterDescendantsInstances = { player.Character, workspace.Vehicles, workspace:FindFirstChild("Rain") };

workspace.ChildAdded:Connect(function(child)
    if child.Name == "Rain" then 
        table.insert(dependencies.variables.raycast_params.FilterDescendantsInstances, child);
    end;
end);

player.CharacterAdded:Connect(function(character)
    table.insert(dependencies.variables.raycast_params.FilterDescendantsInstances, character);
end);

for index, vehicle_data in next, dependencies.modules.vehicle_data do
    if not vehicle_data.Price then
        dependencies.Vehicles[vehicle_data.Make] = true;
    end;
end;

for _, Door in pairs(Workspace:GetDescendants()) do
    if Door.Name:sub(-4, -1) == "Door" then
        local DoorTouch = Door:FindFirstChild("Touch")
            
        if DoorTouch and DoorTouch:IsA("BasePart") then
            for _, instance in pairs(Door:GetDescendants()) do
                pcall(function()
                    instance.CanCollide = false
                end)
            end

            for Distance = 7, 100, 7 do
                local DoorForward = DoorTouch.Position + DoorTouch.CFrame.LookVector * (Distance + 20)
                local DoorBackward = DoorTouch.Position + DoorTouch.CFrame.LookVector * -(Distance + 20)

                if not CheckRaycast(DoorForward, Vector3.new(0, 1000, 0)) then
                    table.insert(DoorPositions, DoorForward)
                    break
                elseif not CheckRaycast(DoorBackward, Vector3.new(0, 1000, 0)) then
                    table.insert(DoorPositions, DoorBackward)
                    break
                end
            end
        end
    end
end
local old_is_point_in_tag = dependencies.modules.player_utils.isPointInTag;
dependencies.modules.player_utils.isPointInTag = function(point, tag)
    if dependencies.variables.teleporting and tag == "NoRagdoll" or tag == "NoFallDamage" then
        return true;
    end;
    
    return old_is_point_in_tag(point, tag);
end;
local oldIsFlying = dependencies.modules.paraglide.IsFlying
dependencies.modules.paraglide.IsFlying = function(...)
    if dependencies.variables.teleporting and getinfo(2, "s").source:find("Falling") then
        return true
    end
    
    return oldIsFlying(...)
end

task.spawn(function()
    while task.wait() do
        if dependencies.variables.stopVelocity and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.Velocity = Vector3.zero;
        end;
    end;
end);

local function teleport(cframe, tried)
    local relative_position = (cframe.Position - player.Character.HumanoidRootPart.Position);
    local target_distance = relative_position.Magnitude;

    if target_distance <= 20 and not workspace:Raycast(player.Character.HumanoidRootPart.Position, relative_position.Unit * target_distance, dependencies.variables.raycast_params) then 
        player.Character.HumanoidRootPart.CFrame = cframe; 
        
        return;
    end; 

    local tried = tried or { };
    local nearest_vehicle = getVehicle(tried);
    local vehicle_object = nearest_vehicle and nearest_vehicle.ValidRoot;

    dependencies.variables.teleporting = true;

    if vehicle_object then 
        local vehicle_distance = (vehicle_object.Seat.Position - player.Character.HumanoidRootPart.Position).Magnitude;

        if target_distance < vehicle_distance then
            enterVehicle(player.Character.HumanoidRootPart, cframe, dependencies.variables.player_speed);
        else 
            if vehicle_object.Seat.PlayerName.Value ~= player.Name then
                enterVehicle(player.Character.HumanoidRootPart, vehicle_object.Seat.CFrame, dependencies.variables.player_speed, false, vehicle_object, tried);

                dependencies.variables.stopVelocity = true;

                local enter_attempts = 1;

                repeat
                    nearest_vehicle:Callback(true)
                    
                    enter_attempts = enter_attempts + 1;

                    task.wait(0.1);
                until enter_attempts == 10 or vehicle_object.Seat.PlayerName.Value == player.Name;

                dependencies.variables.stopVelocity = false;

                if vehicle_object.Seat.PlayerName.Value ~= player.Name then
                    table.insert(tried, vehicle_object);

                    return teleport(cframe, tried or { vehicle_object });
                end;
            end;

            enterVehicle(vehicle_object.Engine, cframe, dependencies.variables.vehicle_speed, true);

            repeat
                task.wait(0.15);
                dependencies.modules.character_util.OnJump();
            until vehicle_object.Seat.PlayerName.Value ~= player.Name;
        end;
    else
        enterVehicle(player.Character.HumanoidRootPart, cframe, dependencies.variables.player_speed);
    end;

    task.wait(0.5);
    dependencies.variables.teleporting = false;
end;

return teleport;
