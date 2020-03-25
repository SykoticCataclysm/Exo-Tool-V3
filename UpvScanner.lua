local UpvScanner = {}

UpvScanner.Scan = function(name)
	for a, b in next, getgc() do
		if type(b) == "function" then
			for c, d in next, debug.getupvalues(b) do
				if type(d) == "table" and rawget(d, name) then
					AddUpvalue(tostring(b), tostring(d), name, d[name])
				end
			end
		end
	end
end
	
return UpvScanner
