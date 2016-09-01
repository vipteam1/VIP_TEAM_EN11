--[[
🔱➖➖➖➖➖➖➖➖➖➖➖➖➖➖🔱
#:[[
#For info file
#Developer :  
#JOker < @lua_3 > 
#JoZef < @jozef3 >
#our channel: @Smart_Team
#File type : (قفل وفتح الميديه)
🔱➖➖➖➖➖➖➖➖➖➖➖➖➖➖🔱
—]]

local function DevPoint(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['media'] then
                lock_media = data[tostring(msg.to.id)]['settings']['media']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_media == "yes" then
       delete_msg(msg.id, ok_cb, true)
       send_large_msg(get_receiver(msg), 'عزيزي " '..msg.from.first_name..' "\nممنوع مشاركة " الصور - الروابط - الاعلانات - المواقع " هنا التزم بقوانين المجموعة 👮\n#Username : @'..msg.from.username)
    end
end
 
return {
  patterns = {
"%[(photo)%]",
"%[(document)%]",
"%[(video)%]",
"%[(audio)%]",
"%[(gif)%]",
"%[(sticker)%]",
  },
  run = DevPoint
}
