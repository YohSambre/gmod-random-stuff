hook.Add( "PopulateMenuBar", "ZIP_CONTEXTMENU_MORE_OPTIONS", function( menubar )

	local lookatmybarhowsexyitis = menubar:AddOrGetMenu( "More options" )
	
	lookatmybarhowsexyitis:AddSpacer() 
	
	lookatmybarhowsexyitis:AddOption("Removing unused addon", function() RunConsoleCommand ("menu_cleanupgmas") end)
	lookatmybarhowsexyitis:AddOption("Restart game sound system", function() RunConsoleCommand ("snd_restart") end)
	lookatmybarhowsexyitis:AddOption("Show game textures list", function() RunConsoleCommand ("mat_texture_list", "1") end)
	lookatmybarhowsexyitis:AddOption("Show your binds in dev console", function() RunConsoleCommand ("key_listboundkeys") end)
	lookatmybarhowsexyitis:AddOption("Show dev console", function() RunConsoleCommand ("showconsole") end)

	local Halflife2Reticle = lookatmybarhowsexyitis:AddSubMenu( "Half Life 2 Reticle Settings" )
		Halflife2Reticle:SetDeleteSelf( false )
		Halflife2Reticle:AddOption( "Hide HL2 Reticle (activate by default)", function() RunConsoleCommand ("hud_draw_fixed_reticle", "0") end)
		Halflife2Reticle:AddSpacer()
		Halflife2Reticle:AddOption( "Show HL2 Reticle", function() RunConsoleCommand ("hud_draw_fixed_reticle", "1") end)
		
	local Skyboxsettings = lookatmybarhowsexyitis:AddSubMenu("Skybox Settings")
		Skyboxsettings:SetDeleteSelf( false )
		Skyboxsettings:AddOption( "Hide Skybox (deactivate by default)", function() RunConsoleCommand ("r_3dsky", "0") end)
		Skyboxsettings:AddOption( "Show Skybox", function() RunConsoleCommand ("r_3dsky", "1") end)

	local languagesettings = lookatmybarhowsexyitis:AddSubMenu("Language Settings")
		languagesettings:SetDeleteSelf( false )
		languagesettings:AddOption( "Set the game language to english (english by default)", function() RunConsoleCommand ("gmod_language", "en") end)
		languagesettings:AddOption( "Set the game language to french (baguette swag)", function() RunConsoleCommand ("gmod_language", "fr") end)
		languagesettings:AddOption( "Set the game language to korea (Kim Jong-un swag)", function() RunConsoleCommand ("gmod_language", "ko") end)

	local netgraphsettings = lookatmybarhowsexyitis:AddSubMenu("Netgraph Settings")
		netgraphsettings:SetDeleteSelf( false )
		netgraphsettings:AddOption( "Show netgraph performance - minimal version", function() RunConsoleCommand ("net_graph", "1") end)
		netgraphsettings:AddOption( "Show netgraph performance - complete version", function() RunConsoleCommand ("net_graph", "2") end)
		netgraphsettings:AddOption( "Hide netgraph performance", function() RunConsoleCommand ("net_graph", "0") end)
	
		local tauntsettings = lookatmybarhowsexyitis:AddSubMenu("Taunts Settings")
		tauntsettings:SetDeleteSelf( false )
		tauntsettings:AddOption( "act agree", function() RunConsoleCommand ("act", "agree") end)
		tauntsettings:AddOption( "act becon", function() RunConsoleCommand ("act", "becon") end)
		tauntsettings:AddOption( "act bow", function() RunConsoleCommand ("act", "bow") end)
		tauntsettings:AddOption( "act cheer", function() RunConsoleCommand ("act", "cheer") end)
		tauntsettings:AddOption( "act dance", function() RunConsoleCommand ("act", "dance") end)
		tauntsettings:AddOption( "act disagree", function() RunConsoleCommand ("act", "disagree") end)
		tauntsettings:AddOption( "act forward", function() RunConsoleCommand ("act", "forward") end)
		tauntsettings:AddOption( "act group", function() RunConsoleCommand ("act", "group") end)
		tauntsettings:AddOption( "act halt", function() RunConsoleCommand ("act", "halt") end)
		tauntsettings:AddOption( "act laugh", function() RunConsoleCommand ("act", "laugh") end)
		tauntsettings:AddOption( "act muscle", function() RunConsoleCommand ("act", "muscle") end)
		tauntsettings:AddOption( "act pers", function() RunConsoleCommand ("act", "pers") end)
		tauntsettings:AddOption( "act robot", function() RunConsoleCommand ("act", "robot") end)
		tauntsettings:AddOption( "act salute", function() RunConsoleCommand ("act", "salute") end)
		tauntsettings:AddOption( "act wave", function() RunConsoleCommand ("act", "wave") end)
		tauntsettings:AddOption( "act zombie", function() RunConsoleCommand ("act", "zombie") end)

		lookatmybarhowsexyitis:AddOption("Show vehicles list in dev console (require darkrp)", function() RunConsoleCommand ("rp_getvehicles") end)
		lookatmybarhowsexyitis:AddOption("Toggle zoom", function() RunConsoleCommand ("toggle_zoom") end)
		lookatmybarhowsexyitis:AddOption("Toggle flashlight", function() RunConsoleCommand ("impulse", "100") end)
		lookatmybarhowsexyitis:AddOption("Clear decals", function() RunConsoleCommand ("r_cleardecals") end)
		lookatmybarhowsexyitis:AddOption("Make screenshot", function() RunConsoleCommand ("screenshot") end)
		lookatmybarhowsexyitis:AddOption("To commit suicide", function() RunConsoleCommand ("kill") end)
		lookatmybarhowsexyitis:AddOption("Spoofing your ping", function() RunConsoleCommand ("cl_cmdrate", "+100") end)
		lookatmybarhowsexyitis:AddOption("Leave the server", function() RunConsoleCommand ("disconnect") end)
end)














