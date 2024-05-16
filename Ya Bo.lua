local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "鸭脖制作，必属精品",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "验证系统",
      Subtitle = "鸭脖独家验证",
      Note = "不出售，私人使用",
      FileName = "密钥w", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"鸭脖脚本大蛇"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
Rayfield:Notify({
   Title = "公告",
   Content = "欢迎使用鸭脖脚本，更新日期5/17",
   Duration = 10,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
local Tab = Window:CreateTab("后续会陆陆续续添加脚本，不要催我更新", 4483362458) -- Title, Image
local Tab = Window:CreateTab("俄亥俄州", 4483362458) -- Title, Image
local Section = Tab:CreateSection("功能")
local Button = Tab:CreateButton({
   Name = "子弹追踪（控制脚本）",
   Callback = function()
   setclipboard("key individual ;(")
   toclipboard("key individual ;(")
   repeat wait() until game:IsLoaded()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/abcd789142/god/main/(ft.%20Helper%20Prod.%20MyWorld).txt",true))()
   end,
})
local Button = Tab:CreateButton({
   Name = "预判自瞄（Q）",
   Callback = function()
   setclipboard("key individual ;(")
   toclipboard("key individual ;(")
   repeat wait() until game:IsLoaded()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/abcd789142/god/main/aimbotq.lua",true))()
   end,
})
local Button = Tab:CreateButton({
   Name = "预判自瞄（V）",
   Callback = function()
   setclipboard("key individual ;(")
   toclipboard("key individual ;(")
   repeat wait() until game:IsLoaded()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/abcd789142/god/main/aimbotv.lua",true))()
   end,
})
