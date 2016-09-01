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

local function smart(msg, matches) 
  return [[ 
source created by @lua_3 🤖 
TEAM channel 💡 @smart_team 💡 
Source channel 🔱 @Help_telp 🔱
〰〰〰〰〰〰〰〰〰〰〰〰 
  .            🔱 SUPER SMART 🔱 
Created by team ;
@Jozef3 
@lua_3 
Link github : https://github.com/team-smart/smart_team
]] 

end 

return { 
  patterns = { 
       "^[!/#]([Vv][Ee][Rr][Ss][Ii][Oo][Nn])$", 
       "^([Vv][Ee][Rr][Ss][Ii][Oo][Nn])$"
  }, 
  run = smart, 
} 

end 