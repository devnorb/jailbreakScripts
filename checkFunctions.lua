--[[ checkFunctions.lua ]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v10,v11)local v12={};for v15=1, #v10 do v6(v12,v0(v4(v1(v2(v10,v15,v15 + 1 )),v1(v2(v11,1 + (v15% #v11) ,1 + (v15% #v11) + 1 )))%256 ));end return v5(v12);end local v8={v7("\216\208\215\38\234\180\212\11\195\198","\126\177\163\187\69\134\219\167"),v7("\42\222\41\198\240\44\222\63\215\249","\156\67\173\74\165"),v7("\55\187\70\24\185\32\83\58\180\93\31\179\40","\38\84\215\41\118\220\70"),v7("\84\19\32\7\249","\158\48\118\66\114"),v7("\163\48\4\38","\155\203\68\112\86\19\197"),v7("\84\216\39\233\69\107\241","\152\38\189\86\156\32\24\133"),v7("\250\94\181\67\239\94\160\72\253\91","\38\156\55\199"),v7("\174\116\110\45\7\123\239\64\160\116\114\60\22\102\255\80\188","\35\200\29\28\72\115\20\154"),v7("\30\186\197\202\157\58\53\21\170\212","\84\121\223\177\191\237\76"),v7("\188\83\221\178\63\94\38","\161\219\54\169\192\90\48\80"),v7("\71\71\23\38\74\78\15\54\92\80\5","\69\41\34\96"),v7("\180\204\216\1\4\62\178\192\195\3\13\37","\75\220\163\183\106\98"),v7("\5\191\159\52\214\12\169\159\54\215\22\169","\185\98\218\235\87"),v7("\204\57\51\238\203\163","\202\171\92\71\134\190"),v7("\58\216\34","\232\73\161\76"),v7("\188\220\86\94\17\181\215\71\94\10\178\214\76\78","\126\219\185\34\61"),v7("\11\203\74\77\106\127\225\226\13\202\97\113\113\121\231\226\20\218","\135\108\174\62\18\30\23\147"),v7("\177\236\62\200\23\160\39\194\174\253","\167\214\137\74\171\120\206\83"),v7("\140\245\38\73\240\181\142\241\54\94\247\169\159\245\42\73","\199\235\144\82\61\152"),v7("\0\19\173\34\3\19\183\63\14\2\160","\75\103\118\217"),v7("\192\81\100\43\173\22\213\81\113\16\134\23\195\81\126\0\176\10\222","\126\167\52\16\116\217"),v7("\219\43\52\137\176\28\242\220\39\52\153","\156\168\78\64\224\212\121"),v7("\20\235\177\241\19\230\183\203\6\234\154\199\3\235\171\218\14\250\188","\174\103\142\197"),v7("\69\45\75\59\42\80\236\83\48\75","\152\54\72\63\88\69\62"),v7("\199\193\250\72\220\214\235\93\208\199\225\82\192\193\246\72","\60\180\164\142"),v7("\75\91\17\22\51\229\0\93\95\1\22\36\226\28\76\91\29\61","\114\56\62\101\73\71\141"),v7("\191\236\207\195\187","\164\216\137\187"),v7("\195\243\52\167\163\193\4\220\217\37\183\170\251\27\221\244\37","\107\178\134\81\210\198\158"),v7("\63\11\150\197\165\54\0\135\197\190\49\1\140\213","\202\88\110\226\166"),v7("\208\10\150\244\197\205\28\150\246\196\215","\170\163\111\226\151"),v7("\2\53\166\59\65\57\58\5\49\188\44\93","\73\113\80\210\88\46\87"),v7("\136\63\203\27\235\132","\135\225\76\173\114"),v7("\8\232\185\180\170\180\171\31","\199\122\141\216\208\204\221"),v7("\186\207\25\228\125\240\164\209\21","\150\205\189\112\144\24"),v7("\34\129\171\94\5\159\28\21\49\133\171\77\6\132\20","\112\69\228\223\44\100\232\113"),v7("\211\26\19\222\179\104\135\192\30\5\223\179","\230\180\127\103\179\214\28")};local v9={};for v13,v14 in pairs(v8) do if ( not getgenv()[v14] or (getgenv()[v14]==nil)) then table.insert(v9,v14);end end return v9;
