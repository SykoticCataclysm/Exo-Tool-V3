local Fired = {}

local Types = {
	["FireServer"] = "rbxassetid://4229806545",
	["InvokeServer"] = "rbxassetid://4229810474",
	["Fire"] = "rbxassetid://4229809371",
	["Invoke"] = "rbxassetid://4229807624"
}

local mt = getrawmetatable(game)
local nc = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(obj, ...)
	local Method = getnamecallmethod()
	if Types[Method] then
		Fired[#Fired + 1] = { obj.Name, obj.ClassName, Types[Method], {...} }
	end
	return nc(obj, ...)
end)

setreadonly(mt, true)

local jbArg = nil

if game.PlaceId == 606849621 then
	for a, b in next, getgc() do
		if type(b) == "function" then
			for c, d in next, debug.getupvalues(b) do
				if type(d) == "table" and rawget(d, "FireServer") then
					local Old = d.FireServer
					d.FireServer = function(self, ...)
						local Args = {...}
						if jbArg == nil then
							jbArg = Args[1]
							Fired[#Fired + 1] = { "JailBreak Spam Arg", "RemoteEvent", "rbxassetid://4229806545", {...} }
						elseif Args[1] ~= jbArg then
							Fired[#Fired + 1] = { "JailBreak Bypass", "RemoteEvent", "rbxassetid://4229806545", {...} }
						end
						Old(self, ...)
					end
				end
			end
		end
	end
end

spawn(function()
	while wait() do
		if #Fired > 0 then
			for i, v in pairs(Fired) do
				UpdateRemote(unpack(table.remove(Fired, i)))
			end
		end
	end
end)
