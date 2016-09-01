--[[
🔱➖➖➖➖➖➖➖➖➖➖➖➖➖➖🔱
#:[[
#For info file
#Developer :  
#JOker < @lua_3 > 
#JoZef < @jozef3 >
#our channel: @Smart_Team
#File type : (info)
🔱➖➖➖➖➖➖➖➖➖➖➖➖➖➖🔱
—]]
do
local function smart(msg,matches)
if is_sudo(msg) then 
local jozef = "🤖  yo̲̲u̲ ̲a̲̲r̲̲e̲ ̲s̲̲u̲̲d̲̲o̲ 🤖 : "..msg.from.first_name.."\n".."🆔- ЏФu :"..msg.from.id.."\n".."⚜- usΞЯЛΛmΞ : @"..msg.from.username.."\n".."📞 ηυмвєя :("..(msg.from.phone or "Not Number")..")\n".."▓█▓▓█▓▓█▓▓█▓▓█▓▓█▓".."\n".."〽️ -παʍε ĝƦøuρ : "..msg.to.title.."\n".."🆔 -ĝƦøuρ"..msg.to.id.."\n".."▓█▓▓█▓▓█▓▓█▓▓█▓▓█▓".."\n".."📡 -ĈĦÂИЄЄĿ : @Smart_team".."\n".."🤖 - َ̲SًَUًَDًُOًَ  : @lua_3"
return reply_msg(msg.id, jozef,ok_cb,  false)
end
if is_owner(msg) then
local medo = "👑 ¥øŪ ΛŔ£ øωה£Ŕ 👑 : "..msg.from.first_name.."\n".."🆔- ЏФu :"..msg.from.id.."\n".."⚜- usΞЯЛΛmΞ : @"..msg.from.username.."\n".."📞 ηυмвєя :("..(msg.from.phone or "Not Number")..")\n".."▓█▓▓█▓▓█▓▓█▓▓█▓▓█▓".."\n".."〽️ -παʍε ĝƦøuρ : "..msg.to.title.."\n".."🆔 -ĝƦøuρ"..msg.to.id.."\n".."▓█▓▓█▓▓█▓▓█▓▓█▓▓█▓".."\n".."📡 -ĈĦÂИЄЄĿ : @Smart_team".."\n".."🤖 - َ̲SًَUًَDًُOًَ  : @lua_3"
return reply_msg(msg.id, medo,ok_cb,  false)
end
if is_momod(msg) then 
local hasone =  "😊  ¥øŪ ΛŔ£ ΛƊɱĩה 👻 : "..msg.from.first_name.."\n".."🆔- ЏФu :"..msg.from.id.."\n".."⚜- usΞЯЛΛmΞ : @"..msg.from.username.."\n".."📞 ηυмвєя :("..(msg.from.phone or "Not Number")..")\n".."▓█▓▓█▓▓█▓▓█▓▓█▓▓█▓".."\n".."〽️ -παʍε ĝƦøuρ : "..msg.to.title.."\n".."🆔 -ĝƦøuρ"..msg.to.id.."\n".."▓█▓▓█▓▓█▓▓█▓▓█▓▓█▓".."\n".."📡 -ĈĦÂИЄЄĿ : @Smart_team".."\n".."🤖 - َ̲SًَUًَDًُOًَ  : @lua_3"
return reply_msg(msg.id, hasone,ok_cb,  false)
end
if not is_momod(msg) then 
local joker = "😊 yΘυ ÆҐE MEMþEҐ 😷 : "..msg.from.first_name.."\n".."🆔- ЏФu :"..msg.from.id.."\n".."⚜- usΞЯЛΛmΞ : @"..msg.from.username.."\n".."📞 ηυмвєя :("..(msg.from.phone or "Not Number")..")\n".."▓█▓▓█▓▓█▓▓█▓▓█▓▓█▓".."\n".."〽️ -παʍε ĝƦøuρ : "..msg.to.title.."\n".."🆔 -ĝƦøuρ"..msg.to.id.."\n".."▓█▓▓█▓▓█▓▓█▓▓█▓▓█▓".."\n".."📡 -ĈĦÂИЄЄĿ : @Smart_team".."\n".."🤖 - َ̲SًَUًَDًُOًَ  : @lua_3"
return reply_msg(msg.id, joker,ok_cb,  false)
end
end 
return { 
patterns = { 

"^([Ii][Nn][Ff][Oo])$",
"^[!#/]([Ii][Nn][Ff][Oo])$"
},
run = smart

}
end