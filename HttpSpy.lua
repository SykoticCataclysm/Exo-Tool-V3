local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/SykoticCataclysm/Exo-Tool-V3/master/Gui.lua"))()

local methods = {
	["HttpGet"] = true,
	["HttpGetAsync"] = true,
	["HttpPost"] = true,
	["HttpPostAsync"] = true,
	["GetObjects"] = true
}

local mt = getrawmetatable(game)
local nc = mt.__namecall
setreadonly(nc, false)

mt.__namecall = newcclosure(function(inst, ...)
	local method = getnamecallmethod()
	if methods[method] and ui.options.httpspyenabled then
		local args = {...}
		ui.log(method .. " Called: " .. args[1])
	end
	return nc(inst, ...)
end)
