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

local Remotes = {}

local mt = getrawmetatable(game)
local nc = mt.__namecall
setreadonly(mt, false)

mt.__namecall = function(inst, ...)
	local Args = {...}
	local Method = getnamecallmethod()
	if RemoteEvents[Method] then
		if not Remotes[inst] then
			Remotes[inst] = true
			AddRemote(inst, {
				["Type"] = inst.ClassName,
				["Count"] = 0,
				["Calls"] = {},
				["GUIItem"] = nil,
				["Enabled"] = true
			})
		else
			UpdateRemote(inst, {})
		end
	elseif HttpMethods[Method] then

	end
	return nc(inst, ...)
end

setreadonly(mt, true)
