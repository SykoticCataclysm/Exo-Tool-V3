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
setreadonly(mt, false)

mt.__namecall = newcclosure(function(inst, link, ...)
	local method = getnamecallmethod()
	if methods[method] then
		ui.addhttplog(method, link, {...})
	end
	return nc(inst, link, ...)
end)
