--[[ teleport.lua script by norb_ ]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v28,v29)local v30={};for v71=1, #v28 do v6(v30,v0(v4(v1(v2(v28,v71,v71 + 1 )),v1(v2(v29,1 + (v71% #v29) ,1 + (v71% #v29) + 1 )))%256 ));end return v5(v30);end local v8=game:GetService(v7("\227\198\203\41\239\184\198\10\212\199\232\49\233\169\198\25\212","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\17\216\36\246\249\49\219\35\198\249","\156\67\173\74\165"));local v9=game:GetService(v7("\4\182\93\30\186\47\72\48\190\71\17\143\35\84\34\190\74\19","\38\84\215\41\118\220\70"));local v10=game:GetService(v7("\96\26\35\11\251\66\5","\158\48\118\66\114"));local v11=v10.LocalPlayer;local v12={[v7("\189\37\2\63\114\167\247\174\55","\155\203\68\112\86\19\197")]={[v7("\83\205\9\234\69\123\241\247\84","\152\38\189\86\156\32\24\133")]=Vector3.new(0 + 0 ,1209 -709 ,603 -(268 + 335) ),[v7("\238\86\190\69\253\68\179\121\236\86\181\71\241\68","\38\156\55\199")]=RaycastParams.new(),[v7("\184\124\104\32","\35\200\29\28\72\115\20\154")]=v9:CreatePath({[v7("\46\190\200\207\130\37\58\13\140\193\222\142\37\58\30","\84\121\223\177\191\237\76")]=292 -(60 + 230) }),[v7("\171\90\200\185\63\66\15\210\171\83\204\164","\161\219\54\169\192\90\48\80")]=722 -(426 + 146) ,[v7("\95\71\8\44\74\78\5\26\90\82\5\32\77","\69\41\34\96")]=54 + 396 ,[v7("\168\198\219\15\18\36\174\215\222\4\5","\75\220\163\183\106\98")]=false,[v7("\17\174\132\39\239\7\182\132\52\208\22\163","\185\98\218\235\87")]=false},[v7("\198\51\35\243\210\175\216","\202\171\92\71\134\190")]={[v7("\60\200","\232\73\161\76")]=require(v8.Module.UI),[v7("\168\205\77\79\27","\126\219\185\34\61")]=require(v8.App.store),[v7("\28\194\95\107\123\101\204\242\24\199\82\97","\135\108\174\62\18\30\23\147")]=require(v8.Game.PlayerUtils),[v7("\160\236\34\194\27\162\54\248\178\232\62\202","\167\214\137\74\171\120\206\83")]=require(v8.Game.Garage.VehicleData),[v7("\136\248\51\79\249\164\159\245\32\98\237\179\130\252","\199\235\144\82\61\152")]=require(v8.Game.CharacterUtil),[v7("\23\23\171\42\0\26\176\47\2","\75\103\118\217")]=require(v8.Game.Paraglide)},[v7("\241\81\120\29\186\18\194\71","\126\167\52\16\116\217")]={v7("\235\47\45\129\166\22","\156\168\78\64\224\212\121"),v7("\45\235\160\222","\174\103\142\197")},[v7("\82\39\80\42\26\78\247\69\33\75\49\42\80\235","\152\54\72\63\88\69\62")]={}};local v13={};local v14={};local function v15(v31,v32)for v72,v73 in next,v31.Model:GetChildren() do if v73:IsA(v7("\246\197\253\89\228\197\252\72","\60\180\164\142")) then v73.CanCollide=v32;end end end local function v16(v33)local v34;local v35=math.huge;for v74,v75 in next,v12.modules.ui.CircleAction.Specs do if (v75.IsVehicle and (v75.ShouldAllowEntry==true) and (v75.Enabled==true) and (v75.Name==v7("\125\80\17\44\53\173\54\74\87\19\44\53","\114\56\62\101\73\71\141"))) then local v84=0 -0 ;local v85;while true do if (v84==(0 + 0)) then v85=v75.ValidRoot;if ( not table.find(v33,v85) and workspace.VehicleSpawns:FindFirstChild(v85.Name)) then if ( not v12.unsupported_vehicles[v85.Name] and (v12.modules.store._state.garageOwned.Vehicles[v85.Name] or v12.free_vehicles[v85.Name]) and  not v85.Seat.Player.Value) then if  not workspace:Raycast(v85.Seat.Position,v12.variables.up_vector,v12.variables.raycast_params) then local v122=0;local v123;while true do if (v122==(1024 -(706 + 318))) then v123=(v85.Seat.Position-v11.Character.HumanoidRootPart.Position).Magnitude;if (v123<v35) then local v139=1251 -(721 + 530) ;while true do if (v139==0) then v35=v123;v34=v75;break;end end end break;end end end end end break;end end end end return v34;end local function v17(v36,v37)local v38=Workspace:Raycast(v36,v37,TeleportParams);return v38~=nil ;end local function v18(v39)local v40=math.huge;local v41;local v39=v39 or {} ;for v76,v77 in next,v12.door_positions do if  not table.find(v39,v77) then local v86=1271 -(945 + 326) ;local v87;while true do if ((0 -0)==v86) then v87=(v77.position-v11.Character.HumanoidRootPart.Position).Magnitude;if (v87<v40) then local v107=0 + 0 ;while true do if (v107==(700 -(271 + 429))) then v40=v87;v41=v77;break;end end end break;end end end end table.insert(v39,v41);v15(v41.instance,false);local v42=v12.variables.path;v42:ComputeAsync(v11.Character.HumanoidRootPart.Position,v41.position);if (v42.Status==Enum.PathStatus.Success) then local v78=0 + 0 ;local v79;while true do if ((1500 -(1408 + 92))==v78) then v79=v42:GetWaypoints();for v100=1087 -(461 + 625) , #v79 do local v101=v79[v100];v11.Character.HumanoidRootPart.CFrame=CFrame.new(v101.Position + Vector3.new(1288 -(993 + 295) ,2.5,0) );if  not workspace:Raycast(v11.Character.HumanoidRootPart.Position,v12.variables.up_vector,v12.variables.raycast_params) then local v108=0 + 0 ;while true do if (v108==(1171 -(418 + 753))) then local v117=0;while true do if (v117==(0 + 0)) then v15(v41.instance,true);return;end end end end end task.wait(0.05);end break;end end end v15(v41.instance,true);v18(v39);end local function v19(v43,v44,v45,v46,v47,v48)local v49=0;local v50;local v51;local v52;while true do if (v49==(1 + 1)) then repeat local v95=0 + 0 ;local v96;local v97;while true do if (1==v95) then while true do if (v96==(1 + 1)) then if (v47 and v47.Seat.Player.Value) then local v124=529 -(406 + 123) ;local v125;local v126;while true do local v128=1769 -(1749 + 20) ;while true do if (v128==0) then if ((1 + 0)==v124) then v126=v125 and v125.ValidRoot ;if v126 then v19(v11.Character.HumanoidRootPart,v126.Seat.CFrame,135,false,v126);end v124=1324 -(1249 + 73) ;end if (v124==2) then return;end v128=1;end if (v128==(1 + 0)) then if (v124==(1145 -(466 + 679))) then table.insert(v48,v47);v125=v16(v48);v124=2 -1 ;end break;end end end end break;end if (v96==1) then local v114=0 -0 ;while true do if (v114==(1901 -(106 + 1794))) then v96=1 + 1 ;break;end if (v114==(0 + 0)) then task.wait();v43.CFrame=CFrame.new(v43.CFrame.X,v51,v43.CFrame.Z);v114=1;end end end if (v96==(0 -0)) then local v115=0;local v116;while true do if (v115==(0 -0)) then v116=0;while true do if (v116==(115 -(4 + 110))) then v96=585 -(57 + 527) ;break;end if (v116==(1427 -(41 + 1386))) then v97=(v52-v43.Position).Unit * v45 ;v43.Velocity=Vector3.new(v97.X,103 -(17 + 86) ,v97.Z);v116=1 + 0 ;end end break;end end end end break;end if ((0 -0)==v95) then v96=0 -0 ;v97=nil;v95=167 -(122 + 44) ;end end until (v43.Position-v52).Magnitude<(17 -7)  v43.CFrame=CFrame.new(v43.Position.X,v50.Y,v43.Position.Z);v49=3;end if (v49==(0 -0)) then local v89=0 + 0 ;while true do if (v89==0) then v50=v44.Position;if ( not v46 and workspace:Raycast(v43.Position,v12.variables.up_vector,v12.variables.raycast_params)) then local v109=0 + 0 ;local v110;while true do if (0==v109) then v110=0;while true do if (v110==0) then v18();task.wait(0.5);break;end end break;end end end v89=1 -0 ;end if (v89==(66 -(30 + 35))) then v49=1 + 0 ;break;end end end if (v49==(1260 -(1043 + 214))) then v43.Velocity=Vector3.zero;break;end if (v49==1) then v51=1890 -1390 ;v52=Vector3.new(v50.X,v51,v50.Z);v49=1214 -(323 + 889) ;end end end v12.variables.raycast_params.FilterType=Enum.RaycastFilterType.Blacklist;v12.variables.raycast_params.FilterDescendantsInstances={v11.Character,workspace.Vehicles,workspace:FindFirstChild(v7("\138\232\210\202","\164\216\137\187"))};workspace.ChildAdded:Connect(function(v53)if (v53.Name==v7("\224\231\56\188","\107\178\134\81\210\198\158")) then table.insert(v12.variables.raycast_params.FilterDescendantsInstances,v53);end end);v11.CharacterAdded:Connect(function(v54)table.insert(v12.variables.raycast_params.FilterDescendantsInstances,v54);end);for v55,v56 in next,v12.modules.vehicle_data do if  not v56.Price then v12.Vehicles[v56.Make]=true;end end for v57,v58 in pairs(Workspace:GetDescendants()) do if (v58.Name:sub( -(324 -(53 + 267)), -(1 + 0))==v7("\28\1\141\212","\202\88\110\226\166")) then local v81=413 -(15 + 398) ;local v82;while true do if (v81==(982 -(18 + 964))) then v82=v58:FindFirstChild(v7("\247\0\151\244\194","\170\163\111\226\151"));if (v82 and v82:IsA(v7("\51\49\161\61\126\54\59\5","\73\113\80\210\88\46\87"))) then local v105=0;local v106;while true do if (v105==(0 -0)) then v106=0;while true do if (v106==0) then for v130,v131 in pairs(v58:GetDescendants()) do pcall(function()v131.CanCollide=false;end);end for v132=5 + 2 ,100,7 do local v133=v82.Position + (v82.CFrame.LookVector * (v132 + 13 + 7)) ;local v134=v82.Position + (v82.CFrame.LookVector *  -(v132 + (870 -(20 + 830)))) ;if  not v17(v133,Vector3.new(0,1000,0)) then table.insert(DoorPositions,v133);break;elseif  not v17(v134,Vector3.new(0,1000,0 + 0 )) then table.insert(DoorPositions,v134);break;end end break;end end break;end end end break;end end end end local v23=v12.modules.player_utils.isPointInTag;v12.modules.player_utils.isPointInTag=function(v59,v60)local v61=126 -(116 + 10) ;while true do if (v61==(0 + 0)) then local v92=738 -(542 + 196) ;while true do if (v92==(0 -0)) then if ((v12.variables.teleporting and (v60==v7("\175\35\255\19\224\133\35\193\30","\135\225\76\173\114"))) or (v60==v7("\52\226\158\177\160\177\131\27\224\185\183\169","\199\122\141\216\208\204\221"))) then return true;end return v23(v59,v60);end end end end end;local v25=v12.modules.paraglide.IsFlying;v12.modules.paraglide.IsFlying=function(...)if (v12.variables.teleporting and getinfo(2,"s").source:find(v7("\139\220\28\252\113\248\170","\150\205\189\112\144\24"))) then return true;end return v25(...);end;task.spawn(function()while task.wait() do if (v12.variables.stopVelocity and v11.Character and v11.Character:FindFirstChild(v7("\13\145\178\77\10\135\24\20\23\139\176\88\52\137\3\4","\112\69\228\223\44\100\232\113"))) then v11.Character.HumanoidRootPart.Velocity=Vector3.zero;end end end);local function v27(v62,v63)local v64=0 + 0 ;local v65;local v66;local v67;local v68;local v63;local v69;local v70;while true do if (v64==(1 + 0)) then v67=nil;v68=nil;v64=1 + 1 ;end if (v64==(0 -0)) then v65=0 -0 ;v66=nil;v64=1;end if (v64==(1554 -(1126 + 425))) then v70=nil;while true do if (v65==(407 -(118 + 287))) then local v104=0 -0 ;while true do if (v104==0) then v69=nil;v70=nil;v104=1122 -(118 + 1003) ;end if (v104==(2 -1)) then v65=380 -(142 + 235) ;break;end end end if (v65==(4 -3)) then v68=nil;v63=nil;v65=1 + 1 ;end if (v65==(977 -(553 + 424))) then v66=0 -0 ;v67=nil;v65=1 + 0 ;end if ((3 + 0)==v65) then while true do if ((1 + 0)==v66) then if ((v68<=(9 + 11)) and  not workspace:Raycast(v11.Character.HumanoidRootPart.Position,v67.Unit * v68 ,v12.variables.raycast_params)) then local v118=0 + 0 ;while true do if (v118==(0 -0)) then v11.Character.HumanoidRootPart.CFrame=v62;return;end end end v63=v63 or {} ;v66=5 -3 ;end if (v66==4) then task.wait(0.5 -0 );v12.variables.teleporting=false;break;end if (v66==(1 + 2)) then v12.variables.teleporting=true;if v70 then local v119=0 -0 ;local v120;local v121;while true do if (v119==(753 -(239 + 514))) then v120=0 + 0 ;v121=nil;v119=1;end if (v119==(1330 -(797 + 532))) then while true do if (v120==0) then v121=(v70.Seat.Position-v11.Character.HumanoidRootPart.Position).Magnitude;if (v68<v121) then v19(v11.Character.HumanoidRootPart,v62,v12.variables.player_speed);else local v141=0 + 0 ;while true do if (v141==(1 + 0)) then repeat local v143=0;while true do if (v143==(0 -0)) then task.wait(1202.15 -(373 + 829) );v12.modules.character_util.OnJump();break;end end until v70.Seat.PlayerName.Value~=v11.Name  break;end if (v141==0) then local v142=731 -(476 + 255) ;while true do if (v142==0) then if (v70.Seat.PlayerName.Value~=v11.Name) then v19(v11.Character.HumanoidRootPart,v70.Seat.CFrame,v12.variables.player_speed,false,v70,v63);v12.variables.stopVelocity=true;local v145=1;repeat local v146=1130 -(369 + 761) ;local v147;local v148;while true do if (v146==(0 + 0)) then v147=0;v148=nil;v146=1;end if ((1 -0)==v146) then while true do if (v147==(0 -0)) then v148=0;while true do if ((238 -(64 + 174))==v148) then v69:Callback(true);v145=v145 + 1 + 0 ;v148=1 -0 ;end if (v148==(337 -(144 + 192))) then task.wait(216.1 -(42 + 174) );break;end end break;end end break;end end until (v145==(8 + 2)) or (v70.Seat.PlayerName.Value==v11.Name)  v12.variables.stopVelocity=false;if (v70.Seat.PlayerName.Value~=v11.Name) then local v149=0;while true do if (v149==(0 + 0)) then local v150=0 + 0 ;while true do if (v150==(1504 -(363 + 1141))) then table.insert(v63,v70);return v27(v62,v63 or {v70} );end end end end end end v19(v70.Engine,v62,v12.variables.vehicle_speed,true);v142=1;end if (v142==(1581 -(1183 + 397))) then v141=1;break;end end end end end break;end end break;end end else v19(v11.Character.HumanoidRootPart,v62,v12.variables.player_speed);end v66=11 -7 ;end if (2==v66) then v69=v16(v63);v70=v69 and v69.ValidRoot ;v66=3 + 0 ;end if (v66==0) then local v113=0 + 0 ;while true do if ((1975 -(1913 + 62))==v113) then v67=v62.Position-v11.Character.HumanoidRootPart.Position ;v68=v67.Magnitude;v113=1 + 0 ;end if (v113==(2 -1)) then v66=1934 -(565 + 1368) ;break;end end end end break;end end break;end if (v64==2) then v63=nil;v69=nil;v64=11 -8 ;end end end return v27;
