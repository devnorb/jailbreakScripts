--[[ flyScript.lua ]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v16,v17)local v18={};for v24=1, #v16 do v6(v18,v0(v4(v1(v2(v16,v24,v24 + 1 )),v1(v2(v17,1 + (v24% #v17) ,1 + (v24% #v17) + 1 )))%256 ));end return v5(v18);end repeat wait();until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and (game.Players.LocalPlayer.Character:findFirstChild(v7("\229\204\201\54\233","\126\177\163\187\69\134\219\167")) or game.Players.LocalPlayer.Character:findFirstChild(v7("\22\221\58\192\238\23\194\56\214\243","\156\67\173\74\165"))) and game.Players.LocalPlayer.Character:findFirstChild(v7("\28\162\68\23\178\41\79\48","\38\84\215\41\118\220\70"))  local v8=game.Players.LocalPlayer:GetMouse();repeat wait();until v8 local v9=game.Players.LocalPlayer;local v10=game.Players.LocalPlayer.Character:findFirstChild(v7("\100\25\48\1\241","\158\48\118\66\114")) or game.Players.LocalPlayer.Character:findFirstChild(v7("\158\52\0\51\97\145\244\185\55\31","\155\203\68\112\86\19\197")) ;local v11=true;local v12={f=0,b=137 -(8 + 129) ,l=0 + 0 ,r=0};local v13={f=0 -0 ,b=0 -0 ,l=0,r=0};local v14=27 + 123 ;local v15=213 -93 ;function startFlying()local v19=0 + 0 ;local v20;local v21;while true do if (0==v19) then v20=Instance.new(v7("\100\210\50\229\103\97\247\247","\152\38\189\86\156\32\24\133"),v10);v20.P=90000;v20.maxTorque=Vector3.new(9000000279 -(368 + 423) ,10772448369 -1772448881 ,9000000395 -(821 + 86) );v19=1;end if (v19==1) then v20.cframe=v10.CFrame;v21=Instance.new(v7("\222\88\163\95\202\82\171\73\255\94\179\95","\38\156\55\199"),v10);v21.velocity=Vector3.new(0 -0 ,1883.1 -(1668 + 215) ,0 + 0 );v19=6 -4 ;end if (v19==(2 + 1)) then local v31=518 -(114 + 404) ;while true do if (1==v31) then v20:Destroy();v19=492 -(106 + 382) ;break;end if (v31==0) then v13={f=411 -(306 + 105) ,b=0,l=0 -0 ,r=0};v15=427 -(166 + 261) ;v31=1;end end end if ((509 -(289 + 218))==v19) then v21.maxForce=Vector3.new(9000000832 -(1213 + 131) ,10831114403 -1831114915 ,9000001239 -(1440 + 311) );repeat local v34=0 + 0 ;local v35;while true do if (v34==(0 -0)) then v35=0;while true do if (v35==(4 -2)) then v20.cframe=game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles( -math.rad(((v12.f + v12.b) * (3 + 47) * v15)/v14 ),0 + 0 ,0) ;break;end if (v35==0) then wait();v9.Character.Humanoid.PlatformStand=false;v35=1;end if (v35==(886 -(261 + 624))) then if (((v12.l + v12.r)~=0) or ((v12.f + v12.b)~=(0 -0))) then local v46=0;while true do if (v46==(1080 -(1020 + 60))) then v15=v15 + (1423.3 -(630 + 793)) + (v15/v14) ;if (v15>v14) then v15=v14;end break;end end elseif ( not (((v12.l + v12.r)~=(0 -0)) or ((v12.f + v12.b)~=0)) and (v15~=(0 -0))) then local v48=0;while true do if (v48==(0 + 0)) then v15=v15-(3 -2) ;if (v15<(1747 -(760 + 987))) then v15=1913 -(1789 + 124) ;end break;end end end if (((v12.l + v12.r)~=(766 -(745 + 21))) or ((v12.f + v12.b)~=(0 + 0))) then v21.velocity=((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v12.f + v12.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v12.l + v12.r ,(v12.f + v12.b) * 0.2 ,0 -0 ).p) -game.Workspace.CurrentCamera.CoordinateFrame.p)) * v15 ;v13={f=v12.f,b=v12.b,l=v12.l,r=v12.r};elseif (((v12.l + v12.r)==0) and ((v12.f + v12.b)==(0 -0)) and (v15~=(0 + 0))) then v21.velocity=((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v13.f + v13.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v13.l + v13.r ,(v13.f + v13.b) * (0.2 + 0) ,1055 -(87 + 968) ).p) -game.Workspace.CurrentCamera.CoordinateFrame.p)) * v15 ;else v21.velocity=Vector3.new(0 -0 ,0.1 + 0 ,0);end v35=2;end end break;end end until  not v11 v12={f=0 -0 ,b=1413 -(447 + 966) ,l=0,r=0 -0 };v19=1820 -(1703 + 114) ;end if (v19==(705 -(376 + 325))) then v21:Destroy();v9.Character.Humanoid.PlatformStand=false;break;end end end v8.KeyDown:connect(function(v22)if (v22:lower()=="x") then if v11 then v11=false;else local v36=0 -0 ;while true do if (v36==0) then v11=true;startFlying();break;end end end elseif (v22:lower()=="w") then v12.f=1;elseif (v22:lower()=="s") then v12.b= -(2 -1);elseif (v22:lower()=="a") then v12.l= -1;elseif (v22:lower()=="d") then v12.r=1;end end);v8.KeyUp:connect(function(v23)if (v23:lower()=="w") then v12.f=0 + 0 ;elseif (v23:lower()=="s") then v12.b=0;elseif (v23:lower()=="a") then v12.l=0 -0 ;elseif (v23:lower()=="d") then v12.r=14 -(9 + 5) ;end end);_G.unfly=function()v11=false;end;startFlying();
