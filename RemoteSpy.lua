getgenv().GetAllRemotes = function()
	local Remotes = {}
	for i, v in pairs(game:GetDescendants()) do
		if v:IsA("BindableEvent") or v:IsA("BindableFunction") or v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
			Remotes[v] = true
		end
	end
	return Remotes
end
