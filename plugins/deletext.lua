do
local function run(msg, matches)
  delete_msg(msg.id, ok_cb, true)

end

local function run(msg, matches)
  if ( tonumber(string.len(matches[1])) > 10000 ) then
delete_msg(msg.id, ok_cb, true)
if (is_momod(msg)) then
      return nil
    else
     delete_msg(msg.id, ok_cb, true)
    send_large_msg("channel#id"..msg.to.id, ' لا ترسل ا من  10000 حرف @'..msg.from.username.. ' ') 
      return nil --"لاترسل اكثر من 400 كلمة"
    end
  end 
end

return {
  patterns = {
    "^(.*)", 
  },
  run = run,
}

end