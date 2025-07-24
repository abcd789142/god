if QQGroup == "QQ群979878728" and Scripts == "Interstellar phantom" and type == "Server" then
local Interstellar = {
    getorb = false,
    area = "City",
    mainexe = false,
    hoop = false,
    opencrystal = false,
    petshop = false,
    evolvepet = false,
    birth = 9e9,
    autobirth = false,
}

local CoreGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local crystalshow = {}
local OpenCrystal = ""

for i, crystal in pairs(game:GetService("Workspace").mapCrystalsFolder:GetChildren()) do
    crystalshow[i] = crystal.Name
end

local Maps = {}
local Races = ""

for i, Map in pairs(game:GetService("Workspace").raceMaps:GetChildren()) do
    Maps[i] = Map.Name
end

local petshow = {}
local BuyPetShop = ""
local EvolvePet = ""

for i, pet in pairs(game:GetService("ReplicatedStorage").cPetShopFolder:GetChildren()) do
    petshow[i] = pet.Name
end

local speeds = 5
local nowe = false
local tpwalking = false
local speaker = game:GetService("Players").LocalPlayer
local heartbeat = game:GetService("RunService").Heartbeat

local function updatespeed(char, hum)
	if nowe == true then
		tpwalking = false
		heartbeat:Wait()
		task.wait(.1)
		heartbeat:Wait()

		for i = 1, speeds do
			spawn(function()
				tpwalking = true
				while tpwalking and heartbeat:Wait() and char and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						char:TranslateBy(hum.MoveDirection)
					end
				end
			end)
		end
	end
end

speaker.CharacterAdded:Connect(function(char)
	local char = speaker.Character
	if char then
		task.wait(0.7)
		char.Humanoid.PlatformStand = false
		char.Animate.Disabled = false
	end
end)

local tpwalkingspeed = false
local RunService = game:GetService("RunService")
local hb = RunService.Heartbeat
local speed = 1
local brightLoop = nil
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local dropdown = {}
local playernamedied = ""

for i, player in pairs(game.Players:GetPlayers()) do
    dropdown[i] = player.Name
end

local function Refresh()
    dropdown = {}
    for i, player in ipairs(Players:GetPlayers()) do
        dropdown[i] = player.Name
    end
end
local library = loadstring(game:HttpGet("https://github.com/AURORA666Script/ui/raw/refs/heads/main/Silent-ui.luau"))()

local window = library:new("星际幻影 | 极速传奇 | "..identifyexecutor())

local Page = window:Tab("主要功能",'16060333448')
local Main = Page:section("主要",true)
local Orb = Page:section("球",true)

local Page2 = window:Tab("其他",'16060333448')
local Crystal = Page2:section("水晶",true)
local Evolve = Page2:section("进化",true)

local Page3 = window:Tab("刷重生",'16060333448')
local Birth = Page3:section("重生",true)

local LST = window:Tab("查看和复制玩家",'16060333448')
local Look = LST:section("查看",true)
local Copy = LST:section("复制",true)

Main:Button("点击即可时间循环中午",function()
    if brightLoop then
        brightLoop:Disconnect() 
    end
    local function brightFunc()
        Lighting.Brightness = 2
        Lighting.ClockTime = 14
        Lighting.FogEnd = 100000
        Lighting.GlobalShadows = false
        Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    end


    brightLoop = RunService.RenderStepped:Connect(brightFunc)
end)

Main:Label("输入的数字越大效果越明显")

Main:Textbox("漂移加速", "", "输入数字", function(Value)
    if tonumber(Value) then
        speed = tonumber(Value)
        tpwalkingspeed = true
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
        
        if humanoid then
            RunService:UnbindFromRenderStep("TPWalk")

            RunService:BindToRenderStep("TPWalk", Enum.RenderPriority.Character.Value, function(delta)
                if tpwalkingspeed and character and humanoid and humanoid.Parent then
                    if humanoid.MoveDirection.Magnitude > 0 then
                        character:TranslateBy(humanoid.MoveDirection * speed * delta * 10)
                    end
                end
            end)
        end
    else
        print("Invalid input. Please enter a number.")
    end
end)

Main:Button("点击即可漂移加速关闭",function()
    tpwalkingspeed = false
    RunService:UnbindFromRenderStep("TPWalk")
end)

Main:Toggle("自动重生", "birth", false, function(birth)
    Interstellar.mainexe = birth
    if Interstellar.mainexe then
        while Interstellar.mainexe do
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
            wait()
        end
    end
end)

