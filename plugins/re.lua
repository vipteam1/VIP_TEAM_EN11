--[[
🔱➖➖➖➖➖➖➖➖➖➖➖➖➖➖🔱
#:[[
#For info file
#Developer :  
#JOker < @lua_3 > 
#JoZef < @jozef3 >
#our channel: @Smart_Team
#File type : (عمل رن للسيرفر)
🔱➖➖➖➖➖➖➖➖➖➖➖➖➖➖🔱
—]]
do 
function pre_process(msg) 
  if msg.fwd_from then 
     return os.execute("./launch.sh") 
:read('*all') 
  end 
      return msg 
end 

function run(msg, matches) 
 local welcome = 'mate:'..msg.to.id 
  if not redis:get(welcome) then 
  return os.execute("./launch.sh") 
:read('*all') 
  end 

end 
return { 
 patterns = {
     "^حبي$",
     "^اكلك$",
     "^السلام عليكم$",
     "^res$",
     "^محضور$",
     "^(https)$",
    "^(https:)$",
     "^(اريد يوت)$",
     "^(كروب)$",
     "^(جديد)$",
     "^(المطور)$",
     "^(انحراف)$",
     "^(حبي)$",
     "^(جوكر)$",
     "^(سكسي)$",
     "^!!tgservice (.*)$",
 
  }, 
  run = run, 
  pre_process = pre_process 
} 
end