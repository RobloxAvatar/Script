--> Setting Up The UI Libary <--

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Main", "Sentinel")
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")

--> Scripts <--

local CoreGui = game:GetService("StarterGui")

getgenv().audioId = nil

MainSection:NewTextBox("Audio Id In Here", "Plays the song you put in here.", function(Id)
    if game:GetService("Workspace"):FindFirstChild("Sound12") then
        game:GetService("Workspace").Sound12:Destroy()
    end
    getgenv().audioId = Id
    local sound = Instance.new("Sound", game:GetService("Workspace"))
    sound.Name = "Sound12"
    sound.SoundId = "rbxassetid://"..getgenv().audioId
    sound.Playing = true
    SoundId = getgenv().audioId
    local Asset = game:GetService("MarketplaceService"):GetProductInfo(SoundId)
    CoreGui:SetCore("SendNotification", {
	    Title = "Music";
	    Text = "Current Music Playing\n("..Asset.Name..")";
	    Duration = 3.5;
	})
end)

MainSection:NewSlider("Sound Volume", "Changes the music volume.", 1, 0, function(s)
    game:GetService("Workspace").Sound12.Volume = s
end)

MainSection:NewToggle("Mute/Unmute", "Mutes or unmutes the music", function(state)
    if state then
        game:GetService("Workspace").Sound12.Playing = false
    else
        game:GetService("Workspace").Sound12.Playing = true
    end
end)

MainSection:NewToggle("Loop/Unloop", "loops or unloops the music", function(state)
    if state then
        game:GetService("Workspace").Sound12.Looped = true
    else
        game:GetService("Workspace").Sound12.Looped = false
    end
end)