Main:Button("获得所有宝箱", function()
    for _, v in pairs(game.ReplicatedStorage.chestRewards:GetChildren()) do
        game.ReplicatedStorage.rEvents.checkChestRemote:InvokeServer(v.Name)
    end
end)

Main:Button("获得所有通行证", function()
    for i, v in ipairs(game:GetService("ReplicatedStorage").gamepassIds:GetChildren()) do
        v.Parent = game.Players.LocalPlayer.ownedGamepasses
    end 
end)

Main:Dropdown("比赛终点传送", "Select Region", Maps, function(Value)
    Races = Value
end)

Main:Button("点击传送",function()
game.Players.LocalPlayer.Character.HumanoidRootPart = game.workspace.raceMaps[selectedMap].finishPart.CFrame
end)

Main:Toggle("自动参赛", "joinRace", false, function(joinrace)
    Interstellar.mainexe = joinrace
    if Interstellar.mainexe then
        if game.PlaceId == 3101667897 then
            while Interstellar.mainexe do
                game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.raceMaps.Grassland.finishPart.CFrame
                task.wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.raceMaps.Magma.finishPart.CFrame
                task.wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.raceMaps.Desert.finishPart.CFrame
                task.wait(0.3)
            end
        elseif game.PlaceId == 3276265788 then
            while Interstellar.mainexe do
                game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.raceMaps.Speedway.finishPart.CFrame
                task.wait(0.2)
            end
        elseif game.PlaceId == 3232996272 then
            while Interstellar.mainexe do
                game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.raceMaps.Starway.finishPart.CFrame
                task.wait(0.2)
            end
        end
    end
end)


Main:Toggle("吸全部环", "hoops", false, function(hoops)
    Interstellar.hoop = hoops
    if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
        while Interstellar.hoop do
            for i, hoops in ipairs(workspace.Hoops:GetChildren()) do
                if hoops.Name == "Hoop" then
                hoops.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait()
                end
            end
        end
    end
end)

Main:Textbox("修改经验值", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.exp.Value = arg
end)

Main:Textbox("修改等级", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.level.Value = arg
end)

Main:Textbox("修改比赛数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Races.Value = arg
end)

Main:Textbox("修改圈数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Hoops.Value = arg
end)

Main:Textbox("修改重生", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value = arg
end)

Main:Textbox("修改步数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Steps.Value = arg
end)

Main:Textbox("修改尾迹容量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.maxPetCapacity.Value = arg
end)

Main:Textbox("修改宠物位数量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.maxPetCapacity.Value = arg
end)

Main:Textbox("修改宝石数量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.Gems.Value = arg
end)

Orb:Dropdown("选择地区", "Select Region", {"City","Snow City","Magma City","Desert","Space", "Legends Highway"}, function(Value)
    Interstellar.area = Value
end)

Orb:Label("请先选择地区 | 否则获得球的地点将默认为City(部分城市可能没有球所以不是无效)")

Orb:Toggle("红球 x50", "collectOrb", false, function(orb)
    Interstellar.getorb = orb
    spawn(function()
        while Interstellar.getorb do wait()
            pcall(function()
                game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", Interstellar.area)
            end)
        end
    end)
end)

Orb:Toggle("蓝球 x50", "collectOrb", false, function(orb)
    Interstellar.getorb = orb
    spawn(function()
        while Interstellar.getorb do wait()
            pcall(function()
                game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", Interstellar.area)
            end)
        end
    end)
end)

Orb:Toggle("橙球 x50", "collectOrb", false, function(orb)
    Interstellar.getorb = orb
    spawn(function()
        while Interstellar.getorb do wait()
            pcall(function()
                game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", Interstellar.area)
            end)
        end
    end)
end)

Orb:Toggle("黄球 x50", "collectOrb", false, function(orb)
    Interstellar.getorb = orb
    spawn(function()
        while Interstellar.getorb do wait()
            pcall(function()
                game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", Interstellar.area)
            end)
        end
    end)
end)

Orb:Toggle("宝石球 x50", "collectOrb", false, function(orb)
    Interstellar.getorb = orb
    spawn(function()
        while Interstellar.getorb do
            pcall(function()
                game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", Interstellar.area)
            end)
        end
    end)
end)

Crystal:Dropdown("选择水晶", "Choose Crystal", crystalshow, function(Value)
    OpenCrystal = Value
end)

Crystal:Button("购买水晶", function()
game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", OpenCrystal)
end)

