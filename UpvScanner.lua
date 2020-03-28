function CheckName(search, result)
	local a = string.lower(search)
	local b = string.lower(tostring(result))
	if string.find(b, a) then
		return true
	end
	return false
end

getgenv().Scan = function(name)
	for a, b in next, getgc() do
		if type(b) == "function" then
			for c, d in next, debug.getupvalues(b) do
				if type(d) == "table" then
					for e, f in next, d do
						if CheckName(name, e) == true then
							AddUpvalue(b, d, tostring(e), GetType(f))
						end
					end
				end
			end
		end
	end
end
