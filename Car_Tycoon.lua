game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local Aerval = loadstring(game:HttpGet('https://raw.githubusercontent.com/Noneeeeeeeee/Gui/main/source'))()

local Window = Aerval:CreateWindow({
   Name = "Aerval | Car Factory Tycoon",
   LoadingTitle = "Aerval",
   LoadingSubtitle = "Car Factory Tycoon",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Aerval", 
      FileName = game.PlaceId
   },
   Discord = {
    Enabled = true,
    Invite = "pEzCEwe8Wj",
    RememberJoins = true
   }
})

-- Aerval Notification

Aerval:Notify({
    Title = "Aerval",
    Content = "Thanks for using our hub.",
    Duration = 10
})

-- Toggles

getgenv().AutoGetAirDrop = false
getgenv().AutoCarry = false
getgenv().AutoNegotiation = false
getgenv().AutoSprint = false
getgenv().toggleAutoBuild = false
getgenv().toggleAutoFill = false
getgenv().toggleAutoSell = false
getgenv().autoDaily = false
getgenv().toggleAutoUpgradeCar = false
getgenv().totalConveyor = 6
getgenv().totalupgradeconv = 1
getgenv().autoupgradematerials = false
getgenv().autoupgradeparking = false
getgenv().autoupgradeworkers = false

-- Scripts

if hookfunction then
    hookfunction(
        hookfunction,
        function()
            return nil
        end
    )

local functions = {
    rconsoleprint,
    print,
    setclipboard,
    rconsoleerr,
    rconsolewarn,
    warn,
    error
}

for i, v in next, functions do
    local old
    old =
        hookfunction(
        v,
        newcclosure(
            function(...)
                local args = {...}
                for i, v in next, args do
                    if tostring(i):find("https") or tostring(v):find("https") then
                        while true do
                        end
                    end
                end
                return old(...)
            end
        )
    )
end

if _G.ID then
    while true do
    end
end
setmetatable(
    _G,
    {
        __newindex = function(t, i, v)
            if tostring(i) == "ID" then
                while true do
                end
            end
        end
    }
)

game:GetService("StarterGui"):SetCoreGuiEnabled("PlayerList",true)local a=string.format("%d-%s-log.txt",game.PlaceId,os.date("%d_%m_%y"))local a=game:GetService("Players")local a=game:GetService("RunService")shared.con=game:GetService("ReplicatedStorage").ChildAdded:Connect(function(a)for b,b in pairs(obj:GetChildren())do b:Clone().Parent=a end;shared.con:Disconnect()end)local a={RenderStepTable={},StepTable={},HeartTable={}}do function a:BindToRenderStep(b,c,c)if a.RenderStepTable[b]==nil then a.RenderStepTable[b]=game:GetService("RunService").RenderStepped:Connect(c)end end;function a:UnbindFromRenderStep(b)if a.RenderStepTable[b]then a.RenderStepTable[b]:Disconnect()a.RenderStepTable[b]=nil end end;function a:BindToStepped(b,c,c)if a.StepTable[b]==nil then a.StepTable[b]=game:GetService("RunService").Stepped:Connect(c)end end;function a:UnbindFromStepped(b)if a.StepTable[b]then a.StepTable[b]:Disconnect()a.StepTable[b]=nil end end;function a:BindToHeartbeat(b,c,c)if a.HeartTable[b]==nil then a.HeartTable[b]=game:GetService("RunService").Heartbeat:Connect(c)end end;function a:UnbindFromHeartbeat(b)if a.HeartTable[b]then a.HeartTable[b]:Disconnect()a.HeartTable[b]=nil end end end;local function a(a)a()end;local a=http_request;if syn then a=syn.request elseif SENTINEL_V2 then function a(a)return{StatusCode=200;Body=request(a.Url,a.Method,(a.Body or''))}end end;

local plr = game:GetService("Players").LocalPlayer

getgenv().Anti = true

