local PabloLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/BatuKvi123/PabloLibV3/main/PabloLibV3"))()

local window = PabloLib:Create(
"Boku No Pico Hub", -- Nome do script.
"Enabled", -- Janela arrastável.
"p" -- Tecla para abrir/fechar a janela.
)

local mainTab = window:CreateTab("Main")

mainTab:CreateButton("Super Speed", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

mainTab:CreateButton("Normal Speed", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

mainTab:CreateToggle("God Mode", function(state)
if state then
game.Players.LocalPlayer.Character.Humanoid.Name = "1"
local newHumanoid = game.Players.LocalPlayer.Character["1"]:Clone()
newHumanoid.Parent = game.Players.LocalPlayer.Character
newHumanoid.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
else
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)

mainTab:CreateButton("Chat Bypass", function()
loadstring(game:HttpGet("https://pastebin.com/raw/T4FEyvHH"))()
end)

mainTab:CreateButton("Backdoor", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua"))()
end)

mainTab:CreateButton("Highlight Players", function()
for _, player in pairs(game.Players:GetPlayers()) do
if player ~= game.Players.LocalPlayer then
local highlight = Instance.new("Highlight")
highlight.Adornee = player.Character
highlight.FillColor = Color3.new(1, 0, 0)
highlight.OutlineColor = Color3.new(1, 0, 0)
highlight.Parent = player.Character
end
end
end)

mainTab:CreateButton("Infinite Yield", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

PabloLib:Init()