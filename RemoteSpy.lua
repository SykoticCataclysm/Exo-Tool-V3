local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/SykoticCataclysm/Exo-Tool-V3/master/Gui.lua", true))()

local events = { 
	["Fire"] = true,
	["FireServer"] = true,
	["Invoke"] = true,
	["InvokeServer"] = true
}

local ignores = {
    ["GetInitDataRequest"] = true,
    ["MutePlayerRequest"] = true,
    ["UnMutePlayerRequest"] = true,
    ["ChannelNameColorUpdated"] = true,
    ["OnChannelJoined"] = true,
    ["OnChannelLeft"] = true,
    ["OnMainChannelSet"] = true,
    ["OnMessageDoneFiltering"] = true,
    ["OnMuted"] = true,
    ["OnNewMessage"] = true,
    ["OnNewSystemMessage"] = true,
    ["MessagesChanged"] = true,
    ["MessagePosted"] = true,
    ["ChatBarFocusChanged"] = true,
    ["OnUnmuted"] = true,
    ["SayMessageRequest"] = true,
    ["SetBlockedUserIdsRequest"] = true,
    ["Event"] = true
}

local remotes = {}

local mt = getrawmetatable(game)
local nc = mt.__namecall
setreadonly(mt, false)

mt.__namecall = function(inst, ...)
	local returns
	local args = {...}
	local method = getnamecallmethod()
	if events[method] and not ignores[inst.Name] then
		local ret = {nc(inst, ...)}
		local data = { 
			["args"] = args,
			["env"] = getfenv(2),
			["returns"] = ret
		}
		if not remotes[inst] then
			remotes[inst] = true
			ui.addremote(inst)
		end
		ui.updateremote(inst, data)
		return unpack(ret)
	end
	return nc(inst, ...)
end

setreadonly(mt, true)
