--[[
🔱➖➖➖➖➖➖➖➖➖➖➖➖➖➖🔱
#:[[
#For info file
#Developer :  
#JOker < @lua_3 > 
#JoZef < @jozef3 >
#our channel: @Smart_Team
#File type : ( )
🔱➖➖➖➖➖➖➖➖➖➖➖➖➖➖🔱
—]]
do
local function run(msg,matches)
if matches[1] == "setage" then
local age = "mate"..msg.from.id
redis:set(age, matches[2])
local getmsg = "😃 Hi "..msg.from.first_name.."\n".."Your Age Has been Saved ✔️"
return  reply_msg(msg.id, getmsg, ok_cb, true)
end
if matches[1] == "delage" then
local age = 'mate'..msg.from.id
redis:del(age)
local getmsg2 = "😃 Hi "..msg.from.first_name..'\n'..' Your Age Has Been Deleted ✔️'
return  reply_msg(msg.id, getmsg2, ok_cb, true)
end

if matches[1] == "setsex" then
local sex = 'mate'..msg.from.id
redis:set(sex, matches[2])
local getmsg3 = "😃 Hi "..msg.from.first_name.."\n".."Your Sex Has Been Saved ✔️"
return  reply_msg(msg.id, getmsg3, ok_cb, true)
end

if matches[1] == "delsex" then
local sex = 'mate'..msg.from.id
redis:del(sex)
local getmsg4 = "😃 Hi "..msg.from.first_name.."\n".."Your sex Has Been Deleted ✔️"
return  reply_msg(msg.id, getmsg4, ok_cb, true)
end

if matches[1] == "setinfo" then
local about = 'mate'..msg.from.id
redis:set(about, matches[2])
local getmsg5 = "😃 Hi "..msg.from.first_name.."\n".."About your Self Has Been Saved ✔️"
return  reply_msg(msg.id, getmsg5, ok_cb, true)
end

if matches[1] == "delinfo" then 
local about = 'mate'..msg.from.id
redis:del(about)
local getmsg6 = "😃 Hi "..msg.from.first_name.."\n".."About Your Self Has Been Removed ✔️"
return  reply_msg(msg.id, getmsg6, ok_cb, true)
end

if matches[1] == "setmyname" then
local name = 'mate'..msg.from.id
redis:set(name, matches[2])
local getmsg7 = "😀 Hi "..msg.from.first_name.."\n".."Your Name Has Been Saved ✔️"
return  reply_msg(msg.id, getmsg7, ok_cb, true)
end

if matches[1] == "delmyname" then
local name = "mate"..msg.from.id
redis:del(name)
local getmsg7 = "😀 Hi "..msg.from.first_name.."\n".."Your Name Has Been Removed ✔️"
return  reply_msg(msg.id, getmsg5, ok_cb, true)
end

if matches[1] == "myinfo" then
local age = "mate"..msg.from.id
local sex = "mate"..msg.from.id
local about = "mate"..msg.from.id
local name = "mate"..msg.from.id
local msg = "📄 Your Name : "..(redis:get(name) or "Dont Found ").."\n"
.."📖 Your Age : "..(redis:get(age) or "Dont Found").."\n"
.."🤖 Your Sex : "..(redis:get(sex) or "Dont Found ").."\n"
.."⏱ About You : "..(redis:get(about) or "dont found").."\n"
return  reply_msg(msg.id, msg, ok_cb, true)
end
end

return { 
  patterns = { 
     "^[!/#](setage) (.+)",
     "^[!/#](delage)",
     "^[!/#](setsex) (.+)",
     "^[!/#](delsex)",
     "^[!/#](setinfo) (.+)",
     "^[!/#](delinfo)",
     "^[!/#](setmyname) (.+)",
     "^[!/#](delmyname)",
     "^[!/#](myinfo)",
     "^(setage) (.+)",
     "^(delage)",
     "^(setsex) (.+)",
     "^(delsex)",
     "^(setinfo) (.+)",
     "^(delinfo)",
     "^(setmyname) (.+)",
     "^(delmyname)",
     "^(myinfo)"
     
  }, 
  run = run, 
} 

end
