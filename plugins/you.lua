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
local url = "http://e.top4top.net/p_219i7881.png"--#chaneel @help_telp @smart_team
local smart = download_to_file(url,'DeaD.webp')
send_document(get_receiver(msg) , smart, ok_cb, false)
        
        elseif is_owner(msg) then
        local url = "http://f.top4top.net/p_21901oy2.png"--#chaneel @help_telp @smart_team
local smart = download_to_file(url,'DeaD.webp')
send_document(get_receiver(msg) , smart, ok_cb, false)
        
        elseif is_momod(msg) then
        local url = "http://a.top4top.net/p_219l5ox3.png"--#chaneel @help_telp @smart_team
local smart = download_to_file(url,'DeaD.webp')
send_document(get_receiver(msg) , smart, ok_cb, false)
        
        elseif not is_momod(msg) then
        local url = "http://b.top4top.net/p_219jq4s4.png"--#chaneel @help_telp @smart_team
local smart = download_to_file(url,'DeaD.webp')
send_document(get_receiver(msg) , smart, ok_cb, false)
        
        end
end

return { 
    patterns = { 
        "^[/!]([Yy][Oo][Uu])$",
        "^([Yy][Oo][Uu])$"

    },
    run = joker,
    
}
--by #joker
end
