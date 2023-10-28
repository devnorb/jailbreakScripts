--[[
     ____.      .__.__ ___.                        __      ____ ___      .__                                 .__   
    |    |____  |__|  |\_ |_________  ____ _____  |  | __ |    |   \____ |__|__  __ ___________  __________  |  |  
    |    \__  \ |  |  | | __ \_  __ \/ __ \\__  \ |  |/ / |    |   /    \|  \  \/ // __ \_  __ \/  ___|__  \ |  |  
/\__|    |/ __ \|  |  |_| \_\ \  | \|  ___/ / __ \|    <  |    |  /   |  \  |\   /\  ___/|  | \/\___ \ / __ \|  |__
\________(____  /__|____/___  /__|   \___  >____  /__|_ \ |______/|___|  /__| \_/  \___  >__|  /____  >____  /____/
              \/            \/           \/     \/     \/              \/              \/           \/     \/      

Jailbreak Universal loader script by norb_
Deobfuscation attempts will result in a HWID script ban 
]]--

-- print(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)

local placeID = game.PlaceId
local Players = game:GetService("Players")
warn("Waiting for game to load...")
repeat
    wait()
until game:IsLoaded()

warn("Loading Script...")

if placeID ~= 606849621 then
    Players.LocalPlayer:Kick("Jailbreak is the only game that is supported by this script!")
else
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local rejoin = game:GetService("TeleportService")
    local StarterGui = game:GetService("StarterGui")
    local storageUtils = ReplicatedStorage.Game.PlayerUtils
    local GunShopUI = require(ReplicatedStorage.Game.GunShop.GunShopUI)
    local GunShopUtils = require(ReplicatedStorage.Game.GunShop.GunShopUtils)
    local sendNotification = require(ReplicatedStorage.Game.Notification)
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/devnorb/jailbreakScripts/main/teleport.lua"))()
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/devnorb/jailbreakScripts/main/interface.lua"))()
    local unsupportedFunctions = loadstring(game:HttpGet("https://raw.githubusercontent.com/devnorb/jailbreakScripts/main/checkFunctions.lua"))()
    local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

    Notification:Notify(
        {Title = "Unsupported functions", Description = table.concat(unsupportedFunctions, ", ")},
        {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
    )
    Notification:Notify(
        {Title = "Script Deprecated", Description = "This script is not maintained anymore, new one has been copied to your clipboard."},
        {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 100000, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
    )
    setclipboard('loadstring(game:HttpGet("https://raw.githubusercontent.com/devnorb/vortexjb/main/beta.lua"))()')

    sendNotification.new({
        Text = "This script has been replaced by Vortex v2. The new script has been copied to clipboard.", 
        Duration = 100000,                        
    })

    local main = library:CreateMain("Jailbreak Universal", "by norb_", Enum.KeyCode.RightShift)
    local tab = main:CreateTab("Teleports")
    local othertab = main:CreateTab("Other Scripts")

    wait(0.5)
    Notification:Notify(
        {Title = "Loaded Script", Description = "Jailbreak Universal script has been loaded!"},
        {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(0, 255, 0)}
    )

    local teleporting
    local baseteleporting
    local miscteleporting

    tab:CreateDropdown(
        "Teleport to Place",
        {
            "Donut Shop",
            "Gas Station",
            "Rising City Bank",
            "Crater City Bank",
            "Jewelry Store",
            "Power Plant",
            "Museum",
            "Casino",
            "Tomb",
            "Cargo Plane",
            "CEO",
            "Trading Ship",
            "Town Gun Shop",
            "Rising City Gun Shop",
            "Crater City Gun Shop"
        },
        function(e)
            if teleporting == true then
                warn("Already teleporting!")
            else
                if e == "Rising City Bank" then
                    teleport(CFrame.new(0, 18, 865))
                    teleporting = true
                    wait(3)
                    teleporting = false
                else
                    if e == "Crater City Bank" then
                        teleport(CFrame.new(-646, 19, -6078))
                        teleporting = true
                        wait(3)
                        teleporting = false
                    else
                        if e == "Jewelry Store" then
                            teleport(CFrame.new(150, 18, 1373))
                            teleporting = true
                            wait(3)
                            teleporting = false
                        else
                            if e == "Donut Shop" then
                                teleport(CFrame.new(100, 18, -1510))
                                teleporting = true
                                wait(3)
                                teleporting = false
                            else
                                if e == "Gas Station" then
                                    teleport(CFrame.new(-1570, 18, 700))
                                    teleporting = true
                                    wait(3)
                                    teleporting = false
                                else
                                    if e == "Power Plant" then
                                        teleport(CFrame.new(85, 21, 2339))
                                        teleporting = true
                                        wait(3)
                                        teleporting = false
                                    else
                                        if e == "Museum" then
                                            teleport(CFrame.new(1015, 100, 1250))
                                            teleporting = true
                                            wait(3)
                                            teleporting = false
                                        else
                                            if e == "Casino" then
                                                teleport(CFrame.new(-210, 18, -4630))
                                                teleporting = true
                                                wait(3)
                                                teleporting = false
                                            else
                                                if e == "Tomb" then
                                                    teleport(CFrame.new(500, 50, -500))
                                                    teleporting = true
                                                    wait(3)
                                                    teleporting = false
                                                else
                                                    if e == "Cargo Plane" then
                                                        teleport(CFrame.new(-1244, 41, 2862))
                                                        teleporting = true
                                                        wait(3)
                                                        teleporting = false
                                                    else
                                                        if e == "CEO" then
                                                            teleport(CFrame.new(3050, 75, -4500))
                                                            teleporting = true
                                                            wait(3)
                                                            teleporting = false
                                                        else
                                                            if e == "Trading Ship" then
                                                                teleport(CFrame.new(2677, 27, -3891))
                                                                teleporting = true
                                                                wait(3)
                                                                teleporting = false
                                                            else
                                                                if e == "Town Gun Shop" then
                                                                    teleport(CFrame.new(3, 19, -1759))
                                                                    teleporting = true
                                                                    wait(3)
                                                                    teleporting = false
                                                                else
                                                                    if e == "Rising City Gun Shop" then
                                                                        teleport(CFrame.new(390, 18, 532))
                                                                        teleporting = true
                                                                        wait(3)
                                                                        teleporting = false
                                                                    else
                                                                        if e == "Crater City Gun Shop" then
                                                                            teleport(CFrame.new(-354, 19, -5671))
                                                                            teleporting = true
                                                                            wait(3)
                                                                            teleporting = false
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    )

    tab:CreateDropdown(
        "Teleport to Base",
        {
            "Volcano Base",
            "Collector",
            "Criminal Base",
            "Prison Police Base",
            "Museum Police Base",
            "Military Police Base",
            "Volcano Secret Agent Base",
            "Museum Secret Agent Base",
            "Military Secret Agent Base",
            "Cargo Crate drop off"
        },
        function(e)
            if baseteleporting == true then
                warn("Already teleporting!")
            else
                if e == "Volcano Base" then
                    teleport(CFrame.new(2282, 18, -2064))
                    baseteleporting = true
                    wait(3)
                    baseteleporting = false
                else
                    if e == "Collector" then
                        teleport(CFrame.new(2288, 19, -2591))
                        baseteleporting = true
                        wait(3)
                        baseteleporting = false
                    else
                        if e == "Criminal Base" then
                            teleport(CFrame.new(-245, 18, 1620))
                            baseteleporting = true
                            wait(3)
                            baseteleporting = false
                        else
                            if e == "Cargo Crate drop off" then
                                teleport(CFrame.new(-342, 21, 2057))
                                baseteleporting = true
                                wait(3)
                                baseteleporting = false
                            else
                                if e == "Museum Police Base" then
                                    teleport(CFrame.new(724, 38, 1081))
                                    baseteleporting = true
                                    wait(3)
                                    baseteleporting = false
                                else
                                    if e == "Prison Police Base" then
                                        teleport(CFrame.new(-1266, 18, -1544))
                                        baseteleporting = true
                                        wait(3)
                                        baseteleporting = false
                                    else
                                        if e == "Military Police Base" then
                                            teleport(CFrame.new(883, 19, -3495))
                                            baseteleporting = true
                                            wait(3)
                                            baseteleporting = false
                                        else
                                            if e == "Volcano Secret Agent Base" then
                                                teleport(CFrame.new(2058, 41, -1946))
                                                baseteleporting = true
                                                wait(3)
                                                baseteleporting = false
                                            else
                                                if e == "Museum Secret Agent Base" then
                                                    teleport(CFrame.new(1512, 85, 1537))
                                                    baseteleporting = true
                                                    wait(3)
                                                    baseteleporting = false
                                                else
                                                    if e == "Military Secret Agent Base" then
                                                        teleport(CFrame.new(750, 8, -3699))
                                                        baseteleporting = true
                                                        wait(3)
                                                        baseteleporting = false
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    )

    tab:CreateDropdown(
        "Miscellaneous Teleports",
        {
            "Jetpack"
        },
        function(e)
            if miscteleporting == true then
                warn("Already teleporting!")
            else
                if e == "Jetpack" then
                    teleport(CFrame.new(-630, 216, -6002))
                    miscteleporting = true
                    wait(3)
                    miscteleporting = false
                end
            end
        end
    )

    othertab:CreateDropdown(
        "Scripts",
        {
            "Fly Script",
            "Invisible Keycard",
            "Infinite Nitro",
            "Infinite Jetpack Fuel",
            "Load Project Auto (AutoRob)",
            "Open Gun Menu",
            "Load Aimbot & Wallbang Script",
            "Load FPS Booster",
            "Rejoin Server",
            "Unload this script"
        },
        function(e)
            if teleporting == true then
                warn("Already teleporting!")
            else
                if e == "Fly Script" then
                    Notification:Notify(
                        {Title = "Loaded Fly Script", Description = "To start/stop flying, press the X key."},
                        {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "image"},
                        {
                            Image = "http://www.roblox.com/asset/?id=6023426923",
                            ImageColor = Color3.fromRGB(173, 216, 230)
                        }
                    )
                    loadstring(
                        game:HttpGet("https://raw.githubusercontent.com/devnorb/jailbreakScripts/main/flyScript.lua")
                    )()
                else
                    if e == "Invisible Keycard" then
                        require(storageUtils).hasKey = function()
                            return true
                        end
                        Notification:Notify(
                            {
                                Title = "Loaded Invisible Keycard",
                                Description = "This script gives you a invisible keycard."
                            },
                            {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "image"},
                            {
                                Image = "http://www.roblox.com/asset/?id=6023426923",
                                ImageColor = Color3.fromRGB(173, 216, 230)
                            }
                        )
                    else
                        if e == "Open Gun Menu" then
                            pcall(GunShopUI.open)
                            Notification:Notify(
                                {
                                    Title = "Gun Menu",
                                    Description = "Opened Gun Menu."
                                },
                                {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "image"},
                                {
                                    Image = "http://www.roblox.com/asset/?id=6023426923",
                                    ImageColor = Color3.fromRGB(173, 216, 230)
                                }
                            )
                            else
                                if e == "Infinite Nitro" then
                                    local mouse = Players.LocalPlayer:GetMouse()
                                    local function freeNitro(key)
                                        if (key == "q") then
                                            for _, v in next, getgc(true) do
                                                if (type(v) == "table" and rawget(v, "Nitro")) then
                                                    v.Nitro = 250
                                                end
                                            end
                                        end
                                    end
                                    mouse.KeyDown:connect(freeNitro)
                                    Notification:Notify(
                                        {Title = "Loaded Infinite Nitro", Description = "You now have infinite nitro."},
                                        {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "image"},
                                        {
                                            Image = "http://www.roblox.com/asset/?id=6023426923",
                                            ImageColor = Color3.fromRGB(173, 216, 230)
                                        }
                                    )
                                else
                                    if e == "Infinite Jetpack Fuel" then
                                        for _, v in next, getgc(true) do
                                            if (type(v) == "table" and rawget(v, "LocalMaxFuel")) then
                                                v.LocalMaxFuel = math.huge
                                                v.LocalFuel = math.huge
                                                v.LocalFuelType = "Rocket"
                                            end
                                        end
                                        Notification:Notify(
                                            {
                                                Title = "Loaded Infinite Jetpack Fuel",
                                                Description = "You now have infinite jetpack fuel."
                                            },
                                            {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "image"},
                                            {
                                                Image = "http://www.roblox.com/asset/?id=6023426923",
                                                ImageColor = Color3.fromRGB(173, 216, 230)
                                            }
                                        )
                                    else
                                        if e == "Load Project Auto (AutoRob)" then
                                            game.CoreGui.jbUniversal:Destroy()
                                            loadstring(
                                                game:HttpGet(
                                                    "https://api.luarmor.net/files/v3/loaders/d214fceffa2f5e75046a674725be2ef7.lua"
                                                )
                                            )()
                                            Notification:Notify(
                                                {
                                                    Title = "Loaded Project Auto",
                                                    Description = "This is a autorob script, designed for automatically robbing stores."
                                                },
                                                {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "image"},
                                                {
                                                    Image = "http://www.roblox.com/asset/?id=6023426923",
                                                    ImageColor = Color3.fromRGB(173, 216, 230)
                                                }
                                            )
                                        else
                                            if e == "Load FPS Booster" then
                                                loadstring(
                                                    game:HttpGet(
                                                        "https://raw.githubusercontent.com/devnorb/jailbreakScripts/main/fpsBooster.lua"
                                                    )
                                                )()
                                                Notification:Notify(
                                                    {
                                                        Title = "Loaded FPS Booster",
                                                        Description = "This script boosts your FPS."
                                                    },
                                                    {
                                                        OutlineColor = Color3.fromRGB(80, 80, 80),
                                                        Time = 5,
                                                        Type = "image"
                                                    },
                                                    {
                                                        Image = "http://www.roblox.com/asset/?id=6023426923",
                                                        ImageColor = Color3.fromRGB(173, 216, 230)
                                                    }
                                                )
                                            else
                                                if e == "Load Aimbot & Wallbang Script" then
                                                    loadstring(
                                                        game:HttpGet(
                                                            "https://raw.githubusercontent.com/devnorb/jailbreakScripts/main/aimbotWallbang.lua"
                                                        )
                                                    )()
                                                    Notification:Notify(
                                                        {
                                                            Title = "Loaded Aimbot & Wallbang Script",
                                                            Description = "This script allows you to shoot through walls while automatically locking on to the target."
                                                        },
                                                        {
                                                            OutlineColor = Color3.fromRGB(80, 80, 80),
                                                            Time = 5,
                                                            Type = "image"
                                                        },
                                                        {
                                                            Image = "http://www.roblox.com/asset/?id=6023426923",
                                                            ImageColor = Color3.fromRGB(173, 216, 230)
                                                        }
                                                    )
                                                else
                                                    if e == "Rejoin Server" then
                                                        rejoin:Teleport(placeID, Players.LocalPlayer)
                                                        Notification:Notify(
                                                            {Title = "Rejoin Server", Description = "Rejoining Server..."},
                                                            {
                                                                OutlineColor = Color3.fromRGB(80, 80, 80),
                                                                Time = 5,
                                                                Type = "image"
                                                            },
                                                            {
                                                                Image = "http://www.roblox.com/asset/?id=6023426923",
                                                                ImageColor = Color3.fromRGB(0, 255, 0)
                                                            }
                                                        )
                                                    else
                                                    if e == "Unload this script" then
                                                        game.CoreGui.jbUniversal:Destroy()
                                                        Notification:Notify(
                                                            {Title = "Script Unload", Description = "Unloaded script."},
                                                            {
                                                                OutlineColor = Color3.fromRGB(80, 80, 80),
                                                                Time = 5,
                                                                Type = "image"
                                                            },
                                                            {
                                                                Image = "http://www.roblox.com/asset/?id=6023426923",
                                                                ImageColor = Color3.fromRGB(0, 255, 0)
                                                            }
                                                        )
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    )
end
