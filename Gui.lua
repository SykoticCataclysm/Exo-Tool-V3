local ui = {}

local CoreGui = game:GetService("CoreGui")

local Plr = game:GetService("Players").LocalPlayer

if not CoreGui:FindFirstChild("ExoToolV3") then
	repeat wait() until game:IsLoaded()
	
	local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	
	local eventicons = {
		["BindableEvent"] = "rbxassetid://4229809371",
		["BindableFunction"] = "rbxassetid://4229807624",
		["RemoteEvent"] = "rbxassetid://4229806545",
		["RemoteFunction"] = "rbxassetid://4229810474"
	}
	
	local scriptdumpersettings = {
		["Workspace"] = true,
		["ReplicatedFirst"] = true,
		["ReplicatedStorage"] = true,
		["StarterPlayer"] = true,
		["LocalPlayer"] = true,
		["Nil"] = true
	}
	
	local dumper = loadstring(game:HttpGet("https://raw.githubusercontent.com/SykoticCataclysm/Exo-Tool-V3/master/ScriptDumper.lua", true))()
	
	local ExoToolV3 = Instance.new("ScreenGui")
	local ScriptDumper = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Dump = Instance.new("TextButton")
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
	local FolderName = Instance.new("TextBox")
	local Selection = Instance.new("ImageLabel")
	local Buttons = Instance.new("Frame")
	local UpvalueScannerBtn = Instance.new("TextButton")
	local ScriptDumperBtn = Instance.new("TextButton")
	local PositionGrabberBtn = Instance.new("TextButton")
	local RemoteSpyBtn = Instance.new("TextButton")
	local HttpSpyBtn = Instance.new("TextButton")
	local Icons = Instance.new("Frame")
	local RemoteSpyIcon = Instance.new("ImageLabel")
	local UpvalueScannerIcon = Instance.new("ImageLabel")
	local ScriptDumperIcon = Instance.new("ImageLabel")
	local PositionGrabberIcon = Instance.new("ImageLabel")
	local HttpSpyIcon = Instance.new("ImageLabel")
	local Discord = Instance.new("TextLabel")
	local Title_2 = Instance.new("TextLabel")
	local CloseKey = Instance.new("TextLabel")
	local PositionGrabber = Instance.new("Frame")
	local Title_3 = Instance.new("TextLabel")
	local CurrentPos = Instance.new("TextLabel")
	local CopyPosition = Instance.new("TextButton")
	local DecimalsLabel = Instance.new("TextLabel")
	local Decimals = Instance.new("TextLabel")
	local DecimalsUp = Instance.new("TextButton")
	local DecimalsDown = Instance.new("TextButton")
	
	ExoToolV3.Name = "ExoToolV3"
	ExoToolV3.Parent = CoreGui
	
	ScriptDumper.Name = "ScriptDumper"
	ScriptDumper.Parent = ExoToolV3
	ScriptDumper.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	ScriptDumper.BackgroundTransparency = 0.5
	ScriptDumper.BorderColor3 = Color3.new(0, 0, 0)
	ScriptDumper.Position = UDim2.new(0, 220, 0, 140)
	ScriptDumper.Size = UDim2.new(0, 200, 0, 280)
	ScriptDumper.Visible = false
	
	Title.Name = "Title"
	Title.Parent = ScriptDumper
	Title.BackgroundColor3 = Color3.new(1, 1, 1)
	Title.BackgroundTransparency = 1
	Title.Size = UDim2.new(1, 0, 0, 35)
	Title.Font = Enum.Font.SourceSansSemibold
	Title.Text = "Script Dumper"
	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.TextSize = 20
	
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
	
	FolderName.Name = "FolderName"
	FolderName.Parent = ScriptDumper
	FolderName.BackgroundColor3 = Color3.new(0, 0, 0)
	FolderName.BackgroundTransparency = 0.60000002384186
	FolderName.BorderColor3 = Color3.new(0, 0, 0)
	FolderName.Position = UDim2.new(0, 5, 1, -63)
	FolderName.Size = UDim2.new(1, -10, 0, 25)
	FolderName.Font = Enum.Font.SourceSans
	FolderName.PlaceholderColor3 = Color3.new(1, 1, 1)
	FolderName.PlaceholderText = "[ Folder Name ]"
	FolderName.Text = ""
	FolderName.TextColor3 = Color3.new(1, 1, 1)
	FolderName.TextSize = 16
	FolderName.TextStrokeTransparency = 0.60000002384186
	
	Selection.Name = "Selection"
	Selection.Parent = ExoToolV3
	Selection.BackgroundColor3 = Color3.new(1, 1, 1)
	Selection.BackgroundTransparency = 1
	Selection.BorderColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	Selection.Size = UDim2.new(0, 200, 1, 0)
	Selection.Image = "rbxassetid://4989806496"
	
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
	
	HttpSpyBtn.Name = "HttpSpyBtn"
	HttpSpyBtn.Parent = Buttons
	HttpSpyBtn.BackgroundColor3 = Color3.new(1, 1, 1)
	HttpSpyBtn.BackgroundTransparency = 1
	HttpSpyBtn.Position = UDim2.new(0, 0, 0, 180)
	HttpSpyBtn.Size = UDim2.new(1, 0, 0, 40)
	HttpSpyBtn.Font = Enum.Font.SourceSans
	HttpSpyBtn.Text = "Http Spy"
	HttpSpyBtn.TextColor3 = Color3.new(1, 1, 1)
	HttpSpyBtn.TextSize = 16
	
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
	
	HttpSpyIcon.Name = "HttpSpyIcon"
	HttpSpyIcon.Parent = Icons
	HttpSpyIcon.BackgroundColor3 = Color3.new(1, 1, 1)
	HttpSpyIcon.BackgroundTransparency = 1
	HttpSpyIcon.Position = UDim2.new(0, 0, 0, 180)
	HttpSpyIcon.Size = UDim2.new(0, 40, 0, 40)
	HttpSpyIcon.Image = "rbxassetid://4989851326"
	
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
	
	Title_2.Name = "Title"
	Title_2.Parent = Selection
	Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
	Title_2.BackgroundTransparency = 1
	Title_2.Size = UDim2.new(1, 0, 0, 50)
	Title_2.Font = Enum.Font.SourceSansBold
	Title_2.Text = "Exo Tool V3"
	Title_2.TextColor3 = Color3.new(1, 1, 1)
	Title_2.TextSize = 24
	
	CloseKey.Name = "CloseKey"
	CloseKey.Parent = Selection
	CloseKey.BackgroundColor3 = Color3.new(1, 1, 1)
	CloseKey.BackgroundTransparency = 1
	CloseKey.Position = UDim2.new(0, 0, 1, -70)
	CloseKey.Size = UDim2.new(1, 0, 0, 30)
	CloseKey.Font = Enum.Font.SourceSansSemibold
	CloseKey.Text = "Open/Close: RightAlt"
	CloseKey.TextColor3 = Color3.new(1, 1, 1)
	CloseKey.TextSize = 16
	
	PositionGrabber.Name = "PositionGrabber"
	PositionGrabber.Parent = ExoToolV3
	PositionGrabber.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	PositionGrabber.BackgroundTransparency = 0.5
	PositionGrabber.BorderColor3 = Color3.new(0, 0, 0)
	PositionGrabber.Position = UDim2.new(0, 220, 0, 195)
	PositionGrabber.Size = UDim2.new(0, 200, 0, 130)
	PositionGrabber.Visible = false
	
	Title_3.Name = "Title"
	Title_3.Parent = PositionGrabber
	Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
	Title_3.BackgroundTransparency = 1
	Title_3.Size = UDim2.new(1, 0, 0, 35)
	Title_3.Font = Enum.Font.SourceSansSemibold
	Title_3.Text = "Position Grabber"
	Title_3.TextColor3 = Color3.new(1, 1, 1)
	Title_3.TextSize = 20
	
	CurrentPos.Name = "CurrentPos"
	CurrentPos.Parent = PositionGrabber
	CurrentPos.BackgroundColor3 = Color3.new(1, 1, 1)
	CurrentPos.BackgroundTransparency = 1
	CurrentPos.Position = UDim2.new(0, 0, 0, 40)
	CurrentPos.Size = UDim2.new(1, 0, 0, 25)
	CurrentPos.Font = Enum.Font.SourceSans
	CurrentPos.Text = "0, 0, 0"
	CurrentPos.TextColor3 = Color3.new(1, 1, 1)
	CurrentPos.TextSize = 18
	
	CopyPosition.Name = "CopyPosition"
	CopyPosition.Parent = PositionGrabber
	CopyPosition.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	CopyPosition.BackgroundTransparency = 1
	CopyPosition.BorderColor3 = Color3.new(0, 0, 0)
	CopyPosition.Position = UDim2.new(0, 5, 1, -33)
	CopyPosition.Size = UDim2.new(1, -10, 0, 28)
	CopyPosition.Font = Enum.Font.SourceSansSemibold
	CopyPosition.Text = "Copy Position"
	CopyPosition.TextColor3 = Color3.new(1, 1, 1)
	CopyPosition.TextSize = 18
	
	DecimalsLabel.Name = "DecimalsLabel"
	DecimalsLabel.Parent = PositionGrabber
	DecimalsLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	DecimalsLabel.BackgroundTransparency = 1
	DecimalsLabel.Position = UDim2.new(0, 5, 0, 70)
	DecimalsLabel.Size = UDim2.new(0, 110, 0, 25)
	DecimalsLabel.Font = Enum.Font.SourceSans
	DecimalsLabel.Text = "Decimal Places:"
	DecimalsLabel.TextColor3 = Color3.new(1, 1, 1)
	DecimalsLabel.TextSize = 18
	
	Decimals.Name = "Decimals"
	Decimals.Parent = PositionGrabber
	Decimals.BackgroundColor3 = Color3.new(1, 1, 1)
	Decimals.BackgroundTransparency = 1
	Decimals.Position = UDim2.new(0, 115, 0, 70)
	Decimals.Size = UDim2.new(0, 25, 0, 25)
	Decimals.Font = Enum.Font.SourceSans
	Decimals.Text = "0"
	Decimals.TextColor3 = Color3.new(1, 1, 1)
	Decimals.TextSize = 18
	
	DecimalsUp.Name = "DecimalsUp"
	DecimalsUp.Parent = PositionGrabber
	DecimalsUp.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	DecimalsUp.BackgroundTransparency = 1
	DecimalsUp.BorderColor3 = Color3.new(0, 0, 0)
	DecimalsUp.Position = UDim2.new(0, 140, 0, 70)
	DecimalsUp.Rotation = 180
	DecimalsUp.Size = UDim2.new(0, 25, 0, 25)
	DecimalsUp.Font = Enum.Font.SourceSansSemibold
	DecimalsUp.Text = "V"
	DecimalsUp.TextColor3 = Color3.new(1, 1, 1)
	DecimalsUp.TextSize = 18
	
	DecimalsDown.Name = "DecimalsDown"
	DecimalsDown.Parent = PositionGrabber
	DecimalsDown.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	DecimalsDown.BackgroundTransparency = 1
	DecimalsDown.BorderColor3 = Color3.new(0, 0, 0)
	DecimalsDown.Position = UDim2.new(0, 165, 0, 70)
	DecimalsDown.Size = UDim2.new(0, 25, 0, 25)
	DecimalsDown.Font = Enum.Font.SourceSansSemibold
	DecimalsDown.Text = "V"
	DecimalsDown.TextColor3 = Color3.new(1, 1, 1)
	DecimalsDown.TextSize = 18
	
	local tabs = {
		[ScriptDumperBtn] = ScriptDumper,
		[PositionGrabberBtn] = PositionGrabber
	}
	
	for a, b in pairs(tabs) do
		a.MouseButton1Click:Connect(function()
			for c, d in pairs(tabs) do
				if b ~= d then
					d.Visible = false
				end
			end
			b.Visible = not b.Visible
		end)
	end
	
	-- Script Dumper
	
	local dumpbtns = {
		Workspace,
		ReplicatedFirst,
		ReplicatedStorage,
		StarterPlayer,
		LocalPlayer,
		Nil
	}
	
	for i, v in pairs(dumpbtns) do
		v.MouseButton1Click:Connect(function()
			scriptdumpersettings[v.Name] = not scriptdumpersettings[v.Name]
			v.BackgroundColor3 = scriptdumpersettings[v.Name] and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
		end)
	end
	
	Dump.MouseButton1Click:Connect(function()
		local name = FolderName.Text ~= "" and FolderName.Text or gamename
		dumper.dump(scriptdumpersettings, name)
	end)
	
	-- Position Grabber
	
	local function round(int, places)
		return math.floor(int * 10 ^ places) / 10 ^ places
	end
	
	DecimalsUp.MouseButton1Click:Connect(function()
		Decimals.Text = tostring(tonumber(Decimals.Text) + 1)
	end)
	
	DecimalsDown.MouseButton1Click:Connect(function()
		if tonumber(Decimals.Text) > 0 then
			Decimals.Text = tostring(tonumber(Decimals.Text) - 1)
		end
	end)
	
	coroutine.wrap(function()
		while wait() do
			if Plr.Character then
				local pos = Plr.Character.HumanoidRootPart.Position
				local places = tonumber(Decimals.Text)
				CurrentPos.Text = round(pos.X, places) .. ", " .. round(pos.Y, places) .. ", " .. round(pos.Z, places)
			end
		end
	end)
	
	CopyPosition.MouseButton1Click:Connect(function()
		setclipboard(CurrentPos.Text)
	end)
end

ui.gui = CoreGui:WaitForChild("ExoToolV3")

return ui
