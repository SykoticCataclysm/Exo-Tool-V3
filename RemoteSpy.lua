local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/SykoticCataclysm/Exo-Tool-V3/master/Gui.lua", true))()

local events = { 
	["Fire"] = true,
	["FireServer"] = true,
	["Invoke"] = true,
	["InvokeServer"] = true
}

local remotes = {}

local mt = getrawmetatable(game)
local nc = mt.__namecall
setreadonly(mt, false)

mt.__namecall = function(inst, ...)
	local args = {...}
	local method = getnamecallmethod()
	if events[method] then
		local old = syn_context_get()
		syn_context_set(6)
		if not remotes[inst] then
			remotes[inst] = true
			ui.addremote(inst)
		end
		ui.updateremote(inst, { 
			["args"] = args 
		})
		syn_context_set(old)
	end
	return nc(inst, ...)
end

setreadonly(mt, true)
