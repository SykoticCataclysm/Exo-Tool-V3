local UI = game:GetObjects("rbxassetid://4814616806")[1]
UI.Enabled = true
UI.Parent = game:GetService("CoreGui")

getgenv().GetType = function(Instance)
	local Types = {
		EnumItem = function()
			return "Enum." .. tostring(Instance.EnumType) .. "." .. tostring(Instance.Name)
		end,
		Instance = function()
			return Instance.Name
		end,
		CFrame = function()
			return "CFrame.new(" .. tostring(Instance) .. ")"
		end,
		Vector3 = function()
			return "Vector3.new(" .. tostring(Instance) .. ")"
		end,
		BrickColor = function()
			return "BrickColor.new('" .. tostring(Instance) .. "')"
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
				Str = Str .. "[" .. GetType(i) .. "] = " .. GetType(v) .. ", "
			end
			return Str == "{ " and "None" or string.sub(Str, 1, string.len(Str) - 2) .. " }"
		end
	}

	return Types[typeof(Instance)] ~= nil and Types[typeof(Instance)]() or tostring(Instance)
end

getgenv().UpdateRemote = function(name, classname, icon, args, returnArgs)
	if UI.RemoteSpyFrame.Main.FiredFrame:FindFirstChild(name) then
		local Count = UI.RemoteSpyFrame.Main.FiredFrame[name].CallCount
		Count.Text = tostring(tonumber(Count.Text) + 1)
	else
		local Template = UI.RemoteSpyFrame.Main.TemplateFrame:Clone()
		Template.Position = UDim2.new(0, 5, 0, 5 + 30 * #UI.RemoteSpyFrame.Main.FiredFrame:GetChildren())
		Template.Name, Template.Parent, Template.Visible = name, UI.RemoteSpyFrame.Main.FiredFrame, true
		Template.ItemName.Text = name
		Template.TypeImg.Image = icon
		Template.CallCount.Text = "1"
		Template.CallsFrame.Title.Text = name	
		UI.RemoteSpyFrame.Main.FiredFrame.CanvasSize = UDim2.new(0, 0, 0, 210 + 30 * #UI.RemoteSpyFrame.Main.FiredFrame:GetChildren())
		Template.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				Template.CallsFrame.Visible = not Template.CallsFrame.Visible
			end
		end)
	end
	local Frame = UI.RemoteSpyFrame.Main.FiredFrame[name].CallsFrame.Main
	local Template = Frame.TemplateCall:Clone()
	Template.Position = UDim2.new(0, 5, 0, 5 + 30 * #Frame.Calls:GetChildren())
	Template.Parent, Template.Visible = Frame.Calls, true
	Template.ArgsLabel.Text = "Args: " .. GetType(args)
	if string.find(classname, "Function") then
		Template.ArgsLabel.Text = Template.ArgsLabel.Text .. ", Return: " .. GetType(returnArgs)
	end
	Template.Copy.MouseButton1Click:Connect(function() setclipboard(GetType(args)) end)
	Frame.Calls.CanvasSize = UDim2.new(0, 0, 0, 10 + 30 * #Frame.Calls:GetChildren())
end

getgenv().AddHttp = function(link, httpType)
	local Template = UI.HttpSpyFrame.Main.TemplateFrame:Clone()
	Template.Position = UDim2.new(0, 5, 0, 5 + 30 * #UI.HttpSpyFrame.Main.SpiedFrame:GetChildren())
	Template.Parent, Template.Visible = UI.HttpSpyFrame.Main.SpiedFrame, true
	Template.RequestType.Text = httpType
	Template.Link.Text = link
	Template.Copy.MouseButton1Click:Connect(function() setclipboard(link) end)
	UI.HttpSpyFrame.Main.SpiedFrame.CanvasSize = UDim2.new(0, 0, 0, 10 + 30 * #UI.HttpSpyFrame.Main.SpiedFrame:GetChildren())
end

getgenv().AddUpvalue = function(func, tab, name, val)
	local Template = UI.UpvScanFrame.Main.TemplateFrame:Clone()
	Template.Position = UDim2.new(0, 5, 0, 5 + 50 * #UI.UpvScanFrame.Main.ScanResultsFrame:GetChildren())
	Template.Parent, Template.Visible = UI.UpvScanFrame.Main.ScanResultsFrame, true
	Template.Path.Text = tostring(func) .. " > " .. tostring(tab)
	Template.NameVal.Text = "Name: " .. name .. ", Value: " .. val
	UI.UpvScanFrame.Main.ScanResultsFrame.CanvasSize = UDim2.new(0, 0, 0, 10 + 50 * #UI.UpvScanFrame.Main.ScanResultsFrame:GetChildren())
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/SykoticCataclysm/ExoToolV2/master/RemoteSpy.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SykoticCataclysm/ExoToolV2/master/HttpSpy.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SykoticCataclysm/ExoToolV2/master/UpvScanner.lua"))()

UI.UpvScanFrame.Main.Search.FocusLost:Connect(function()
	UI.UpvScanFrame.Main.ScanResultsFrame:ClearAllChildren()
	Scan(UI.UpvScanFrame.Main.Search.Text)
end)

local Frames = {
	[UI.SelectFrame.RemoteSpyBtn] = UI.RemoteSpyFrame,
	[UI.SelectFrame.HttpSpyBtn] = UI.HttpSpyFrame,
	[UI.SelectFrame.UpvScanBtn] = UI.UpvScanFrame
}

for i, v in pairs(Frames) do
	i.MouseButton1Click:Connect(function()
		v.Visible = not v.Visible
	end)
end
