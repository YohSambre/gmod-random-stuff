hook.Add( "Initialize", "ZIPBOTALWAYSCONNECTED", function()
	RunConsoleCommand("sv_hibernate_think", "1")
	RunConsoleCommand("sv_hibernate_drop_bots", "0")
end )