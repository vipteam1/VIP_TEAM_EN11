do

local function joker(msg,matches)
 if matches[1] == "id" then
   return "ID: "..msg.from.id
 end
 if matches[1] == "name" then 
   return " 🖱Name: "..msg.from.print_name
 end
 if matches[1] == "id group" then 
   return "ID GROUP 🆔 : "..msg.to.id
 end
 if matches[1] == "number" then 
   return "NUMBER 📲: "..(msg.from.phone or "لايوجد" ) 
 end

 if matches[1] == "name group" then 
   return " 😇 Namer Group: "..msg.to.title
 end
end

return {
 patterns = {
     "^[!#/]([Ii][Dd])$",
     "^[!#/]([Nn][Aa][Mm][Ee])$",
     "^[!#/]([Ii][Dd] group)$",
     "^[!#/]([Nn][Uu][Mm][Bb][Ee][Rr])$",
     "^[!#/]([Nn][Aa][Mm][Ee] group)$",
     "^([Ii][Dd])$",
     "^([Nn][Aa][Mm][Ee])$",
     "^([Ii][Dd] group)$",
     "^([Nn][Uu][Mm][Bb][Ee][Rr])$",
     "^([Nn][Aa][Mm][Ee] group)$",
},
run = joker,
}
end