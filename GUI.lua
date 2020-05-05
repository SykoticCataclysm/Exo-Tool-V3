--[[

	Exo Tool V3 - GUI

--]]

repeat wait() until game:IsLoaded()

-- Settings

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local ScriptDumperSettings = {
	["Workspace"] = true,
	["ReplicatedFirst"] = true,
	["ReplicatedStorage"] = true,
	["StarterPlayer"] = true,
	["LocalPlayer"] = true,
	["Nil"] = true
}

-- Gui to Lua
-- Version: 3

-- Instances:

local ExoToolV3 = Instance.new("ScreenGui")
local Selection = Instance.new("Frame")
local BorderLine = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local Discord = Instance.new("TextLabel")
local Icons = Instance.new("Frame")
local RemoteSpyIcon = Instance.new("ImageLabel")
local UpvalueScannerIcon = Instance.new("ImageLabel")
local ScriptDumperIcon = Instance.new("ImageLabel")
local PositionGrabberIcon = Instance.new("ImageLabel")
local Buttons = Instance.new("Frame")
local UpvalueScannerBtn = Instance.new("TextButton")
local ScriptDumperBtn = Instance.new("TextButton")
local PositionGrabberBtn = Instance.new("TextButton")
local RemoteSpyBtn = Instance.new("TextButton")
local ScriptDumper = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local Dump = Instance.new("TextButton")
local BorderTop = Instance.new("TextLabel")
local BorderRight = Instance.new("TextLabel")
local BorderLeft = Instance.new("TextLabel")
local BorderBottom = Instance.new("TextLabel")
local Settings = Instance.new("Frame")
local Workspace = Instance.new("TextButton")
local Label = Instance.new("TextLabel")
local ReplicatedFirst = Instance.new("TextButton")
local Label_2 = Instance.new("TextLabel")
local ReplicatedStorage = Instance.new("TextButton")
local Label_3 = Instance.new("TextLabel")
local StarterPlayer = Instance.new("TextButton")
local Label_4 = Instance.new("TextLabel")
local Nil = Instance.new("TextButton")
local Label_5 = Instance.new("TextLabel")
local LocalPlayer = Instance.new("TextButton")
local Label_6 = Instance.new("TextLabel")
local BorderBottom_2 = Instance.new("TextLabel")
local BorderRight_2 = Instance.new("TextLabel")
local BorderTop_2 = Instance.new("TextLabel")
local BorderLeft_2 = Instance.new("TextLabel")
local FolderName = Instance.new("TextBox")

-- Properties:

ExoToolV3.Name = "ExoToolV3"
ExoToolV3.Parent = game:GetService("Players")

Selection.Name = "Selection"
Selection.Parent = ExoToolV3
Selection.BackgroundColor3 = Color3.new(1, 1, 1)
Selection.BorderColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Selection.BorderSizePixel = 0
Selection.Size = UDim2.new(0, 200, 1, 0)

BorderLine.Name = "BorderLine"
BorderLine.Parent = Selection
BorderLine.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
BorderLine.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
BorderLine.BorderSizePixel = 0
BorderLine.Position = UDim2.new(1, 0, 0, 0)
BorderLine.Size = UDim2.new(0, 1, 1, 0)
BorderLine.Font = Enum.Font.SourceSans
BorderLine.Text = ""
BorderLine.TextColor3 = Color3.new(0, 0, 0)
BorderLine.TextSize = 14

Title.Name = "Title"
Title.Parent = Selection
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Exo Tool V3"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 24

Discord.Name = "Discord"
Discord.Parent = Selection
Discord.BackgroundColor3 = Color3.new(1, 1, 1)
Discord.BackgroundTransparency = 1
Discord.Position = UDim2.new(0, 0, 1, -40)
Discord.Size = UDim2.new(1, 0, 0, 40)
Discord.Font = Enum.Font.SourceSansSemibold
Discord.Text = "discord.me/sykoscripting"
Discord.TextColor3 = Color3.new(1, 1, 1)
Discord.TextSize = 18