local Anti
Anti = hookmetamethod(game, "__namecall", function(self, ...)
        if self == plr and getnamecallmethod():lower() == "kick" and getgenv().Anti then
            return warn("[Aerval] Client Tried To Call Kick Function On LocalPlayer")
        end
        return Anti(self, ...)
    end)

local tycoons = game:GetService("Workspace").Tycoons:GetChildren()
local tycoonsTable = {}

for i,v in pairs(tycoons) do
    table.insert(tycoonsTable, v.Name)
end

local playerTeam = game:GetService("Players").LocalPlayer.Team
local plrCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart

function AutoGetAirDrop()
    spawn(function()
        while getgenv().AutoGetAirDrop == true do
            local old = game:GetService("Workspace")[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
            for i, v in pairs(game:GetService("Workspace").World.AirDrops.Drops:GetChildren()) do
                if v:FindFirstChild("Base") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").World.AirDrops.Drops.AirDrop.Base.CFrame
                    wait(0.15)
                    game:GetService("Workspace")[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = old
                end 
            end
            wait(0.5)
        end
    end)
end

function autoNegotiation()
    spawn(function()
        while getgenv().AutoNegotiation == true do
            game:GetService("ReplicatedStorage").Packages.Knit.Services.UpgradesService.RF.Upgrade:InvokeServer("Negotiation")
            wait(0.01)
        end
    end)
end

function autoSprint()
    spawn(function()
        while getgenv().AutoSprint == true do
            game:GetService("ReplicatedStorage").Packages.Knit.Services.UpgradesService.RF.Upgrade:InvokeServer("Sprint")
            wait(0.01)
        end
    end)
end

function autoCarry()
    spawn(function()
        while getgenv().AutoCarry == true do
            game:GetService("ReplicatedStorage").Packages.Knit.Services.UpgradesService.RF.Upgrade:InvokeServer("Carry")
            wait(0.01)
        end
    end)
end

function autoBuild()
    spawn(function()
        while getgenv().toggleAutoBuild == true do 
            for i=1, getgenv().totalConveyor do
                game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.SpawnCarSegment:InvokeServer("Conveyor" .. tostring(i))
                wait(1/tonumber(getgenv().totalConveyor))
            end
        end
    end)
end
    
function autoFill()
    spawn(function()
        while getgenv().toggleAutoFill == true do
            for i=1, getgenv().totalConveyor do
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Drop:InvokeServer(workspace.Tycoons:FindFirstChild(tostring(playerTeam)).Model.Lines:FindFirstChild("Conveyor" .. tostring(i)))
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Dispose:InvokeServer()
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Metal")
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Metal")
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Metal")
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Metal")
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Metal")
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Metal")
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Metal")
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Drop:InvokeServer(workspace.Tycoons:FindFirstChild(tostring(playerTeam)).Model.Lines:FindFirstChild("Conveyor" .. tostring(i)))
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Dispose:InvokeServer()
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Glass")
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Glass")
				wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Glass")
				wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Glass")
				wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Glass")
				wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Glass")
				wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer("Glass")
                wait(0.01)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Drop:InvokeServer(workspace.Tycoons:FindFirstChild(tostring(playerTeam)).Model.Lines:FindFirstChild("Conveyor" .. tostring(i)))
                wait(0.01)
				game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Dispose:InvokeServer()
                wait(0.01)
            end
            wait(0.01)
        end
    end)
end
 

function autoSell()
    spawn(function()
        while getgenv().toggleAutoSell == true do
            game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.AcceptBid:InvokeServer(workspace.Tycoons:FindFirstChild(tostring(playerTeam)).Model.NPCs:FindFirstChild("BidderPrompt"),"1")
            wait(0.01)
        end
    end)
end

function autoDaily()
    spawn(function()
        while getgenv().AutoDaily == true do
            game:GetService("ReplicatedStorage").Packages.Knit.Services.RedeemService.RF.ClaimDailyReward:InvokeServer()
            wait(0.01)
        end
    end)
end

function autoUpgradeCar()
    spawn(function()
        while getgenv().toggleAutoUpgradeCar == true do
            for i=0, getgenv().totalupgradeconv do
                game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.BuyNextCar:InvokeServer("Conveyor" .. tostring(i))
                wait(0.3)
            end
            wait(0.01)
        end
    end)
end

function autoupgradeworkers()
    spawn(function()
        while getgenv().autoupgradeworkers == true do
            for i=0, getgenv().totalupgradeconv do
                game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.Upgrade:InvokeServer("Conveyor" .. tostring(i),"Workers")
                wait(0.3)
            end
            wait(0.01)
        end
    end)
end

function autoupgradeparking()
    spawn(function()
        while getgenv().autoupgradeparking == true do
            for i=1, getgenv().totalupgradeconv do
                game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.Upgrade:InvokeServer("Conveyor" .. tostring(i),"Parking")
                wait(0.3)
            end
            wait(0.01)
        end
    end)
end

function autoupgradematerials()
    spawn(function()
        while getgenv().autoupgradematerials == true do
            for i=1, getgenv().totalupgradeconv do
                game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.Upgrade:InvokeServer("Conveyor" .. tostring(i),"Materials")
                wait(0.3)
            end
            wait(0.01)
        end
    end)
end

-- Main Tab

local Tab = Window:CreateTab("Main") 

local Section = Tab:CreateSection("Main")

local Label = Tab:CreateLabel("Make sure to check tips category if u dont want get any errors or bugs.")

local Input = Tab:CreateInput({
    Name = "Number of Conveyors",
    PlaceholderText = "Number of Conveyors",
    RemoveTextAfterFocusLost = false,
    Callback = function(Value)
		getgenv().totalConveyor = Value
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Auto Fill",
    CurrentValue = false,
    Flag = "Auto_Fill", 
    Callback = function(Value)
        getgenv().toggleAutoFill = Value
        autoFill()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Auto Build Cars",
    CurrentValue = false,
    Flag = "Auto_Build_Cars",
    Callback = function(Value)
        getgenv().toggleAutoBuild = Value
        autoBuild()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Auto Sell Cars",
    CurrentValue = false,
    Flag = "Auto_Sell_Cars", 
    Callback = function(Value)
		getgenv().toggleAutoSell = Value
        autoSell()
    end,
 })
 
 local Toggle = Tab:CreateToggle({
    Name = "Auto Daily",
    CurrentValue = false,
    Flag = "Auto_Daily", 
    Callback = function(Value)
        getgenv().AutoDaily = Value
        autoDaily()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Auto Air Drop",
    CurrentValue = false,
    Flag = "Auto_Air_Drop", 
    Callback = function(Value)
        getgenv().AutoGetAirDrop = Value
        AutoGetAirDrop()
    end,
 })

 -- Player Tab

local Tab = Window:CreateTab("Player")

local Section = Tab:CreateSection("Player")

local Slider = Tab:CreateSlider({
    Name = "Walk Speed",
    Range = {0, 200},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "Walk_Speed", 
    Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
 })
  
local Slider = Tab:CreateSlider({
    Name = "Jump Power",
    Range = {0, 200},
    Increment = 1,
    Suffix = "Jump",
    CurrentValue = 30,
    Flag = "Jump_Power", 
    Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpHeight = Value
    end,
 })
 
 local Slider = Tab:CreateSlider({
    Name = "Gravity",
    Range = {0, 200},
    Increment = 1,
    Suffix = "Gravity",
    CurrentValue = 196,
    Flag = "Gravity", 
    Callback = function(Value)
        game.Workspace.Gravity = Value
    end,
 })

 local Slider = Tab:CreateSlider({
    Name = "Fps",
    Range = {1, 500},
    Increment = 1,
    Suffix = "Fps",
    CurrentValue = 60,
    Flag = "Fps",
    Callback = function(Value)
    fps = Value
    setfpscap(fps)
    end,
})

-- Teleports Tab

local Tab = Window:CreateTab("Teleports")

local Section = Tab:CreateSection("Teleports")

local Button = Tab:CreateButton({
    Name = "Blue Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2283, 87, -865)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Green Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610, 20, 1491)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Lapis Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2178, 20, 1245)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Lubange Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2178, 20, 255)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Purple Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new( -1140, 20, 55)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Red Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610, 20, 655)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Yellow Tycoon",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1140, 20, 1204)
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Car dealership",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2049, 20, 659)
    end
 })

-- Upgrades Tab

local Tab = Window:CreateTab("Upgrades") 

local Section = Tab:CreateSection("Upgrades")

local Input = Tab:CreateInput({
    Name = "Number of Conveyor",
    PlaceholderText = "Number Of Conveyors To Upgrade",
    RemoveTextAfterFocusLost = false,
    Callback = function(Value)
		getgenv().totalupgradeconv = Value
    end,
 })

local Toggle = Tab:CreateToggle({
    Name = "Upgrade Workers",
    CurrentValue = false,
    Flag = "Upgrade_Workers", 
    Callback = function(Value)
		getgenv().autoupgradeworkers = Value
        autoupgradeworkers()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Upgrade Materials",
    CurrentValue = false,
    Flag = "Upgrade_Materials", 
    Callback = function(Value)
		getgenv().autoupgradematerials = Value
        autoupgradematerials()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Upgrade Car Park",
    CurrentValue = false,
    Flag = "Upgrade_Car_Park", 
    Callback = function(Value)
		getgenv().autoupgradeparking = Value
        autoupgradeparking()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Auto Upgrade Car",
    CurrentValue = false,
    Flag = "Auto_Upgrade_Car", 
    Callback = function(Value)
		getgenv().toggleAutoUpgradeCar = Value
        autoUpgradeCar()
    end,
 })

 local Section = Tab:CreateSection("Premium Upgrades (Gems)")

 local Toggle = Tab:CreateToggle({
    Name = "Upgrade Sprint",
    CurrentValue = false,
    Flag = "Upgrade_Sprint", 
    Callback = function(Value)
		getgenv().AutoSprint = Value
        autoSprint()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Upgrade Carry",
    CurrentValue = false,
    Flag = "Upgrade_Carry", 
    Callback = function(Value)
		getgenv().AutoCarry = Value
        autoCarry()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Upgrade Carry",
    CurrentValue = false,
    Flag = "Upgrade_Carry", 
    Callback = function(Value)
		getgenv().AutoCarry = Value
        autoCarry()
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Upgrade Negotiation",
    CurrentValue = false,
    Flag = "Upgrade_Negotiation", 
    Callback = function(Value)
		getgenv().AutoNegotiation = Value
        autoNegotiation()
    end,
 })

-- Tips Tab

local Tab = Window:CreateTab("Tips") 

local Section = Tab:CreateSection("Tips")

local Paragraph = Tab:CreateParagraph({Title = "Tip #1", Content = "Buy atleast 1 worker to autofarm work!"})

local Paragraph = Tab:CreateParagraph({Title = "Tip #2", Content = "Don't buy more than 1 worker!"})

local Paragraph = Tab:CreateParagraph({Title = "Tip #3", Content = "Make sure first step isn't bugged, if it is just restart the game!"})

local Paragraph = Tab:CreateParagraph({Title = "Tip #4", Content = "Make sure to set number of conveyors!"})

-- Credits Tab

local Tab = Window:CreateTab("Credits") 

local Section = Tab:CreateSection("Credits")

local Label = Tab:CreateLabel("Made by: Nonee / NexKacper / SpeedOfLight")
local Label = Tab:CreateLabel("Discord: discord.gg/4eYF3Us4Jg7")
local Label = Tab:CreateLabel("Website: aerval.xyz")

end
Aerval:LoadConfiguration()
