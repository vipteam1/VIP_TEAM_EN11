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

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

     return "ياعزيزي :@"..msg.from.username.."\n للتحدث مع المطور اضغط على المعرف التالي @lua_3🤖 \n للمحضورين @devss_bot 🚸 \n من فضلك ان تابع القناة @Smart_team 📡"
     
  end 
   
end 

-- #DEV @devss_bot

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = run, 
} 

end 