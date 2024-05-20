local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/leenZzZzZ/open_source_leen/main/open%20sourcezada')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "鸭脖验证系统", HidePremium = false, SaveConfig = true, IntroEnable = false})

OrionLib:MakeNotification({
	Name = "欢迎使用",
	Content = "你好"..Player.Name.." ",
	Image = "rbxassetid://14229447778",
	Time = 5
})

_G.Key = "BZARNGQYDFYP"
_G.KeyPERM = "KLdwkqodKQODMASODQl"	
_G.KeyInput = "string"

local debounce = false;

function MakeScriptHub()
	if debounce then return; end;
	debounce = true;

	OrionLib:MakeNotification({
		Name = "密钥不对！",
		Content = "你写错了哥们",
		Image = "rbxassetid://6353957304",
		Time = 5
	})

	local Window = OrionLib:MakeWindow({Name = "鸭脖脚本1.0", SearchBar = { Default = '查找游戏', ClearTextOnFocus = true }, HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

                local Tab = Window:MakeTab({
    Name = "常用",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddTextbox({
	Name = "移动速度(部分游戏不可用)",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	 
})
 
Tab:AddTextbox({
	Name = "跳跃高度(部分游戏不可用)",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	 
})

Tab:AddTextbox({
	Name = "重力设置(部分游戏不可用)",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})
Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddButton({
	Name = "防止掉线（反挂机）",
	Callback = function()
	print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
  	end
})

Tab:AddButton({
	Name = "甩飞别人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	                 end    
                })

	local Tab = Window:MakeTab({
		Name = "俄亥俄州 秒变大蛇脚本",
		Icon = "rbxassetid://11348590078",
		PremiumOnly = false
	})

	Tab:AddButton({
		Name = "子追追踪",
		Callback = function()
			setclipboard("key individual ;(")
			toclipboard("key individual ;(")
			repeat wait() until game:IsLoaded()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/abcd789142/god/main/(ft.%20Helper%20Prod.%20MyWorld).lua"))()
		end    
	})

	Tab:AddButton({
		Name = "自瞄Q",
		Callback = function()
			setclipboard("key individual ;(")
			toclipboard("key individual ;(")
			repeat wait() until game:IsLoaded()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/abcd789142/god/main/aimbotq.lua"))()
		end    
	})

	Tab:AddButton({
		Name = "自瞄V",
		Callback = function()
			setclipboard("key individual ;(")
			toclipboard("key individual ;(")
			repeat wait() until game:IsLoaded()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/abcd789142/god/main/aimbotv.lua"))()
		end    
	})
end
function IncorrectKeyNotification()
	OrionLib:MakeNotification({
		Name = "密钥不对！",
		Content = "是不是写错了啊哥们",
		Image = "rbxassetid://6353958325",
		Time = 5
	})
end

function verify()
	if _G.KeyInput == _G.Key then
		MakeScriptHub()
	elseif _G.KeyInput == _G.KeyPERM then
		MakeScriptHub()
	else
		IncorrectKeyNotification()
	end
end

local Tab = Window:MakeTab({
	Name = "密钥",
	Icon = "rbxassetid://221748793",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "输入密钥",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value

		verify()
	end      
})