Icons.Name = "Icons"
Icons.Parent = Selection
Icons.BackgroundColor3 = Color3.new(1, 1, 1)
Icons.BackgroundTransparency = 1
Icons.Position = UDim2.new(0, 5, 0, 50)
Icons.Size = UDim2.new(0, 40, 1, -90)

RemoteSpyIcon.Name = "RemoteSpyIcon"
RemoteSpyIcon.Parent = Icons
RemoteSpyIcon.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteSpyIcon.BackgroundTransparency = 1
RemoteSpyIcon.Size = UDim2.new(0, 40, 0, 40)
RemoteSpyIcon.Image = "rbxassetid://4988303809"

UpvalueScannerIcon.Name = "UpvalueScannerIcon"
UpvalueScannerIcon.Parent = Icons
UpvalueScannerIcon.BackgroundColor3 = Color3.new(1, 1, 1)
UpvalueScannerIcon.BackgroundTransparency = 1
UpvalueScannerIcon.Position = UDim2.new(0, 0, 0, 45)
UpvalueScannerIcon.Size = UDim2.new(0, 40, 0, 40)
UpvalueScannerIcon.Image = "rbxassetid://4988280805"

ScriptDumperIcon.Name = "ScriptDumperIcon"
ScriptDumperIcon.Parent = Icons
ScriptDumperIcon.BackgroundColor3 = Color3.new(1, 1, 1)
ScriptDumperIcon.BackgroundTransparency = 1
ScriptDumperIcon.Position = UDim2.new(0, 0, 0, 90)
ScriptDumperIcon.Size = UDim2.new(0, 40, 0, 40)
ScriptDumperIcon.Image = "rbxassetid://4988251975"
ScriptDumperIcon.ImageColor3 = Color3.new(0, 0, 0)

PositionGrabberIcon.Name = "PositionGrabberIcon"
PositionGrabberIcon.Parent = Icons
PositionGrabberIcon.BackgroundColor3 = Color3.new(1, 1, 1)
PositionGrabberIcon.BackgroundTransparency = 1
PositionGrabberIcon.Position = UDim2.new(0, 0, 0, 135)
PositionGrabberIcon.Size = UDim2.new(0, 40, 0, 40)
PositionGrabberIcon.Image = "rbxassetid://4988252064"

Buttons.Name = "Buttons"
Buttons.Parent = Selection
Buttons.BackgroundColor3 = Color3.new(1, 1, 1)
Buttons.BackgroundTransparency = 1
Buttons.Position = UDim2.new(0, 50, 0, 50)
Buttons.Size = UDim2.new(0, 145, 1, -90)

UpvalueScannerBtn.Name = "UpvalueScannerBtn"
UpvalueScannerBtn.Parent = Buttons
UpvalueScannerBtn.BackgroundColor3 = Color3.new(1, 1, 1)
UpvalueScannerBtn.BackgroundTransparency = 1
UpvalueScannerBtn.Position = UDim2.new(0, 0, 0, 45)
UpvalueScannerBtn.Size = UDim2.new(1, 0, 0, 40)
UpvalueScannerBtn.Font = Enum.Font.SourceSans
UpvalueScannerBtn.Text = "Upvalue Scanner"
UpvalueScannerBtn.TextColor3 = Color3.new(1, 1, 1)
UpvalueScannerBtn.TextSize = 16

ScriptDumperBtn.Name = "ScriptDumperBtn"
ScriptDumperBtn.Parent = Buttons
ScriptDumperBtn.BackgroundColor3 = Color3.new(1, 1, 1)
ScriptDumperBtn.BackgroundTransparency = 1
ScriptDumperBtn.Position = UDim2.new(0, 0, 0, 90)
ScriptDumperBtn.Size = UDim2.new(1, 0, 0, 40)
ScriptDumperBtn.Font = Enum.Font.SourceSans
ScriptDumperBtn.Text = "Script Dumper"
ScriptDumperBtn.TextColor3 = Color3.new(1, 1, 1)
ScriptDumperBtn.TextSize = 16

