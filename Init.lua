warn("[Exo Tool V3]: Waiting For The Game To Finish Loading...")

repeat wait() until game:IsLoaded()

warn("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
warn("")
warn("            ExoTool V3 - Made By Syko            ")
warn("        Discord: discord.me/sykoscripting        ")
warn("")
warn("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

loadstring(game:HttpGet("https://raw.githubusercontent.com/SykoticCataclysm/Exo-Tool-V3/master/Compatibility.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SykoticCataclysm/Exo-Tool-V3/master/HttpSpy.lua"))()
