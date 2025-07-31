如果QQGroup==“QQ群 979878728”，Scripts===“星际幻影”，type==“Server”，那么
功能
而
做
功能
“蓝色球体”
结束
结束
结束
结束9“橙球 x50”9crystalshow虚假的
功能0hoop功能
}

而10getorbpetshop做0"StarterGui")
功能"Players")
“橙球”

结束
结束""

结束
结束
功能

真正的
结束

结束
结束"Players").LocalPlayer
当地的"RunService").Heartbeat

功能
功能
而""

做1
功能"ReplicatedStorage").rEvents.petEvolveEvent:FireServer("evolvePet"结束
结束

结束0heartbeatnowe ==5
结束
当地的
v.Parent = game.Players.LocalPlayer.ownedGamepasses"https://github.com/AURORA666Script/ui/raw/refs/heads/main/Silent-ui.luau"))()"Players").LocalPlayer
功能""而'16060333448')"RunService").Heartbeat

做'16060333448')
结束'16060333448'Main:Dropdown（“比赛终点传送”，“Select Region”，地图，函数（值）
种族=价值'16060333448'Main:Button（“点击传送”，函数（）
		heartbeat:Wait()
		task.wait(.1)
		heartbeat:Wait()

game.Players.LocalPlayer.Character.HumanoidRootPart = game.workspace.raceMaps[selectedMap].finishPart.CFrame3101667897Main:Toggle（“自动参赛”，“joinRace”，false，function(joinRace)1结束
产卵（虚假的）
当地的
当地的
虚假的
						char:TranslateBy(hum.MoveDirection)
当地的
真正的
功能)
当地的
真正的
当地的

演讲人. You you:Connect you（Char）
真正的
当地的
		task.wait(0.7)
真正的
当地的
真正的
功能)

当地的
当地的
真正的
当地的
真正的
结束
结束

结束
当地的

功能
功能
而

做
功能
结束
结束
结束
结束
当地的

"复制他/她的信息"

功能
而
做

功能
真正的
结束

结束
结束

当地的
功能
功能

而
做
        brightLoop:Disconnect() 
功能
结束
结束
结束
结束
当地的
"复制他/她的信息"
功能


而
做

"步数: "

"比赛次数: "
"环: "
"宝石: "
"等级: "
"经验: "
结束
结束
        
其他的
            RunService:UnbindFromRenderStep("TPWalk")

"请不要打开"
结束
如果humanoid.MoveDirection.General>0，则
字符：TranslateBy（humanoid.MoveDirection*speed*delta*10）
结束
结束
            end)
结束
其他的
打印（“输入无效。请输入一个数字。”）
结束
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
结束
当地的
end)

功能
功能
end)

而
做
end)

功能
结束
结束
结束
结束
                game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace")
当地的
                task.wait(0.1)
"复制他/她的信息"
                task.wait(0.1)
功能
                task.wait(0.3)
而
做
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

Crystal:Dropdown("选择水晶", "环: ", crystalshow, "环: "(Value)
    OpenCrystal = Value
"宝石: ")

Crystal:Button("宝石: ", "选择玩家"()
game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", OpenCrystal)
"重置")

Crystal:Toggle("复制他/她的信息", "名字: ", "选择玩家", "名字: "(autobuy)
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
spawn(本地星际={()
    getorb = wait() 虚假的
        pcall(面积=“城市”，()
            gems.Text = mainexe = .. game:GetService("Players").LocalPlayer.Gems.Value
        虚假的)
    hoop =
虚假的)

opencrystal = Players = Copy:Dropdown(虚假的, 'Dropdown', dropdown, petshop=错(v)
    playernamedied = v
evolvepet =)

Copy:Button(虚假的, 出生=()
    Refresh()
    Players:SetOptions(dropdown)
E)


Copy:Button(，, 自胎=错，()
    结束 player = game:GetService("Players"):FindFirstChild(playernamedied)
    当地的 player 当地的
        虚假的 info = 当地的 .. player.Name .. "\n" ..
                     虚假的 .. player.leaderstats.Steps.Value .. "\n" ..
                     当地的 .. player.leaderstats.Races.Value .. "\n" ..
                     当地的 .. player.leaderstats.Hoops.Value .. "\n" ..
                     当地的 .. player.Gems.Value .. "\n" ..
                     功能 .. player.level.Value .. "\n" ..
                     如果 .. player.exp.Value
        setclipboard(info)
    真正的
然后)
虚假的
end
