local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Cataihub | Key system", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "you are Logged in this "..Player.Name.."",
	Image = "rbxassetid://4483345998",
	Time = 3
})

_G.Key = "A0285KBANQLAUA"
_G.KeyInput = "string"

function MakeScriptHub()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cataihub/Cataihub-script-gui/main/Cataihub%20script.lua')))()

end

function correctKeyNotification()
OrionLib:MakeNotification({
	Name = "Successfully Key!",
	Content = "You are Successfully Enter key!",
	Image = "rbxassetid://4483345998",
	Time = 1
})

function IncorrectKeyNotification()
OrionLib:MakeNotification({
	Name = "Invailed Key!",
	Content = "You are Invailed Enter key!",
	Image = "rbxassetid://4483345998",
	Time = 1
})

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "https://link-target.net/1169685/cataihub-key-system-1",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check key!",
	Callback = function()
      	if _G.KeyInput == _G.Key Then
	MakeScriptHub()
        correctKeyNotification()
	else
            IncorrectKeyNotification()
  	end
   end    
})

OrionLib:Init()