Crystal:Toggle("自动购买", "Auto Buy Crystal", false, function(autobuy)
    Interstellar.opencrystal = autobuy
    if Interstellar.opencrystal then
        while Interstellar.opencrystal do
            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", OpenCrystal)
            wait()
        end
    end
end)

PetShop:Dropdown("选择购买的宠物", "Choose Pet", petshow, function(Value)
    BuyPetShop = Value
end)

PetShop:Button("购买", function()
    game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild(BuyPetShop))
end)

PetShop:Toggle("自动购买", "Auto buy", false, function(state)
    if Interstellar.petshop then
        while Interstellar.petshop do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild(BuyPetShop))
            wait()
        end
    end
end)

Evolve:Dropdown("选择进化的宠物", "Choose Pet", petshow, function(Value)
    EvolvePet = Value
end)

Evolve:Button("进化", function()
    game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer("evolvePet", EvolvePet)
end)

Evolve:Toggle("自动进化", "Auto Evolve", false, function(state)
    if Interstellar.evolvepet then
        while Interstellar.evolvepet do
            game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer("evolvePet", EvolvePet)
            wait()
        end
    end
end)

Birth:Textbox("自定义重生次数","Birth number","By LS", false, function(value)
    Interstellar.birth = value
end)

Birth:Toggle("重生到指定的重生次数","LS", false, function(state)
    if game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value >= Interstellar.birth then
    game.Players.LocalPlayer:Kick("已自动重生到"..Interstellar.birth"，已自动为你踢出")
else
    Interstellar.autobirth = state
    if Interstellar.autobirth then
        while Interstellar.autobirth do
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
            wait()
        end
     end
end
end)

local steps = Look:Label("步数: "..game:GetService("Players").LocalPlayer.leaderstats.Steps.Value)
spawn(function()
    while wait() do
        pcall(function()
            steps.Text = "步数: " .. game:GetService("Players").LocalPlayer.leaderstats.Steps.Value
        end)
    end
end)

local exp = Look:Label("经验: " .. game:GetService("Players").LocalPlayer.exp.Value)
spawn(function()
    while wait() do
        pcall(function()
            exp.Text = "经验: " .. game:GetService("Players").LocalPlayer.exp.Value
        end)
    end
end)

local level = Look:Label("等级: " .. game:GetService("Players").LocalPlayer.level.Value)
spawn(function()
    while wait() do
        pcall(function()
            level.Text = "等级: " .. game:GetService("Players").LocalPlayer.level.Value
        end)
    end
end)

local races = Look:Label("比赛次数: " .. game:GetService("Players").LocalPlayer.leaderstats.Races.Value)
spawn(function()
    while wait() do
        pcall(function()
            races.Text = "比赛次数: " .. game:GetService("Players").LocalPlayer.leaderstats.Races.Value
        end)
    end
end)

local rebirth = Look:Label("重生: " .. game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value)
spawn(function()
    while wait() do
        pcall(function()
            rebirth.Text = "重生: " .. game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value
        end)
    end
end)

local hoops = Look:Label("环: " .. game:GetService("Players").LocalPlayer.leaderstats.Hoops.Value)
spawn(function()
    while wait() do
        pcall(function()
            hoops.Text = "环: " .. game:GetService("Players").LocalPlayer.leaderstats.Hoops.Value
        end)
    end
end)

local gems = Look:Label("宝石: " .. game:GetService("Players").LocalPlayer.Gems.Value)
spawn(function()
    while wait() do
        pcall(function()
            gems.Text = "宝石: " .. game:GetService("Players").LocalPlayer.Gems.Value
        end)
    end
end)

local Players = Copy:Dropdown("选择玩家", 'Dropdown', dropdown, function(v)
    playernamedied = v
end)

Copy:Button("重置", function()
    Refresh()
    Players:SetOptions(dropdown)
end)


Copy:Button("复制他/她的信息", function()
    local player = game:GetService("Players"):FindFirstChild(playernamedied)
    if player then
        local info = "名字: " .. player.Name .. "\n" ..
                     "步数: " .. player.leaderstats.Steps.Value .. "\n" ..
                     "比赛次数: " .. player.leaderstats.Races.Value .. "\n" ..
                     "环: " .. player.leaderstats.Hoops.Value .. "\n" ..
                     "宝石: " .. player.Gems.Value .. "\n" ..
                     "等级: " .. player.level.Value .. "\n" ..
                     "经验: " .. player.exp.Value
        setclipboard(info)
    end
end)
else
game.Players.LocalPlayer:Kick("请不要打开")
end