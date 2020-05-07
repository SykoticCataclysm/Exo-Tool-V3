local scanner = {}

gettype = function(Instance)
	local types = {
		EnumItem = function()
			return "Enum." .. tostring(Instance.EnumType) .. "." .. tostring(Instance.Name)
		end,
		Instance = function()
			return Instance:GetFullName()
		end,
		CFrame = function()
			return "CFrame.new(" .. tostring(Instance) .. ")"
		end,
		Vector3 = function()
			return "Vector3.new(" .. tostring(Instance) .. ")"
		end,
		BrickColor = function()
			return "BrickColor.new(\"" .. tostring(Instance) .. "\")"
		end,
		Color3 = function()
			return "Color3.new(" .. tostring(Instance) .. ")"
		end,
		string = function()
			local S = tostring(Instance)
			return "'" .. (S) .. "'"
		end,
		Ray = function()
			return "Ray.new(Vector3.new(" .. tostring(Instance.Origin) .. "), Vector3.new(" .. tostring(Instance.Direction) .. "))"
		end,
		table = function()
			local str = "{ "
			for i, v in pairs(Instance) do
				str = str .. "[" .. gettype(i) .. "] = " .. gettype(v) .. ", "
			end
			return string.sub(str, 1, string.len(str) - 2) .. " }"
		end
	}

	return types[typeof(Instance)] ~= nil and types[typeof(Instance)]() or tostring(Instance)
end

local generatescript = function(val)
	return "local newval = 100\n\n"
	.. "local getgc = getgc or get_gc_objects"
	.. "local getupvalues = debug.getupvalues or getupvalues or getupvals"
	.. "for a, b in next, getgc() do\n"
	.. "    if type(b) == 'function' then\n"
	.. "        for c, d in next, getupvalues(b) do\n"
	.. "            if type(d) == 'table' and rawget(d, '" .. val .. "') then\n"
	.. "                d." .. val .. " = newval\n"
	.. "            end\n"
	.. "        end\n"
	.. "    end\n"
	.. "end"
end

local scanupvalues = function(search)
	search = search:lower()
	local results = {}
	for a, b in next, getgc() do
		if type(b) == "function" and not isexploitclosure(b) then
			for c, d in next, getupvalues(b) do
				if type(d) == "table" then
					for e, f in next, d do
						if tostring(e):lower():find(search) then
							results[tostring(e)] = {
								value = gettype(f),
								holder = d,
								generatedscript = generatescript(tostring(e))
							}
						end
					end
				end
			end
		end
	end
	return results
end

scanner.scanupvalues = scanupvalues

return scanner
