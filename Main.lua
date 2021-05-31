local cmds = {}

table.insert(game:HttpGet('https://raw.githubusercontent.com/RobloxAvatar/Script/main/Cmds.lua', true), cmds)

print(cmds[1])

local prefix = '!'

game:GetService('Players').LocalPlayer.Chatted:Connect(function(msg)
    if msg == prefix..'char'..cmds[1] then
        game:GetService('Players').LocalPlayer.Character.Shirt.ShirtTemplate = 5778250346
    end
end)
