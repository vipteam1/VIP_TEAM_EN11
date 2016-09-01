--[[
____                  _       _             
|  _ \  _____   __    | | ___ | | _____ _ __ 
| | | |/ _ \ \ / / _  | |/ _ \| |/ / _ \ '__|
| |_| |  __/\ V / | |_| | (_) |   <  __/ |   
|____/ \___| \_/___\___/ \___/|_|\_\___|_|   
              |_____|                        
]]
do
local function joker(msg ,matches)
        if is_sudo(msg) then
local url = "http://d.top4top.net/p_2255qxe3.png"
local file = download_to_file(url,'DeaD.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif is_owner(msg) then
        local url = "http://e.top4top.net/p_225s1nb4.png"
local file = download_to_file(url,'DeaD.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif is_momod(msg) then
        local url = "http://a.top4top.net/p_2258ldm1.png"
local file = download_to_file(url,'DeaD.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif not is_momod(msg) then
        local url = "http://c.top4top.net/p_225zmyo2.png"
local file = download_to_file(url,'DeaD.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        end
end

return { 
    patterns = { 
        "^(نجب)$",
        "^(انجب)$",


    },
    run = joker,
    
}
--by #joker
end
