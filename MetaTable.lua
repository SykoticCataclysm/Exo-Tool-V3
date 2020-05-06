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

local mt = getrawmetatable(game)
local nc = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(inst, ...)
	local Args = {...}
	local Method = getnamecallmethod()
	if RemoteEvents[Method] then
		UpdateRemote(inst.Name, {...})
	elseif HttpMethods[Method] then		-- Yes, The Source Is On Github. This Is Just So It Doesn't Spy Itself.
		if not Args[1]:find("https://raw.githubusercontent.com/SykoticCataclysm/Exo-Tool-V3/master/") then
			print(Args[1])
		end
	end
	return nc(inst, ...)
end)

setreadonly(mt, true)
