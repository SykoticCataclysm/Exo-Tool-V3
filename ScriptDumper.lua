function MakeFolder(name)
	pcall(function()
		makefolder("Exo Tool V3/" .. name)
	end)
end

function GetPath(obj, targetParent)
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

function WriteScript(Folder, Script)
	if Script:IsA("LocalScript") then
		writefile(Folder .. "/LocalScripts/" .. GetPath(Script), decompile(Script))
	elseif Script:IsA("ModuleScript") then
		writefile(Folder .. "/ModuleScript/" .. GetPath(Script), decompile(Script))
	end
end

getgenv().ScriptDump = function(Settings, FolderName)
	pcall(function()
		makefolder("Exo Tool V3")
	end)
	MakeFolder(FolderName)
	for i, v in pairs(Settings) do
		if v == true then
			MakeFolder(i)
			MakeFolder(i .. "/LocalScripts")
			MakeFolder(i .. "/ModuleScripts")
		end
	end
	for a, b in pairs(Settings) do
		if a ~= "LocalPlayer" and b ~= "Nil" then
			local Service = game:GetService(a)
			for c, d in pairs(Service:GetDescendants()) do
				if d:IsA("LocalScript") or d:IsA("ModuleScript") then
					WriteScript(a, d)
				end
			end
		end
	end
	if Settings["LocalPlayer"] == true then
		for i, v in pairs(game:GetService("Players").LocalPlayer:GetDescendants()) do
			if v:IsA("LocalScript") or v:IsA("ModuleScript") then
				WriteScript("LocalPlayer", v)
			end
		end
	end
	if Settings["Nil"] == true then
		for i, v in pairs(game:GetService("Players").LocalPlayer:GetDescendants()) do
			if v:IsA("LocalScript") or v:IsA("ModuleScript") then
				WriteScript("Nil", v)
			end
		end
	end
end
