getgenv().GetAllRemotes = function()
	local Remotes = {}
	for i, v in pairs(game:GetDescendants()) do
		if v:IsA("BindableEvent") or v:IsA("BindableFunction") or v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
			if not Remotes[v.Name] then
				Remotes[v.Name] = { true, 0, nil, {} }
			end
		end
	end
	return Remotes
end

local Remotes = { 
	["BindableEvent"] = true,
	["BindableFunction"] = true,
	["RemoteEvent"] = true,
	["RemoteFunction"] = true
}

local mt = getrawmetatable(game)
local nc = mt.__namecall
setreadonly(mt, false)

mt.__namecall = function(inst, ...)
	if Remotes[inst.ClassName] then
		UpdateRemote(inst.Name, {...})
	end
end

setreadonly(mt, true)
