local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

if game.PlaceId == 14236123211 then

    --First Window
    local Window = Rayfield:CreateWindow({
        Name = "Punch Simulator -By omiab",
        LoadingTitle = "Omiab Hub",
        LoadingSubtitle = "by omiab",
        ConfigurationSaving = {
           Enabled = true,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "omiab hub"
        },
        Discord = {
           Enabled = true,
           Invite = "VNXmzkUJUb", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
           Title = "Join our discord for the Key.",
           Subtitle = "Key System",
           Note = "The key will be provided in our discord server.",
           FileName = "omiabKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"https://pastebin.com/raw/VVJxBQnU"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
     })

     --Notification

     Rayfield:Notify({
        Title = "Discord Notification",
        Content = "Join our discord for more scripts! discord.gg/VNXmzkUJUb",
        Duration = 5,
        Image = nil,
        Actions = { -- Notification Buttons
           Ignore = {
              Name = "Okay!",
              Callback = function()
              print("The user tapped Okay!")
           end
        },
     },
     })


     --Main Tab
     local MainTab = Window:CreateTab("🏠Main", nil) -- Title, Image

     local MainSection = MainTab:CreateSection("Farming")

     local AutoClickToggle = MainTab:CreateToggle({
        Name = "AutoClick",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().autoclick = Value;
            
            while autoclick do 
                game:GetService("ReplicatedStorage").Events.DamageIncreaseOnClickEvent:FireServer()
                wait()
            end    
        end,
     })

     --Egg Section

     local EggTab = Window:CreateTab("🥚Eggs", nil)

     local EggSection = EggTab:CreateSection("Egg Farming")

     local ForestHatchToggle = EggTab:CreateToggle({
      Name = "Hatch Forest Egg",
      CurrentValue = false,
      Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
         getgenv().autohatch1 = Value;

         while autohatch1 do
            local args = {
               [1] = "1"
           }
       
           game:GetService("ReplicatedStorage").Events.PlayerPressedKeyOnEgg:FireServer(unpack(args))
           wait()
         end   
      end,
   })

   local Forest2HatchToggle = EggTab:CreateToggle({  
      Name = "Hatch Forest 2 Egg",
      CurrentValue = false,
      Flag = "Toggle3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
         getgenv().autohatch2 = Value;

         while autohatch2 do
            local args = {
               [1] = "2"
           }
       
           game:GetService("ReplicatedStorage").Events.PlayerPressedKeyOnEgg:FireServer(unpack(args))
           wait()
         end   
      end,
   })

   local DesertHatchToggle = EggTab:CreateToggle({
      Name = "Hatch Desert Egg",
      CurrentValue = false,
      Flag = "Toggle4", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
         getgenv().autohatch3 = Value;

         while autohatch3 do
            local args = {
               [1] = "3"
           }
       
           game:GetService("ReplicatedStorage").Events.PlayerPressedKeyOnEgg:FireServer(unpack(args))
           wait()
         end   
      end,
   })

   local CaveHatchToggle = EggTab:CreateToggle({
      Name = "Hatch Cave Egg",
      CurrentValue = false,
      Flag = "Toggle5", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
         getgenv().autohatch4 = Value;

         while autohatch4 do
            local args = {
               [1] = "4"
           }
       
           game:GetService("ReplicatedStorage").Events.PlayerPressedKeyOnEgg:FireServer(unpack(args))
           wait()
         end   
      end,
   })

   local OceanHatchToggle = EggTab:CreateToggle({
      Name = "Hatch Ocean Egg",
      CurrentValue = false,
      Flag = "Toggle6", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
         getgenv().autohatch5 = Value;

         while autohatch5 do
            local args = {
               [1] = "5"
           }
       
           game:GetService("ReplicatedStorage").Events.PlayerPressedKeyOnEgg:FireServer(unpack(args))
           wait()
         end   
      end,
   })

 
end