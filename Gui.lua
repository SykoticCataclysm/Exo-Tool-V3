local ui = {}

if not game:GetService("CoreGui"):FindFirstChild("ExoToolV3") then
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
	
	gettype = function(Instance)
		local Types = {
			EnumItem = function()
				return "Enum." .. tostring(Instance.EnumType) .. "." .. tostring(Instance.Name)
			end,
			Instance = function()
				return Instance:GetFullName()
			end,
			CFrame = function()
				return "CFrame.new(" .. tostring(Instance) .. ")"
			end,
			Vector3 = function()
				return "Vector3.new(" .. tostring(Instance) .. ")"
			end,
			BrickColor = function()
				return "BrickColor.new(\"" .. tostring(Instance) .. "\")"
			end,
			Color3 = function()
				return "Color3.new(" .. tostring(Instance) .. ")"
			end,
			string = function()
				local S = tostring(Instance)
				return "'" .. (S) .. "'"
			end,
			Ray = function()
				return "Ray.new(Vector3.new(" .. tostring(Instance.Origin) .. "), Vector3.new(" .. tostring(Instance.Direction) .. "))"
			end,
			table = function()
				local Str = "{ "
				for i, v in pairs(Instance) do
					Str = Str .. "[" .. gettype(i) .. "] = " .. gettype(v) .. ", "
				end
				return string.sub(Str, 1, string.len(Str) - 2) .. " }"
			end
		}
	
		return Types[typeof(Instance)] ~= nil and Types[typeof(Instance)]() or tostring(Instance)
	end
	
	local ExoToolV3 = Instance.new("ScreenGui")
	local ScriptDumper = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
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
	local BorderLine = Instance.new("TextLabel")
	local Discord = Instance.new("TextLabel")
	local Title_2 = Instance.new("TextLabel")
	local RemoteSpy = Instance.new("Frame")
	local Title_3 = Instance.new("TextLabel")
	local BorderBottom_3 = Instance.new("TextLabel")
	local BorderRight_3 = Instance.new("TextLabel")
	local BorderTop_3 = Instance.new("TextLabel")
	local BorderLeft_3 = Instance.new("TextLabel")
	local Events = Instance.new("ScrollingFrame")
	local Template = Instance.new("Frame")
	local Icon = Instance.new("ImageLabel")
	local RemoteName = Instance.new("TextLabel")
	local Count = Instance.new("TextLabel")
	local OpenCalls = Instance.new("TextButton")
	local Enabled = Instance.new("TextButton")
	local Calls = Instance.new("Frame")
	local BorderBottom_4 = Instance.new("TextLabel")
	local BorderLeft_4 = Instance.new("TextLabel")
	local BorderRight_4 = Instance.new("TextLabel")
	local BorderTop_4 = Instance.new("TextLabel")
	local List = Instance.new("ScrollingFrame")
	local Template_2 = Instance.new("Frame")
	local OpenSettings = Instance.new("ImageButton")
	local Argument = Instance.new("TextLabel")
	local BorderBottom_5 = Instance.new("TextLabel")
	local RemoteName_2 = Instance.new("TextLabel")
	local Settings_2 = Instance.new("Frame")
	local BorderBottom_6 = Instance.new("TextLabel")
	local BorderLeft_5 = Instance.new("TextLabel")
	local BorderRight_5 = Instance.new("TextLabel")
	local BorderTop_5 = Instance.new("TextLabel")
	local GenerateScript = Instance.new("TextButton")
	local GetCallingScript = Instance.new("TextButton")
	local RepeatCall = Instance.new("TextButton")
	
	ExoToolV3.Name = "ExoToolV3"
	ExoToolV3.Parent = game:GetService("CoreGui")
	
	ScriptDumper.Name = "ScriptDumper"
	ScriptDumper.Parent = ExoToolV3
	ScriptDumper.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	ScriptDumper.BackgroundTransparency = 0.500
	ScriptDumper.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScriptDumper.BorderSizePixel = 0
	ScriptDumper.Position = UDim2.new(0, 220, 0, 140)
	ScriptDumper.Size = UDim2.new(0, 200, 0, 280)
	ScriptDumper.Visible = false
	
	Title.Name = "Title"
	Title.Parent = ScriptDumper
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Size = UDim2.new(1, 0, 0, 35)
	Title.Font = Enum.Font.SourceSansSemibold
	Title.Text = "Script Dumper"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 20.000
	
	Dump.Name = "Dump"
	Dump.Parent = ScriptDumper
	Dump.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Dump.BackgroundTransparency = 1.000
	Dump.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Dump.Position = UDim2.new(0, 5, 1, -33)
	Dump.Size = UDim2.new(1, -10, 0, 28)
	Dump.Font = Enum.Font.SourceSansSemibold
	Dump.Text = "Dump Scripts"
	Dump.TextColor3 = Color3.fromRGB(255, 255, 255)
	Dump.TextSize = 18.000
	
	BorderTop.Name = "BorderTop"
	BorderTop.Parent = Dump
	BorderTop.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderTop.BorderSizePixel = 0
	BorderTop.Position = UDim2.new(0, -1, 0, -1)
	BorderTop.Size = UDim2.new(1, 1, 0, 1)
	BorderTop.Font = Enum.Font.SourceSans
	BorderTop.Text = ""
	BorderTop.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderTop.TextSize = 14.000
	
	BorderRight.Name = "BorderRight"
	BorderRight.Parent = Dump
	BorderRight.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderRight.BorderSizePixel = 0
	BorderRight.Position = UDim2.new(1, 0, 0, -1)
	BorderRight.Size = UDim2.new(0, 1, 1, 1)
	BorderRight.Font = Enum.Font.SourceSans
	BorderRight.Text = ""
	BorderRight.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderRight.TextSize = 14.000
	
	BorderLeft.Name = "BorderLeft"
	BorderLeft.Parent = Dump
	BorderLeft.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderLeft.BorderSizePixel = 0
	BorderLeft.Position = UDim2.new(0, -1, 0, 0)
	BorderLeft.Size = UDim2.new(0, 1, 1, 1)
	BorderLeft.Font = Enum.Font.SourceSans
	BorderLeft.Text = ""
	BorderLeft.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderLeft.TextSize = 14.000
	
	BorderBottom.Name = "BorderBottom"
	BorderBottom.Parent = Dump
	BorderBottom.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderBottom.BorderSizePixel = 0
	BorderBottom.Position = UDim2.new(0, 0, 1, 0)
	BorderBottom.Size = UDim2.new(1, 1, 0, 1)
	BorderBottom.Font = Enum.Font.SourceSans
	BorderBottom.Text = ""
	BorderBottom.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderBottom.TextSize = 14.000
	
	Settings.Name = "Settings"
	Settings.Parent = ScriptDumper
	Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Settings.BackgroundTransparency = 1.000
	Settings.Position = UDim2.new(0, 5, 0, 35)
	Settings.Size = UDim2.new(1, -10, 1, -104)
	
	Workspace.Name = "Workspace"
	Workspace.Parent = Settings
	Workspace.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	Workspace.BackgroundTransparency = 0.500
	Workspace.BorderColor3 = Color3.fromRGB(20, 20, 20)
	Workspace.Position = UDim2.new(1, -25, 0, 0)
	Workspace.Size = UDim2.new(0, 25, 0, 25)
	Workspace.Font = Enum.Font.SourceSans
	Workspace.Text = ""
	Workspace.TextColor3 = Color3.fromRGB(0, 0, 0)
	Workspace.TextSize = 14.000
	
	Label.Name = "Label"
	Label.Parent = Workspace
	Label.AnchorPoint = Vector2.new(1, 0)
	Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label.BackgroundTransparency = 1.000
	Label.Position = UDim2.new(0, -5, 0, 0)
	Label.Size = UDim2.new(0, 160, 0, 25)
	Label.Font = Enum.Font.SourceSans
	Label.Text = "Workspace"
	Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label.TextSize = 18.000
	Label.TextXAlignment = Enum.TextXAlignment.Left
	
	ReplicatedFirst.Name = "ReplicatedFirst"
	ReplicatedFirst.Parent = Settings
	ReplicatedFirst.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	ReplicatedFirst.BackgroundTransparency = 0.500
	ReplicatedFirst.BorderColor3 = Color3.fromRGB(20, 20, 20)
	ReplicatedFirst.Position = UDim2.new(1, -25, 0, 30)
	ReplicatedFirst.Size = UDim2.new(0, 25, 0, 25)
	ReplicatedFirst.Font = Enum.Font.SourceSans
	ReplicatedFirst.Text = ""
	ReplicatedFirst.TextColor3 = Color3.fromRGB(0, 0, 0)
	ReplicatedFirst.TextSize = 14.000
	
	Label_2.Name = "Label"
	Label_2.Parent = ReplicatedFirst
	Label_2.AnchorPoint = Vector2.new(1, 0)
	Label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label_2.BackgroundTransparency = 1.000
	Label_2.Position = UDim2.new(0, -5, 0, 0)
	Label_2.Size = UDim2.new(0, 160, 0, 25)
	Label_2.Font = Enum.Font.SourceSans
	Label_2.Text = "ReplicatedFirst"
	Label_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label_2.TextSize = 18.000
	Label_2.TextXAlignment = Enum.TextXAlignment.Left
	
	ReplicatedStorage.Name = "ReplicatedStorage"
	ReplicatedStorage.Parent = Settings
	ReplicatedStorage.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	ReplicatedStorage.BackgroundTransparency = 0.500
	ReplicatedStorage.BorderColor3 = Color3.fromRGB(20, 20, 20)
	ReplicatedStorage.Position = UDim2.new(1, -25, 0, 60)
	ReplicatedStorage.Size = UDim2.new(0, 25, 0, 25)
	ReplicatedStorage.Font = Enum.Font.SourceSans
	ReplicatedStorage.Text = ""
	ReplicatedStorage.TextColor3 = Color3.fromRGB(0, 0, 0)
	ReplicatedStorage.TextSize = 14.000
	
	Label_3.Name = "Label"
	Label_3.Parent = ReplicatedStorage
	Label_3.AnchorPoint = Vector2.new(1, 0)
	Label_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label_3.BackgroundTransparency = 1.000
	Label_3.Position = UDim2.new(0, -5, 0, 0)
	Label_3.Size = UDim2.new(0, 160, 0, 25)
	Label_3.Font = Enum.Font.SourceSans
	Label_3.Text = "ReplicatedStorage"
	Label_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label_3.TextSize = 18.000
	Label_3.TextXAlignment = Enum.TextXAlignment.Left
	
	StarterPlayer.Name = "StarterPlayer"
	StarterPlayer.Parent = Settings
	StarterPlayer.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	StarterPlayer.BackgroundTransparency = 0.500
	StarterPlayer.BorderColor3 = Color3.fromRGB(20, 20, 20)
	StarterPlayer.Position = UDim2.new(1, -25, 0, 90)
	StarterPlayer.Size = UDim2.new(0, 25, 0, 25)
	StarterPlayer.Font = Enum.Font.SourceSans
	StarterPlayer.Text = ""
	StarterPlayer.TextColor3 = Color3.fromRGB(0, 0, 0)
	StarterPlayer.TextSize = 14.000
	
	Label_4.Name = "Label"
	Label_4.Parent = StarterPlayer
	Label_4.AnchorPoint = Vector2.new(1, 0)
	Label_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label_4.BackgroundTransparency = 1.000
	Label_4.Position = UDim2.new(0, -5, 0, 0)
	Label_4.Size = UDim2.new(0, 160, 0, 25)
	Label_4.Font = Enum.Font.SourceSans
	Label_4.Text = "StarterPlayer"
	Label_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label_4.TextSize = 18.000
	Label_4.TextXAlignment = Enum.TextXAlignment.Left
	
	Nil.Name = "Nil"
	Nil.Parent = Settings
	Nil.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	Nil.BackgroundTransparency = 0.500
	Nil.BorderColor3 = Color3.fromRGB(20, 20, 20)
	Nil.Position = UDim2.new(1, -25, 0, 150)
	Nil.Size = UDim2.new(0, 25, 0, 25)
	Nil.Font = Enum.Font.SourceSans
	Nil.Text = ""
	Nil.TextColor3 = Color3.fromRGB(0, 0, 0)
	Nil.TextSize = 14.000
	
	Label_5.Name = "Label"
	Label_5.Parent = Nil
	Label_5.AnchorPoint = Vector2.new(1, 0)
	Label_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label_5.BackgroundTransparency = 1.000
	Label_5.Position = UDim2.new(0, -5, 0, 0)
	Label_5.Size = UDim2.new(0, 160, 0, 25)
	Label_5.Font = Enum.Font.SourceSans
	Label_5.Text = "Nil Instances"
	Label_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label_5.TextSize = 18.000
	Label_5.TextXAlignment = Enum.TextXAlignment.Left
	
	LocalPlayer.Name = "LocalPlayer"
	LocalPlayer.Parent = Settings
	LocalPlayer.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	LocalPlayer.BackgroundTransparency = 0.500
	LocalPlayer.BorderColor3 = Color3.fromRGB(20, 20, 20)
	LocalPlayer.Position = UDim2.new(1, -25, 0, 120)
	LocalPlayer.Size = UDim2.new(0, 25, 0, 25)
	LocalPlayer.Font = Enum.Font.SourceSans
	LocalPlayer.Text = ""
	LocalPlayer.TextColor3 = Color3.fromRGB(0, 0, 0)
	LocalPlayer.TextSize = 14.000
	
	Label_6.Name = "Label"
	Label_6.Parent = LocalPlayer
	Label_6.AnchorPoint = Vector2.new(1, 0)
	Label_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label_6.BackgroundTransparency = 1.000
	Label_6.Position = UDim2.new(0, -5, 0, 0)
	Label_6.Size = UDim2.new(0, 160, 0, 25)
	Label_6.Font = Enum.Font.SourceSans
	Label_6.Text = "LocalPlayer"
	Label_6.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label_6.TextSize = 18.000
	Label_6.TextXAlignment = Enum.TextXAlignment.Left
	
	BorderBottom_2.Name = "BorderBottom"
	BorderBottom_2.Parent = ScriptDumper
	BorderBottom_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderBottom_2.BorderSizePixel = 0
	BorderBottom_2.Position = UDim2.new(0, 0, 1, 0)
	BorderBottom_2.Size = UDim2.new(1, 1, 0, 1)
	BorderBottom_2.Font = Enum.Font.SourceSans
	BorderBottom_2.Text = ""
	BorderBottom_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderBottom_2.TextSize = 14.000
	
	BorderRight_2.Name = "BorderRight"
	BorderRight_2.Parent = ScriptDumper
	BorderRight_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderRight_2.BorderSizePixel = 0
	BorderRight_2.Position = UDim2.new(1, 0, 0, -1)
	BorderRight_2.Size = UDim2.new(0, 1, 1, 1)
	BorderRight_2.Font = Enum.Font.SourceSans
	BorderRight_2.Text = ""
	BorderRight_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderRight_2.TextSize = 14.000
	
	BorderTop_2.Name = "BorderTop"
	BorderTop_2.Parent = ScriptDumper
	BorderTop_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderTop_2.BorderSizePixel = 0
	BorderTop_2.Position = UDim2.new(0, -1, 0, -1)
	BorderTop_2.Size = UDim2.new(1, 1, 0, 1)
	BorderTop_2.Font = Enum.Font.SourceSans
	BorderTop_2.Text = ""
	BorderTop_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderTop_2.TextSize = 14.000
	
	BorderLeft_2.Name = "BorderLeft"
	BorderLeft_2.Parent = ScriptDumper
	BorderLeft_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderLeft_2.BorderSizePixel = 0
	BorderLeft_2.Position = UDim2.new(0, -1, 0, 0)
	BorderLeft_2.Size = UDim2.new(0, 1, 1, 1)
	BorderLeft_2.Font = Enum.Font.SourceSans
	BorderLeft_2.Text = ""
	BorderLeft_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderLeft_2.TextSize = 14.000
	
	FolderName.Name = "FolderName"
	FolderName.Parent = ScriptDumper
	FolderName.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	FolderName.BackgroundTransparency = 0.600
	FolderName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FolderName.Position = UDim2.new(0, 5, 1, -63)
	FolderName.Size = UDim2.new(1, -10, 0, 25)
	FolderName.Font = Enum.Font.SourceSans
	FolderName.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
	FolderName.PlaceholderText = "[ Folder Name ]"
	FolderName.Text = ""
	FolderName.TextColor3 = Color3.fromRGB(255, 255, 255)
	FolderName.TextSize = 16.000
	FolderName.TextStrokeTransparency = 0.600
	
	Selection.Name = "Selection"
	Selection.Parent = ExoToolV3
	Selection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Selection.BackgroundTransparency = 1.000
	Selection.Size = UDim2.new(0, 200, 1, 0)
	Selection.Image = "rbxassetid://4989806496"
	
	Buttons.Name = "Buttons"
	Buttons.Parent = Selection
	Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Buttons.BackgroundTransparency = 1.000
	Buttons.Position = UDim2.new(0, 50, 0, 50)
	Buttons.Size = UDim2.new(0, 145, 1, -90)
	
	UpvalueScannerBtn.Name = "UpvalueScannerBtn"
	UpvalueScannerBtn.Parent = Buttons
	UpvalueScannerBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UpvalueScannerBtn.BackgroundTransparency = 1.000
	UpvalueScannerBtn.Position = UDim2.new(0, 0, 0, 45)
	UpvalueScannerBtn.Size = UDim2.new(1, 0, 0, 40)
	UpvalueScannerBtn.Font = Enum.Font.SourceSans
	UpvalueScannerBtn.Text = "Upvalue Scanner"
	UpvalueScannerBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	UpvalueScannerBtn.TextSize = 16.000
	
	ScriptDumperBtn.Name = "ScriptDumperBtn"
	ScriptDumperBtn.Parent = Buttons
	ScriptDumperBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScriptDumperBtn.BackgroundTransparency = 1.000
	ScriptDumperBtn.Position = UDim2.new(0, 0, 0, 90)
	ScriptDumperBtn.Size = UDim2.new(1, 0, 0, 40)
	ScriptDumperBtn.Font = Enum.Font.SourceSans
	ScriptDumperBtn.Text = "Script Dumper"
	ScriptDumperBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	ScriptDumperBtn.TextSize = 16.000
	
	PositionGrabberBtn.Name = "PositionGrabberBtn"
	PositionGrabberBtn.Parent = Buttons
	PositionGrabberBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PositionGrabberBtn.BackgroundTransparency = 1.000
	PositionGrabberBtn.Position = UDim2.new(0, 0, 0, 135)
	PositionGrabberBtn.Size = UDim2.new(1, 0, 0, 40)
	PositionGrabberBtn.Font = Enum.Font.SourceSans
	PositionGrabberBtn.Text = "Position Grabber"
	PositionGrabberBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	PositionGrabberBtn.TextSize = 16.000
	
	RemoteSpyBtn.Name = "RemoteSpyBtn"
	RemoteSpyBtn.Parent = Buttons
	RemoteSpyBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RemoteSpyBtn.BackgroundTransparency = 1.000
	RemoteSpyBtn.Size = UDim2.new(1, 0, 0, 40)
	RemoteSpyBtn.Font = Enum.Font.SourceSans
	RemoteSpyBtn.Text = "Remote Spy"
	RemoteSpyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	RemoteSpyBtn.TextSize = 16.000
	
	HttpSpyBtn.Name = "HttpSpyBtn"
	HttpSpyBtn.Parent = Buttons
	HttpSpyBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HttpSpyBtn.BackgroundTransparency = 1.000
	HttpSpyBtn.Position = UDim2.new(0, 0, 0, 180)
	HttpSpyBtn.Size = UDim2.new(1, 0, 0, 40)
	HttpSpyBtn.Font = Enum.Font.SourceSans
	HttpSpyBtn.Text = "Http Spy"
	HttpSpyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	HttpSpyBtn.TextSize = 16.000
	
	Icons.Name = "Icons"
	Icons.Parent = Selection
	Icons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icons.BackgroundTransparency = 1.000
	Icons.Position = UDim2.new(0, 5, 0, 50)
	Icons.Size = UDim2.new(0, 40, 1, -90)
	
	RemoteSpyIcon.Name = "RemoteSpyIcon"
	RemoteSpyIcon.Parent = Icons
	RemoteSpyIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RemoteSpyIcon.BackgroundTransparency = 1.000
	RemoteSpyIcon.Size = UDim2.new(0, 40, 0, 40)
	RemoteSpyIcon.Image = "rbxassetid://4988303809"
	
	UpvalueScannerIcon.Name = "UpvalueScannerIcon"
	UpvalueScannerIcon.Parent = Icons
	UpvalueScannerIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UpvalueScannerIcon.BackgroundTransparency = 1.000
	UpvalueScannerIcon.Position = UDim2.new(0, 0, 0, 45)
	UpvalueScannerIcon.Size = UDim2.new(0, 40, 0, 40)
	UpvalueScannerIcon.Image = "rbxassetid://4988280805"
	
	ScriptDumperIcon.Name = "ScriptDumperIcon"
	ScriptDumperIcon.Parent = Icons
	ScriptDumperIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScriptDumperIcon.BackgroundTransparency = 1.000
	ScriptDumperIcon.Position = UDim2.new(0, 0, 0, 90)
	ScriptDumperIcon.Size = UDim2.new(0, 40, 0, 40)
	ScriptDumperIcon.Image = "rbxassetid://4988251975"
	ScriptDumperIcon.ImageColor3 = Color3.fromRGB(0, 0, 0)
	
	PositionGrabberIcon.Name = "PositionGrabberIcon"
	PositionGrabberIcon.Parent = Icons
	PositionGrabberIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PositionGrabberIcon.BackgroundTransparency = 1.000
	PositionGrabberIcon.Position = UDim2.new(0, 0, 0, 135)
	PositionGrabberIcon.Size = UDim2.new(0, 40, 0, 40)
	PositionGrabberIcon.Image = "rbxassetid://4988252064"
	
	HttpSpyIcon.Name = "HttpSpyIcon"
	HttpSpyIcon.Parent = Icons
	HttpSpyIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HttpSpyIcon.BackgroundTransparency = 1.000
	HttpSpyIcon.Position = UDim2.new(0, 0, 0, 180)
	HttpSpyIcon.Size = UDim2.new(0, 40, 0, 40)
	HttpSpyIcon.Image = "rbxassetid://4989851326"
	
	BorderLine.Name = "BorderLine"
	BorderLine.Parent = Selection
	BorderLine.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderLine.BorderColor3 = Color3.fromRGB(27, 42, 53)
	BorderLine.BorderSizePixel = 0
	BorderLine.Position = UDim2.new(1, 0, 0, 0)
	BorderLine.Size = UDim2.new(0, 1, 1, 0)
	BorderLine.Font = Enum.Font.SourceSans
	BorderLine.Text = ""
	BorderLine.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderLine.TextSize = 14.000
	
	Discord.Name = "Discord"
	Discord.Parent = Selection
	Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Discord.BackgroundTransparency = 1.000
	Discord.Position = UDim2.new(0, 0, 1, -40)
	Discord.Size = UDim2.new(1, 0, 0, 40)
	Discord.Font = Enum.Font.SourceSansSemibold
	Discord.Text = "discord.me/sykoscripting"
	Discord.TextColor3 = Color3.fromRGB(255, 255, 255)
	Discord.TextSize = 18.000
	
	Title_2.Name = "Title"
	Title_2.Parent = Selection
	Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.BackgroundTransparency = 1.000
	Title_2.Size = UDim2.new(1, 0, 0, 50)
	Title_2.Font = Enum.Font.SourceSansBold
	Title_2.Text = "Exo Tool V3"
	Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.TextSize = 24.000
	
	RemoteSpy.Name = "RemoteSpy"
	RemoteSpy.Parent = ExoToolV3
	RemoteSpy.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	RemoteSpy.BackgroundTransparency = 0.500
	RemoteSpy.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RemoteSpy.BorderSizePixel = 0
	RemoteSpy.Position = UDim2.new(0, 220, 0, 50)
	RemoteSpy.Size = UDim2.new(0, 350, 0, 280)
	RemoteSpy.Visible = false
	
	Title_3.Name = "Title"
	Title_3.Parent = RemoteSpy
	Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_3.BackgroundTransparency = 1.000
	Title_3.Size = UDim2.new(1, 0, 0, 35)
	Title_3.Font = Enum.Font.SourceSansSemibold
	Title_3.Text = "Remote Spy"
	Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_3.TextSize = 20.000
	
	BorderBottom_3.Name = "BorderBottom"
	BorderBottom_3.Parent = RemoteSpy
	BorderBottom_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderBottom_3.BorderSizePixel = 0
	BorderBottom_3.Position = UDim2.new(0, 0, 1, 0)
	BorderBottom_3.Size = UDim2.new(1, 1, 0, 1)
	BorderBottom_3.Font = Enum.Font.SourceSans
	BorderBottom_3.Text = ""
	BorderBottom_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderBottom_3.TextSize = 14.000
	
	BorderRight_3.Name = "BorderRight"
	BorderRight_3.Parent = RemoteSpy
	BorderRight_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderRight_3.BorderSizePixel = 0
	BorderRight_3.Position = UDim2.new(1, 0, 0, -1)
	BorderRight_3.Size = UDim2.new(0, 1, 1, 1)
	BorderRight_3.Font = Enum.Font.SourceSans
	BorderRight_3.Text = ""
	BorderRight_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderRight_3.TextSize = 14.000
	
	BorderTop_3.Name = "BorderTop"
	BorderTop_3.Parent = RemoteSpy
	BorderTop_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderTop_3.BorderSizePixel = 0
	BorderTop_3.Position = UDim2.new(0, -1, 0, -1)
	BorderTop_3.Size = UDim2.new(1, 1, 0, 1)
	BorderTop_3.Font = Enum.Font.SourceSans
	BorderTop_3.Text = ""
	BorderTop_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderTop_3.TextSize = 14.000
	
	BorderLeft_3.Name = "BorderLeft"
	BorderLeft_3.Parent = RemoteSpy
	BorderLeft_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderLeft_3.BorderSizePixel = 0
	BorderLeft_3.Position = UDim2.new(0, -1, 0, 0)
	BorderLeft_3.Size = UDim2.new(0, 1, 1, 1)
	BorderLeft_3.Font = Enum.Font.SourceSans
	BorderLeft_3.Text = ""
	BorderLeft_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderLeft_3.TextSize = 14.000
	
	Events.Name = "Events"
	Events.Parent = RemoteSpy
	Events.Active = true
	Events.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Events.BackgroundTransparency = 1.000
	Events.BorderSizePixel = 0
	Events.Position = UDim2.new(0, 0, 0, 35)
	Events.Size = UDim2.new(0, 350, 0, 245)
	Events.ScrollBarThickness = 5
	
	Template.Name = "Template"
	Template.Parent = Events
	Template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Template.BackgroundTransparency = 1.000
	Template.Size = UDim2.new(0, 345, 0, 30)
	Template.Visible = false
	
	Icon.Name = "Icon"
	Icon.Parent = Template
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(20, 20, 20)
	Icon.Size = UDim2.new(0, 30, 0, 30)
	Icon.Image = "rbxassetid://4229806545"
	
	RemoteName.Name = "RemoteName"
	RemoteName.Parent = Template
	RemoteName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RemoteName.BackgroundTransparency = 1.000
	RemoteName.Position = UDim2.new(0, 35, 0, 0)
	RemoteName.Size = UDim2.new(0, 245, 0, 30)
	RemoteName.Font = Enum.Font.SourceSansSemibold
	RemoteName.Text = "Name"
	RemoteName.TextColor3 = Color3.fromRGB(255, 255, 255)
	RemoteName.TextSize = 18.000
	RemoteName.TextXAlignment = Enum.TextXAlignment.Left
	
	Count.Name = "Count"
	Count.Parent = Template
	Count.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Count.BackgroundTransparency = 1.000
	Count.Position = UDim2.new(0, 35, 0, 0)
	Count.Size = UDim2.new(0, 245, 0, 30)
	Count.Font = Enum.Font.SourceSansSemibold
	Count.Text = "0"
	Count.TextColor3 = Color3.fromRGB(255, 255, 255)
	Count.TextSize = 18.000
	Count.TextXAlignment = Enum.TextXAlignment.Right
	
	OpenCalls.Name = "OpenCalls"
	OpenCalls.Parent = Template
	OpenCalls.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	OpenCalls.BackgroundTransparency = 1.000
	OpenCalls.BorderColor3 = Color3.fromRGB(20, 20, 20)
	OpenCalls.Position = UDim2.new(0, 285, 0, 2)
	OpenCalls.Size = UDim2.new(0, 26, 0, 26)
	OpenCalls.Font = Enum.Font.SourceSans
	OpenCalls.Text = "..."
	OpenCalls.TextColor3 = Color3.fromRGB(255, 255, 255)
	OpenCalls.TextSize = 28.000
	OpenCalls.TextWrapped = true
	
	Enabled.Name = "Enabled"
	Enabled.Parent = Template
	Enabled.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	Enabled.BackgroundTransparency = 0.500
	Enabled.BorderColor3 = Color3.fromRGB(20, 20, 20)
	Enabled.Position = UDim2.new(0, 315, 0, 2)
	Enabled.Size = UDim2.new(0, 26, 0, 26)
	Enabled.Font = Enum.Font.SourceSans
	Enabled.Text = ""
	Enabled.TextColor3 = Color3.fromRGB(0, 0, 0)
	Enabled.TextSize = 14.000
	
	Calls.Name = "Calls"
	Calls.Parent = RemoteSpy
	Calls.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Calls.BackgroundTransparency = 0.500
	Calls.Position = UDim2.new(1, 10, 0, 0)
	Calls.Size = UDim2.new(0, 250, 0, 280)
	Calls.Visible = false
	
	BorderBottom_4.Name = "BorderBottom"
	BorderBottom_4.Parent = Calls
	BorderBottom_4.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderBottom_4.BorderSizePixel = 0
	BorderBottom_4.Position = UDim2.new(0, 0, 1, 0)
	BorderBottom_4.Size = UDim2.new(1, 1, 0, 1)
	BorderBottom_4.Font = Enum.Font.SourceSans
	BorderBottom_4.Text = ""
	BorderBottom_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderBottom_4.TextSize = 14.000
	
	BorderLeft_4.Name = "BorderLeft"
	BorderLeft_4.Parent = Calls
	BorderLeft_4.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderLeft_4.BorderSizePixel = 0
	BorderLeft_4.Position = UDim2.new(0, -1, 0, 0)
	BorderLeft_4.Size = UDim2.new(0, 1, 1, 1)
	BorderLeft_4.Font = Enum.Font.SourceSans
	BorderLeft_4.Text = ""
	BorderLeft_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderLeft_4.TextSize = 14.000
	
	BorderRight_4.Name = "BorderRight"
	BorderRight_4.Parent = Calls
	BorderRight_4.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderRight_4.BorderSizePixel = 0
	BorderRight_4.Position = UDim2.new(1, 0, 0, -1)
	BorderRight_4.Size = UDim2.new(0, 1, 1, 1)
	BorderRight_4.Font = Enum.Font.SourceSans
	BorderRight_4.Text = ""
	BorderRight_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderRight_4.TextSize = 14.000
	
	BorderTop_4.Name = "BorderTop"
	BorderTop_4.Parent = Calls
	BorderTop_4.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderTop_4.BorderSizePixel = 0
	BorderTop_4.Position = UDim2.new(0, -1, 0, -1)
	BorderTop_4.Size = UDim2.new(1, 1, 0, 1)
	BorderTop_4.Font = Enum.Font.SourceSans
	BorderTop_4.Text = ""
	BorderTop_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderTop_4.TextSize = 14.000
	
	List.Name = "List"
	List.Parent = Calls
	List.Active = true
	List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	List.BackgroundTransparency = 1.000
	List.BorderSizePixel = 0
	List.Position = UDim2.new(0, 0, 0, 30)
	List.Size = UDim2.new(0, 250, 0, 250)
	List.ScrollBarThickness = 5
	
	Template_2.Name = "Template"
	Template_2.Parent = List
	Template_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Template_2.BackgroundTransparency = 1.000
	Template_2.Size = UDim2.new(0, 245, 0, 30)
	Template_2.Visible = false
	
	OpenSettings.Name = "OpenSettings"
	OpenSettings.Parent = Template_2
	OpenSettings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	OpenSettings.BackgroundTransparency = 1.000
	OpenSettings.Position = UDim2.new(0, 215, 0, 2)
	OpenSettings.Size = UDim2.new(0, 26, 0, 26)
	OpenSettings.Image = "rbxassetid://4994268268"
	
	Argument.Name = "Argument"
	Argument.Parent = Template_2
	Argument.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Argument.BackgroundTransparency = 1.000
	Argument.Position = UDim2.new(0, 5, 0, 0)
	Argument.Size = UDim2.new(0, 210, 0, 30)
	Argument.Font = Enum.Font.SourceSansSemibold
	Argument.Text = "1: Argument"
	Argument.TextColor3 = Color3.fromRGB(255, 255, 255)
	Argument.TextSize = 18.000
	Argument.TextXAlignment = Enum.TextXAlignment.Left
	
	BorderBottom_5.Name = "BorderBottom"
	BorderBottom_5.Parent = Template_2
	BorderBottom_5.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderBottom_5.BorderSizePixel = 0
	BorderBottom_5.Position = UDim2.new(0, 0, 1, 0)
	BorderBottom_5.Size = UDim2.new(1, 1, 0, 1)
	BorderBottom_5.Font = Enum.Font.SourceSans
	BorderBottom_5.Text = ""
	BorderBottom_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderBottom_5.TextSize = 14.000
	
	RemoteName_2.Name = "RemoteName"
	RemoteName_2.Parent = Calls
	RemoteName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RemoteName_2.BackgroundTransparency = 1.000
	RemoteName_2.Size = UDim2.new(1, 0, 0, 30)
	RemoteName_2.Font = Enum.Font.SourceSansSemibold
	RemoteName_2.Text = "Name"
	RemoteName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	RemoteName_2.TextSize = 20.000
	
	Settings_2.Name = "Settings"
	Settings_2.Parent = Calls
	Settings_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Settings_2.BackgroundTransparency = 0.500
	Settings_2.BorderSizePixel = 0
	Settings_2.Position = UDim2.new(1, 10, 0, 0)
	Settings_2.Size = UDim2.new(0, 180, 0, 90)
	Settings_2.Visible = false
	
	BorderBottom_6.Name = "BorderBottom"
	BorderBottom_6.Parent = Settings_2
	BorderBottom_6.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderBottom_6.BorderSizePixel = 0
	BorderBottom_6.Position = UDim2.new(0, 0, 1, 0)
	BorderBottom_6.Size = UDim2.new(1, 1, 0, 1)
	BorderBottom_6.Font = Enum.Font.SourceSans
	BorderBottom_6.Text = ""
	BorderBottom_6.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderBottom_6.TextSize = 14.000
	
	BorderLeft_5.Name = "BorderLeft"
	BorderLeft_5.Parent = Settings_2
	BorderLeft_5.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderLeft_5.BorderSizePixel = 0
	BorderLeft_5.Position = UDim2.new(0, -1, 0, 0)
	BorderLeft_5.Size = UDim2.new(0, 1, 1, 1)
	BorderLeft_5.Font = Enum.Font.SourceSans
	BorderLeft_5.Text = ""
	BorderLeft_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderLeft_5.TextSize = 14.000
	
	BorderRight_5.Name = "BorderRight"
	BorderRight_5.Parent = Settings_2
	BorderRight_5.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderRight_5.BorderSizePixel = 0
	BorderRight_5.Position = UDim2.new(1, 0, 0, -1)
	BorderRight_5.Size = UDim2.new(0, 1, 1, 1)
	BorderRight_5.Font = Enum.Font.SourceSans
	BorderRight_5.Text = ""
	BorderRight_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderRight_5.TextSize = 14.000
	
	BorderTop_5.Name = "BorderTop"
	BorderTop_5.Parent = Settings_2
	BorderTop_5.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BorderTop_5.BorderSizePixel = 0
	BorderTop_5.Position = UDim2.new(0, -1, 0, -1)
	BorderTop_5.Size = UDim2.new(1, 1, 0, 1)
	BorderTop_5.Font = Enum.Font.SourceSans
	BorderTop_5.Text = ""
	BorderTop_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	BorderTop_5.TextSize = 14.000
	
	GenerateScript.Name = "GenerateScript"
	GenerateScript.Parent = Settings_2
	GenerateScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GenerateScript.BackgroundTransparency = 1.000
	GenerateScript.Size = UDim2.new(0, 180, 0, 30)
	GenerateScript.Font = Enum.Font.SourceSansSemibold
	GenerateScript.Text = "Generate Script"
	GenerateScript.TextColor3 = Color3.fromRGB(255, 255, 255)
	GenerateScript.TextSize = 18.000
	
	GetCallingScript.Name = "GetCallingScript"
	GetCallingScript.Parent = Settings_2
	GetCallingScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GetCallingScript.BackgroundTransparency = 1.000
	GetCallingScript.Position = UDim2.new(0, 0, 0, 30)
	GetCallingScript.Size = UDim2.new(0, 180, 0, 30)
	GetCallingScript.Font = Enum.Font.SourceSansSemibold
	GetCallingScript.Text = "Get Calling Script"
	GetCallingScript.TextColor3 = Color3.fromRGB(255, 255, 255)
	GetCallingScript.TextSize = 18.000
	
	RepeatCall.Name = "RepeatCall"
	RepeatCall.Parent = Settings_2
	RepeatCall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RepeatCall.BackgroundTransparency = 1.000
	RepeatCall.Position = UDim2.new(0, 0, 0, 60)
	RepeatCall.Size = UDim2.new(0, 180, 0, 30)
	RepeatCall.Font = Enum.Font.SourceSansSemibold
	RepeatCall.Text = "Repeat Call"
	RepeatCall.TextColor3 = Color3.fromRGB(255, 255, 255)
	RepeatCall.TextSize = 18.000
	
	local Tabs = {
		[RemoteSpyBtn] = RemoteSpy,
		[ScriptDumperBtn] = ScriptDumper
	}
	
	for a, b in pairs(Tabs) do
		a.MouseButton1Click:Connect(function()
			for c, d in pairs(Tabs) do
				if b ~= d then
					d.Visible = false
				end
			end
			b.Visible = not b.Visible
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
			scriptdumpersettings[v.Name] = not scriptdumpersettings[v.Name]
			v.BackgroundColor3 = scriptdumpersettings[v.Name] and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
		end)
	end
	
	Dump.MouseButton1Click:Connect(function()
		local name = FolderName.Text ~= "" and FolderName.Text or gamename
		dumper.dump(scriptdumpersettings, name)
	end)
	
	local remotes = {}
	
	local addremote = function(inst)
		local name = inst.Name
		local class = inst.ClassName
		local template = Template:Clone()
		template.Parent = Events
		template.Icon.Image = eventicons[class]
		template.RemoteName.Text = name
		template.Name = name
		template.Position = UDim2.new(0, 0, 0, 35 * (#Events:GetChildren() - 2))
		Events.CanvasSize = UDim2.new(0, 0, 0, 35 * (#Events:GetChildren() - 1))
		template.Visible = true
		remotes[inst] = { 
			["template"] = template,
			["calls"] = {},
			["callsframe"] = Calls:Clone(),
			["enabled"] = true
		}
		remotes[inst]["callsframe"].RemoteName.Text = inst.Name
		template.Enabled.MouseButton1Click:Connect(function()
			local old = syn_context_get()
			syn_context_set(6)
			remotes[inst]["enabled"] = not remotes[inst]["enabled"]
			template.Enabled.BackgroundColor3 = remotes[inst]["enabled"] and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
			syn_context_set(old)
		end)
		template.OpenCalls.MouseButton1Click:Connect(function()
			for i, v in pairs(remotes) do
				if v ~= remotes[inst] then
					v.callsframe.Visible = false
				end
			end
			remotes[inst]["callsframe"].Visible = not remotes[inst]["callsframe"].Visible
		end)
	end
	
	local updateremote = function(inst, call)
		local remote = remotes[inst]
		if remote["enabled"] then
			table.insert(remote.calls, #remote.calls + 1, call)
			remote.template.Count.Text = tostring(#remote.calls)
			local callgui = remote["callsframe"].List.Template:Clone()
			if #call["args"] == 0 then
				callgui.Argument.Text = "No Arguments"
			else
				for i, v in pairs(call["args"]) do
					if i == 1 then
						callgui.Argument.Text = "1: " .. gettype(v)
					else
						local arg = callgui.Argument:Clone()
						arg.Text = tostring(i) .. ": " .. gettype(v)
						arg.Position = UDim2.new(0, 0, 0, 30 * (i - 1))
					end
				end
				callgui.Size = UDim2.new(0, 245, 0, 30 * #call["args"])
				remote["callsframe"].List.CanvasSize = remote["callsframe"].List.CanvasSize + UDim2.new(0, 0, 0, 30 * #call["args"])
			end
		end
	end
	
	ui.addremote = addremote
	ui.updateremote = updateremote
end

return ui
