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

mt.__namecall = function(obj, ...)
	local Method = getnamecallmethod()
	if Types[Method] then
		print("Yes")
		Fired[#Fired + 1] = { obj.Name, obj.ClassName, Types[Method][2], {...} }
	end
	return nc(obj, ...)
end

spawn(function()
	while wait() do
		if #Fired > 0 then
			UpdateRemote(unpack(table.remove(Fired, 1)))
		end
	end
end)