PositionGrabberBtn.Name = "PositionGrabberBtn"
PositionGrabberBtn.Parent = Buttons
PositionGrabberBtn.BackgroundColor3 = Color3.new(1, 1, 1)
PositionGrabberBtn.BackgroundTransparency = 1
PositionGrabberBtn.Position = UDim2.new(0, 0, 0, 135)
PositionGrabberBtn.Size = UDim2.new(1, 0, 0, 40)
PositionGrabberBtn.Font = Enum.Font.SourceSans
PositionGrabberBtn.Text = "Position Grabber"
PositionGrabberBtn.TextColor3 = Color3.new(1, 1, 1)
PositionGrabberBtn.TextSize = 16

RemoteSpyBtn.Name = "RemoteSpyBtn"
RemoteSpyBtn.Parent = Buttons
RemoteSpyBtn.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteSpyBtn.BackgroundTransparency = 1
RemoteSpyBtn.Size = UDim2.new(1, 0, 0, 40)
RemoteSpyBtn.Font = Enum.Font.SourceSans
RemoteSpyBtn.Text = "Remote Spy"
RemoteSpyBtn.TextColor3 = Color3.new(1, 1, 1)
RemoteSpyBtn.TextSize = 16

ScriptDumper.Name = "ScriptDumper"
ScriptDumper.Parent = ExoToolV3
ScriptDumper.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ScriptDumper.BackgroundTransparency = 0.5
ScriptDumper.BorderColor3 = Color3.new(0, 0, 0)
ScriptDumper.BorderSizePixel = 0
ScriptDumper.Position = UDim2.new(0, 220, 0, 140)
ScriptDumper.Size = UDim2.new(0, 200, 0, 280)
ScriptDumper.Visible = false

Title_2.Name = "Title"
Title_2.Parent = ScriptDumper
Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
Title_2.BackgroundTransparency = 1
Title_2.Size = UDim2.new(1, 0, 0, 35)
Title_2.Font = Enum.Font.SourceSansSemibold
Title_2.Text = "Script Dumper"
Title_2.TextColor3 = Color3.new(1, 1, 1)
Title_2.TextSize = 20

Dump.Name = "Dump"
Dump.Parent = ScriptDumper
Dump.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Dump.BackgroundTransparency = 1
Dump.BorderColor3 = Color3.new(0, 0, 0)
Dump.Position = UDim2.new(0, 5, 1, -33)
Dump.Size = UDim2.new(1, -10, 0, 28)
Dump.Font = Enum.Font.SourceSansSemibold
Dump.Text = "Dump Scripts"
Dump.TextColor3 = Color3.new(1, 1, 1)
Dump.TextSize = 18

BorderTop.Name = "BorderTop"
BorderTop.Parent = Dump
BorderTop.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
BorderTop.BorderSizePixel = 0
BorderTop.Position = UDim2.new(0, -1, 0, -1)
BorderTop.Size = UDim2.new(1, 1, 0, 1)
BorderTop.Font = Enum.Font.SourceSans
BorderTop.Text = ""
BorderTop.TextColor3 = Color3.new(0, 0, 0)
BorderTop.TextSize = 14

BorderRight.Name = "BorderRight"
BorderRight.Parent = Dump
BorderRight.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
BorderRight.BorderSizePixel = 0
BorderRight.Position = UDim2.new(1, 0, 0, -1)
BorderRight.Size = UDim2.new(0, 1, 1, 1)
BorderRight.Font = Enum.Font.SourceSans
BorderRight.Text = ""
BorderRight.TextColor3 = Color3.new(0, 0, 0)
BorderRight.TextSize = 14

BorderLeft.Name = "BorderLeft"
BorderLeft.Parent = Dump
BorderLeft.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
BorderLeft.BorderSizePixel = 0
BorderLeft.Position = UDim2.new(0, -1, 0, 0)
BorderLeft.Size = UDim2.new(0, 1, 1, 1)
BorderLeft.Font = Enum.Font.SourceSans
BorderLeft.Text = ""
BorderLeft.TextColor3 = Color3.new(0, 0, 0)
BorderLeft.TextSize = 14

