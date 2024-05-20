local OrionLib = loadstring(gameHttpGet(('httpsraw.githubusercontent.comleenZzZzZopen_source_leenmainopen%20sourcezada')))()
local Player = game.Players.LocalPlayer
local Window = OrionLibMakeWindow({Name = 鸭脖验证系统, HidePremium = false, SaveConfig = true, IntroEnable = false})

OrionLibMakeNotification({
	Name = 欢迎使用,
	Content = 你好..Player.Name.. ,
	Image = rbxassetid14229447778,
	Time = 5
})

_G.Key = BZARNGQYDFYP
_G.KeyPERM = KLdwkqodKQODMASODQl	
_G.KeyInput = string

local debounce = false;

function MakeScriptHub()
	if debounce then return; end;
	debounce = true;

	OrionLibMakeNotification({
		Name = 密钥不对！,
		Content = 你写错了哥们,
		Image = rbxassetid6353957304,
		Time = 5
	})

	local Window = OrionLibMakeWindow({Name = 鸭脖脚本1.0, SearchBar = { Default = '查找游戏', ClearTextOnFocus = true }, HidePremium = false, SaveConfig = true, ConfigFolder = OrionTest})

                local Tab = WindowMakeTab({
    Name = 常用,
    Icon = rbxassetid7734068321,
    PremiumOnly = false
})

TabAddTextbox({
	Name = 移动速度(部分游戏不可用),
	Default = ,
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	 
})
 
TabAddTextbox({
	Name = 跳跃高度(部分游戏不可用),
	Default = ,
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	 
})

TabAddTextbox({
	Name = 重力设置(部分游戏不可用),
	Default = ,
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})
TabAddButton({
	Name = 爬墙,
	Callback = function()
loadstring(gameHttpGet(httpspastebin.comrawzXk4Rq2r))()
end
})

TabAddButton({
	Name = 防止掉线（反挂机）,
	Callback = function()
	print(Anti Afk On)
		local vu = gameGetService(VirtualUser)
		gameGetService(Players).LocalPlayer.Idledconnect(function()
		   vuButton2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vuButton2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
  	end
})

TabAddButton({
	Name = 甩飞别人,
	Callback = function()
     loadstring(gameHttpGet(httpspastebin.comrawGnvPVBEi))()
  	                 end    
                })

	local Tab = WindowMakeTab({
		Name = 俄亥俄州 秒变大蛇脚本,
		Icon = rbxassetid11348590078,
		PremiumOnly = false
	})

	TabAddButton({
		Name = 子追追踪,
		Callback = function()
			setclipboard(key individual ;()
			toclipboard(key individual ;()
			repeat wait() until gameIsLoaded()
			loadstring(gameHttpGet(httpsraw.githubusercontent.comabcd789142godmain(ft.%20Helper%20Prod.%20MyWorld).lua))()
		end    
	})

	TabAddButton({
		Name = 自瞄Q,
		Callback = function()
			setclipboard(key individual ;()
			toclipboard(key individual ;()
			repeat wait() until gameIsLoaded()
			loadstring(gameHttpGet(httpsraw.githubusercontent.comabcd789142godmainaimbotq.lua))()
		end    
	})

	TabAddButton({
		Name = 自瞄V,
		Callback = function()
			setclipboard(key individual ;()
			toclipboard(key individual ;()
			repeat wait() until gameIsLoaded()
			loadstring(gameHttpGet(httpsraw.githubusercontent.comabcd789142godmainaimbotv.lua))()
		end    
	})
end
function IncorrectKeyNotification()
	OrionLibMakeNotification({
		Name = 密钥不对！,
		Content = 是不是写错了啊哥们,
		Image = rbxassetid6353958325,
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

local Tab = WindowMakeTab({
	Name = 密钥,
	Icon = rbxassetid221748793,
	PremiumOnly = false
})

TabAddTextbox({
	Name = 输入密钥,
	Default = ,
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value

		verify()
	end      
})

