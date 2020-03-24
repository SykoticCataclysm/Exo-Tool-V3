-- Init Script

local UI = game:GetObjects("rbxassetid://4814616806")[1]
UI.Parent = game:GetService("CoreGui")

getgenv().UpdateRemote = function(name, classname, icon, args)
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
	end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/SykoticCataclysm/ExoToolV2/master/RemoteSpy.lua"))()

local Frames = {
	[UI.SelectFrame.RemoteSpyBtn] = UI.RemoteSpyFrame
}

for i, v in pairs(Frames) do
	i.MouseButton1Click:Connect(function()
		v.Visible = not v.Visible
	end)
end
