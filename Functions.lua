getgenv().GetAllRemotes = function()
	local Remotes = {}
	for i, v in pairs(game:GetDescendants()) do
		if v:IsA("BindableEvent") or v:IsA("BindableFunction") or v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
			if not Remotes[v.Name] then
				Remotes[v.Name] = { true, 0, nil, {} }
			end
		end
	end
	return Remotes
end

getgenv().GetPath = function(obj, targetParent)
	local str = obj.Name
	local Obj, Parent = obj, obj.Parent
	if Parent and Parent ~= targetParent then
		repeat 
			Obj, Parent = Parent, Parent.Parent
			str = Obj.Name .. "." .. str
		until Parent == targetParent
	end
	return str
end

getgenv().ScriptDump = function(Settings, FolderName)
	makefolder("Exo Tool V3")
	makefolder("Exo Tool V3/Script Dumps")
	makefolder("Exo Tool V3/Script Dumps/" .. FolderName)
	function MakeFolder(name)
		makefolder("Exo Tool V3/Script Dumps/" .. FolderName .. "/" .. name)
	end
	function WriteScript(Folder, Script, PathEnd)
		pcall(function()
			if Script:IsA("LocalScript") then
				writefile("Exo Tool V3/Script Dumps/" .. FolderName .. "/" .. Folder .. "/LocalScripts/" .. GetPath(Script, PathEnd) .. ".lua", decompile(Script))
			elseif Script:IsA("ModuleScript") then
				writefile("Exo Tool V3/Script Dumps/" .. FolderName .. "/" .. Folder .. "/ModuleScripts/" .. GetPath(Script, PathEnd) .. ".lua", decompile(Script))
			end
		end)
	end
	for i, v in pairs(Settings) do
		if v == true then
			MakeFolder(i)
			MakeFolder(i .. "/LocalScripts")
			MakeFolder(i .. "/ModuleScripts")
		end
	end
	for a, b in pairs(Settings) do
		if a ~= "LocalPlayer" and a ~= "Nil" then
			local Service = game:GetService(a)
			for c, d in pairs(Service:GetDescendants()) do
				if d:IsA("LocalScript") or d:IsA("ModuleScript") then
					WriteScript(a, d, Service)
				end
			end
		end
	end
	if Settings["LocalPlayer"] == true then
		for i, v in pairs(game:GetService("Players").LocalPlayer:GetDescendants()) do
			if v:IsA("LocalScript") or v:IsA("ModuleScript") then
				WriteScript("LocalPlayer", v, game:GetService("Players").LocalPlayer)
			end
		end
	end
	if Settings["Nil"] == true then
		for i, v in pairs(getnilinstances()) do
			if v:IsA("LocalScript") or v:IsA("ModuleScript") then
				WriteScript("Nil", v)
			end
		end
	end
end
