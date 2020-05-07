getgenv().setclipboard = setclipboard or Clipboard.set
getgenv().getnilinstances = getnilinstances or get_nil_instances
getgenv().getrawmetatable or getrawmetatable or debug.getmetatable
getgenv().setreadonly = function(obj, bool)
	if setreadonly then
		setreadonly(obj, bool)
	elseif make_readonly then
		make_readonly(obj, bool)
	elseif make_writeable then
		make_writeable(obj, not bool)
	end
end
