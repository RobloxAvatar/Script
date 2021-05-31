local cmds = {game:HttpGet('https://raw.githubusercontent.com/RobloxAvatar/Script/main/Cmds.lua', true)}

local prefix = '!'

game:GetService('Players').LocalPlayer.Chatted:Connect(function(msg)
    if msg == prefix..cmds[1] then
        
    end
end)