BorderBottom.Name = "BorderBottom"
BorderBottom.Parent = Dump
BorderBottom.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
BorderBottom.BorderSizePixel = 0
BorderBottom.Position = UDim2.new(0, 0, 1, 0)
BorderBottom.Size = UDim2.new(1, 1, 0, 1)
BorderBottom.Font = Enum.Font.SourceSans
BorderBottom.Text = ""
BorderBottom.TextColor3 = Color3.new(0, 0, 0)
BorderBottom.TextSize = 14

Settings.Name = "Settings"
Settings.Parent = ScriptDumper
Settings.BackgroundColor3 = Color3.new(1, 1, 1)
Settings.BackgroundTransparency = 1
Settings.Position = UDim2.new(0, 5, 0, 35)
Settings.Size = UDim2.new(1, -10, 1, -104)

Workspace.Name = "Workspace"
Workspace.Parent = Settings
Workspace.BackgroundColor3 = Color3.new(0, 1, 0)
Workspace.BackgroundTransparency = 0.5
Workspace.BorderColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Workspace.Position = UDim2.new(1, -25, 0, 0)
Workspace.Size = UDim2.new(0, 25, 0, 25)
Workspace.Font = Enum.Font.SourceSans
Workspace.Text = ""
Workspace.TextColor3 = Color3.new(0, 0, 0)
Workspace.TextSize = 14

Label.Name = "Label"
Label.Parent = Workspace
Label.AnchorPoint = Vector2.new(1, 0)
Label.BackgroundColor3 = Color3.new(1, 1, 1)
Label.BackgroundTransparency = 1
Label.Position = UDim2.new(0, -5, 0, 0)
Label.Size = UDim2.new(0, 160, 0, 25)
Label.Font = Enum.Font.SourceSans
Label.Text = "Workspace"
Label.TextColor3 = Color3.new(1, 1, 1)
Label.TextSize = 18
Label.TextXAlignment = Enum.TextXAlignment.Left

ReplicatedFirst.Name = "ReplicatedFirst"
ReplicatedFirst.Parent = Settings
ReplicatedFirst.BackgroundColor3 = Color3.new(0, 1, 0)
ReplicatedFirst.BackgroundTransparency = 0.5
ReplicatedFirst.BorderColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ReplicatedFirst.Position = UDim2.new(1, -25, 0, 30)
ReplicatedFirst.Size = UDim2.new(0, 25, 0, 25)
ReplicatedFirst.Font = Enum.Font.SourceSans
ReplicatedFirst.Text = ""
ReplicatedFirst.TextColor3 = Color3.new(0, 0, 0)
ReplicatedFirst.TextSize = 14

Label_2.Name = "Label"
Label_2.Parent = ReplicatedFirst
Label_2.AnchorPoint = Vector2.new(1, 0)
Label_2.BackgroundColor3 = Color3.new(1, 1, 1)
Label_2.BackgroundTransparency = 1
Label_2.Position = UDim2.new(0, -5, 0, 0)
Label_2.Size = UDim2.new(0, 160, 0, 25)
Label_2.Font = Enum.Font.SourceSans
Label_2.Text = "ReplicatedFirst"
Label_2.TextColor3 = Color3.new(1, 1, 1)
Label_2.TextSize = 18
Label_2.TextXAlignment = Enum.TextXAlignment.Left

ReplicatedStorage.Name = "ReplicatedStorage"
ReplicatedStorage.Parent = Settings
ReplicatedStorage.BackgroundColor3 = Color3.new(0, 1, 0)
ReplicatedStorage.BackgroundTransparency = 0.5
ReplicatedStorage.BorderColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ReplicatedStorage.Position = UDim2.new(1, -25, 0, 60)
ReplicatedStorage.Size = UDim2.new(0, 25, 0, 25)
ReplicatedStorage.Font = Enum.Font.SourceSans
ReplicatedStorage.Text = ""
ReplicatedStorage.TextColor3 = Color3.new(0, 0, 0)
ReplicatedStorage.TextSize = 14

