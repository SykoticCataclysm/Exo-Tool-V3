local scanner = {}

local scanupvalues = function(search)
	search = search:lower()
	local results = {}
	for a, b in next, getgc() do
		if type(b) == "function" and not isexploitclosure(b) then
			for c, d in next, getupvalues(b) do
				if type(d) == "table" then
					for e, f in next, d do
						if tostring(e):find(search) then
							results[tostring(e)] = f
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
