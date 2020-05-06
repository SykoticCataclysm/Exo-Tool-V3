local RemoteEvents = { 
	["Fire"] = true,
	["FireServer"] = true,
	["Invoke"] = true,
	["InvokeServer"] = true
}

local HttpMethods = {
	["HttpGet"] = true,
	["HttpGetAsync"] = true,
	["HttpPost"] = true,
	["HttpPostAsync"] = true,
	["GetObjects"] = true
}

local UpdateRemote = game:GetService("Players").LocalPlayer:WaitForChild("UpdateRemote")

local mt = getrawmetatable(game)
local nc = mt.__namecall
setreadonly(mt, false)

mt.__namecall = function(inst, ...)
	local Args = {...}
	local Method = getnamecallmethod()
	if RemoteEvents[Method] then
		UpdateRemote:Fire(inst.Name, Args)
	elseif HttpMethods[Method] then

	end
	return nc(inst, ...)
end

setreadonly(mt, true)