Label_3.Name = "Label"
Label_3.Parent = ReplicatedStorage
Label_3.AnchorPoint = Vector2.new(1, 0)
Label_3.BackgroundColor3 = Color3.new(1, 1, 1)
Label_3.BackgroundTransparency = 1
Label_3.Position = UDim2.new(0, -5, 0, 0)
Label_3.Size = UDim2.new(0, 160, 0, 25)
Label_3.Font = Enum.Font.SourceSans
Label_3.Text = "ReplicatedStorage"
Label_3.TextColor3 = Color3.new(1, 1, 1)
Label_3.TextSize = 18
Label_3.TextXAlignment = Enum.TextXAlignment.Left

StarterPlayer.Name = "StarterPlayer"
StarterPlayer.Parent = Settings
StarterPlayer.BackgroundColor3 = Color3.new(0, 1, 0)
StarterPlayer.BackgroundTransparency = 0.5
StarterPlayer.BorderColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
StarterPlayer.Position = UDim2.new(1, -25, 0, 90)
StarterPlayer.Size = UDim2.new(0, 25, 0, 25)
StarterPlayer.Font = Enum.Font.SourceSans
StarterPlayer.Text = ""
StarterPlayer.TextColor3 = Color3.new(0, 0, 0)
StarterPlayer.TextSize = 14

Label_4.Name = "Label"
Label_4.Parent = StarterPlayer
Label_4.AnchorPoint = Vector2.new(1, 0)
Label_4.BackgroundColor3 = Color3.new(1, 1, 1)
Label_4.BackgroundTransparency = 1
Label_4.Position = UDim2.new(0, -5, 0, 0)
Label_4.Size = UDim2.new(0, 160, 0, 25)
Label_4.Font = Enum.Font.SourceSans
Label_4.Text = "StarterPlayer"
Label_4.TextColor3 = Color3.new(1, 1, 1)
Label_4.TextSize = 18
Label_4.TextXAlignment = Enum.TextXAlignment.Left

Nil.Name = "Nil"
Nil.Parent = Settings
Nil.BackgroundColor3 = Color3.new(0, 1, 0)
Nil.BackgroundTransparency = 0.5
Nil.BorderColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Nil.Position = UDim2.new(1, -25, 0, 150)
Nil.Size = UDim2.new(0, 25, 0, 25)
Nil.Font = Enum.Font.SourceSans
Nil.Text = ""
Nil.TextColor3 = Color3.new(0, 0, 0)
Nil.TextSize = 14

Label_5.Name = "Label"
Label_5.Parent = Nil
Label_5.AnchorPoint = Vector2.new(1, 0)
Label_5.BackgroundColor3 = Color3.new(1, 1, 1)
Label_5.BackgroundTransparency = 1
Label_5.Position = UDim2.new(0, -5, 0, 0)
Label_5.Size = UDim2.new(0, 160, 0, 25)
Label_5.Font = Enum.Font.SourceSans
Label_5.Text = "Nil Instances"
Label_5.TextColor3 = Color3.new(1, 1, 1)
Label_5.TextSize = 18
Label_5.TextXAlignment = Enum.TextXAlignment.Left

LocalPlayer.Name = "LocalPlayer"
LocalPlayer.Parent = Settings
LocalPlayer.BackgroundColor3 = Color3.new(0, 1, 0)
LocalPlayer.BackgroundTransparency = 0.5
LocalPlayer.BorderColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
LocalPlayer.Position = UDim2.new(1, -25, 0, 120)
LocalPlayer.Size = UDim2.new(0, 25, 0, 25)
LocalPlayer.Font = Enum.Font.SourceSans
LocalPlayer.Text = ""
LocalPlayer.TextColor3 = Color3.new(0, 0, 0)
LocalPlayer.TextSize = 14

Label_6.Name = "Label"
Label_6.Parent = LocalPlayer
Label_6.AnchorPoint = Vector2.new(1, 0)
Label_6.BackgroundColor3 = Color3.new(1, 1, 1)
Label_6.BackgroundTransparency = 1
Label_6.Position = UDim2.new(0, -5, 0, 0)
Label_6.Size = UDim2.new(0, 160, 0, 25)
Label_6.Font = Enum.Font.SourceSans
Label_6.Text = "LocalPlayer"
Label_6.TextColor3 = Color3.new(1, 1, 1)
Label_6.TextSize = 18
Label_6.TextXAlignment = Enum.TextXAlignment.Left

