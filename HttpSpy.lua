local Get
local GetAsync
local Post
local PostAsync
local GetObjects

Get = hookfunction(game.HttpGet, function(inst, ...)
	local Args = {...}
	AddHttp(Args[1], "HttpGet")
	return Get(inst, ...)
end)

GetAsync = hookfunction(game.HttpGetAsync, function(inst, ...)
	local Args = {...}
	AddHttp(Args[1], "HttpGetAsync")
	return GetAsync(inst, ...)
end)

Post = hookfunction(game.HttpPost, function(inst, ...)
	local Args = {...}
	AddHttp(Args[1], "HttpPost")
	return Post(inst, ...)
end)

PostAsync = hookfunction(game.HttpPostAsync, function(inst, ...)
	local Args = {...}
	AddHttp(Args[1], "HttpPostAsync")
	return PostAsync(inst, ...)
end)

GetObjects = hookfunction(game.GetObjects, function(inst, ...)
	local Args = {...}
	AddHttp(Args[1], "GetObjects")
	return GetObjects(inst, ...)
end)
