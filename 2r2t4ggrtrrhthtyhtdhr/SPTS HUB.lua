local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/HeyyyRappp/HeyyyRappp/main/CNRHEYYYRAPPP/halage')))()
--------------------------------------------------------------------
local CNRUI = library:AddWindow("SW Hub | SPTS: AU",Enum.KeyCode.RightControl)
--------------------------------------------------------------------
local AS = CNRUI:AddTab("Auto Train","7733960981")
local AP = CNRUI:AddTab("Player Menu","7733960981")
local Y = CNRUI:AddTab("Token Generator","7733960981")

AS:AddSeperator("Auto Train")
AS:AddToggle("Auto Strength",false,function(value)
if value == true then
_G.Fist = true
while _G.Fist do
game.ReplicatedStorage.Events.AddStat:FireServer("fist",false)
wait()
end
else
_G.Fist = false
end
end)
---
AS:AddLine()
AS:AddToggle("Auto Body Toughness",false,function(value)
if value == true then
_G.Dura = true
while _G.Dura do
game.ReplicatedStorage.Events.AddStat:FireServer("pushup",false)
wait(1.3)
end
else
_G.Dura = false
end
end)
---
AS:AddButton('Massive Body Toughness',function()
local replicated = game:GetService('ReplicatedStorage')
coroutine.wrap(function()
for i = 1,2000 do
task.spawn(function()
game.ReplicatedStorage.Events.AddStat:FireServer("pushup",false)
end)
end
end)()
end)
---
AS:AddLine()
AS:AddToggle("Auto Psychic",false,function(value)
if value == true then
_G.Chakra = true
while _G.Chakra do
game.ReplicatedStorage.Events.AddStat:FireServer("meditate",false)
wait()
end
else
_G.Chakra = false
end
end)
---
AS:AddLine()
AS:AddToggle("Auto Movement",false,function(value)
if value == true then
_G.Movement = true
while _G.Movement do
game.ReplicatedStorage.Events.AddStat:FireServer("movement",false)
wait(1.5)
end
else
_G.Movement = false
end
end)
---
AS:AddButton('Massive Movement',function()
local replicated = game:GetService('ReplicatedStorage')
coroutine.wrap(function()
for i = 1,2000 do
task.spawn(function()
game.ReplicatedStorage.Events.AddStat:FireServer("movement",false)
end)
end
end)()
end)
---
AS:AddLine()
AS:AddToggle("Auto Jump",false,function(value)
if value == true then
_G.Jump = true
while _G.Jump do
game.ReplicatedStorage.Events.AddStat:FireServer("jump",false)
wait(1.5)
end
else
_G.Jump = false
end
end)
---
AS:AddButton('Massive Jump',function()
local replicated = game:GetService('ReplicatedStorage')
coroutine.wrap(function()
for i = 1,2000 do
task.spawn(function()
game.ReplicatedStorage.Events.AddStat:FireServer("jump",false)
end)
end
end)()
end)
-----------------------
AP:AddSeperator("Player Menu")
AP:AddButton('Plot Armor',function()
workspace.SafeZones.NewPlayerSpawn.Size = Vector3.new(10,1,10)
workspace.SafeZones.NewPlayerSpawn.CanCollide = false
game:GetService("RunService").RenderStepped:Connect(function(step)
for i,v in next, game.Players:GetPlayers() do
workspace.SafeZones.NewPlayerSpawn.CFrame = game.Players.LocalPlayer.Character.LeftFoot.CFrame
end
end)
end)
---
AP:AddLine()
AP:AddButton('Unlocked all Skills',function()
game.Players.LocalPlayer.Skills.hasBulletPunch.Value = true
game.Players.LocalPlayer.Skills.hasConcealAura.Value = true
game.Players.LocalPlayer.Skills.hasEnergySphere.Value = true
game.Players.LocalPlayer.Skills.hasExplosion.Value = true
game.Players.LocalPlayer.Skills.hasFSBT.Value = true
game.Players.LocalPlayer.Skills.hasFirehellPull.Value = true
game.Players.LocalPlayer.Skills.hasFly.Value = true
game.Players.LocalPlayer.Skills.hasInvisiblility.Value = true
game.Players.LocalPlayer.Skills.hasKillingIntentAura.Value = true
game.Players.LocalPlayer.Skills.hasMSJF.Value = true
game.Players.LocalPlayer.Skills.hasPS.Value = true
game.Players.LocalPlayer.Skills.hasReflection.Value = true
game.Players.LocalPlayer.Skills.hasSoulAttack.Value = true
game.Players.LocalPlayer.Skills.hasSoulReap.Value = true
game.Players.LocalPlayer.Skills.hasTeleport.Value = true
game.Players.LocalPlayer.Skills.hasWaterRun.Value = true
game.Players.LocalPlayer.Skills.hasWeight.Value = true
end)
----------------
Y:AddSeperator("Token Generator")
Y:AddToggle("Start",false,function(value)
if value == true then
_G.Yen = true
while _G.Yen do
game.ReplicatedStorage.Events.UpgradeMulti:FireServer("",1,-123456)
wait()
end
else
_G.Yen = false
end
end)