BorderBottom_2.Name = "BorderBottom"
BorderBottom_2.Parent = ScriptDumper
BorderBottom_2.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
BorderBottom_2.BorderSizePixel = 0
BorderBottom_2.Position = UDim2.new(0, 0, 1, 0)
BorderBottom_2.Size = UDim2.new(1, 1, 0, 1)
BorderBottom_2.Font = Enum.Font.SourceSans
BorderBottom_2.Text = ""
BorderBottom_2.TextColor3 = Color3.new(0, 0, 0)
BorderBottom_2.TextSize = 14

BorderRight_2.Name = "BorderRight"
BorderRight_2.Parent = ScriptDumper
BorderRight_2.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
BorderRight_2.BorderSizePixel = 0
BorderRight_2.Position = UDim2.new(1, 0, 0, -1)
BorderRight_2.Size = UDim2.new(0, 1, 1, 1)
BorderRight_2.Font = Enum.Font.SourceSans
BorderRight_2.Text = ""
BorderRight_2.TextColor3 = Color3.new(0, 0, 0)
BorderRight_2.TextSize = 14

BorderTop_2.Name = "BorderTop"
BorderTop_2.Parent = ScriptDumper
BorderTop_2.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
BorderTop_2.BorderSizePixel = 0
BorderTop_2.Position = UDim2.new(0, -1, 0, -1)
BorderTop_2.Size = UDim2.new(1, 1, 0, 1)
BorderTop_2.Font = Enum.Font.SourceSans
BorderTop_2.Text = ""
BorderTop_2.TextColor3 = Color3.new(0, 0, 0)
BorderTop_2.TextSize = 14

BorderLeft_2.Name = "BorderLeft"
BorderLeft_2.Parent = ScriptDumper
BorderLeft_2.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
BorderLeft_2.BorderSizePixel = 0
BorderLeft_2.Position = UDim2.new(0, -1, 0, 0)
BorderLeft_2.Size = UDim2.new(0, 1, 1, 1)
BorderLeft_2.Font = Enum.Font.SourceSans
BorderLeft_2.Text = ""
BorderLeft_2.TextColor3 = Color3.new(0, 0, 0)
BorderLeft_2.TextSize = 14

FolderName.Name = "FolderName"
FolderName.Parent = ScriptDumper
FolderName.BackgroundColor3 = Color3.new(0, 0, 0)
FolderName.BackgroundTransparency = 0.6
FolderName.BorderColor3 = Color3.new(0, 0, 0)
FolderName.Position = UDim2.new(0, 5, 1, -63)
FolderName.Size = UDim2.new(1, -10, 0, 25)
FolderName.Font = Enum.Font.SourceSans
FolderName.PlaceholderColor3 = Color3.new(1, 1, 1)
FolderName.PlaceholderText = "[ Folder Name ]"
FolderName.Text = ""
FolderName.TextColor3 = Color3.new(1, 1, 1)
FolderName.TextSize = 16
FolderName.TextStrokeTransparency = 0.6

-- Scripts:

local Tabs = {
	[RemoteSpyBtn] = ScriptDumper,
	[UpvalueScannerBtn] = ScriptDumper,
	[ScriptDumperBtn] = ScriptDumper,
	[PositionGrabberBtn] = ScriptDumper
}

for a, b in pairs(Tabs) do
	a.MouseButton1Click:Connect(function()
		for c, d in pairs(Tabs) do
			d.Visible = b == d
		end
	end)
end

local DumpBtns = {
	Workspace,
	ReplicatedFirst,
	ReplicatedStorage,
	StarterPlayer,
	LocalPlayer,
	Nil
}

for i, v in pairs(DumpBtns) do
	v.MouseButton1Click:Connect(function()
		ScriptDumperSettings[v.Name] = not ScriptDumperSettings[v.Name]
		v.BackgroundColor3 = ScriptDumperSettings[v.Name] and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
	end)
end

Dump.MouseButton1Click:Connect(function()
	local Name = FolderName.Text ~= "" and FolderName.Text or GameName
	ScriptDump(ScriptDumperSettings, Name)
end)