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
function is_add(msg)
c = load_data("p.db") 
 local var = false 
 local add = c 
 for k,v in pairs(add) do 
 if msg.from.id == tonumber(v) then 
 var = true 
 end 
end 
 return var 
end 
local function run(msg, matches) 
if not c then 
c = load_data("p.db") 
end 
if not is_add(msg) and msg then 
c = load_data("p.db") 
table.insert(c,msg.from.id) 
save_data("p.db",c) 
return "." 
end 
if is_add(msg) and msg then 
return 
end 
if matches[1] == "addtopro" then 
c = load_data("p.db") 
for k,v in pairs(c) do 
  if not msg.to.id == v then 
table.insert(c,msg.from.id) 
save_data("p.db",c) 
return "I added" 
end 
end 
end 
if matches[1] == "kickall" then 
for k,v in pairs(c) do 
  channel_kick_user("channel#id"..msg.to.id, "user#id"..v, ok_cb, true) 
return "kick all in this group\n\n code by #?" 
end 
end 
if matches[1] == "del" then 
 c = load_data("p.db") 
for k,v in pairs(c) do 
if tonumber(v) == tonumber(matches[2]) then 
table.remove(c,k) 
save_data("p.db",c) 
end 
end 
end 

end 

return { 
  patterns = { 
  --     "^(.*)$", 
       "^[!/#](addtopro)$", 
       "^[!/#](kickall)$", 
       "^[!/#](del) (%d+)$",
       "^(addtopro)$", 
       "^(kickall)$", 
       "^(del) (%d+)$" 
  }, 
  run = run, 
} 

end