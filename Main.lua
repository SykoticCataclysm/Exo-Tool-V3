local UI = game:GetObjects("rbxassetid://4814616806")[1]
UI.Parent = game:GetService("CoreGui")

loadstring(game:HttpGet("https://raw.githubusercontent.com/SykoticCataclysm/ExoToolV2/master/RemoteSpy.lua"))()

local Frames = {
	[UI.SelectFrame.RemoteSpyBtn] = UI.RemoteSpyFrame
}

for i, v in pairs(Frames) do
	i.MouseButton1Click:Connect(function()
		v.Visible = not v.Visible
	end)
end

getgenv().UpdateRemote = function(name, classname, icon, args)
	if not UI.RemoteSpyFrame.FiredFrame[name] then
		local Template = UI.RemoteSpyFrame.TemplateFrame:Clone()
		Template.Name, Template.Parent, Template.Visible = name, UI.RemoteSpyFrame.FiredFrame, true
		Template.Position = UDim2.new(0, 5, 0, 5 + 30 * #UI.RemoteSpyFrame.FiredFrame:GetChildren())
		Template.ItemName.Text = name
		Template.TypeImg.Image = icon
	else
		local Count = UI.RemoteSpyFrame.FiredFrame[name].CallCount
		Count.Text = tostring(tonumber(Count.Text) + 1)
	end
end
