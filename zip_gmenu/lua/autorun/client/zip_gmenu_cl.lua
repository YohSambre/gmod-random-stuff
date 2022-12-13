--[[ 
    Gmenu addon
	v.prototype
]]--
list.Set( "DesktopWindows", "gmenu", {
	title = "GMENU ADMIN",
	icon = "icon/desktopicon.png", -- credit: https://icon-library.com/icon/gmod-icon-24.html
	init = function( icon, window )
	local mainmenu = DermaMenu()
	---------------------------------------------------------------
	-- ULX 
	local subMenu, mainmenuOption = mainmenu:AddSubMenu("ULX|ULIB")
	mainmenuOption:SetIcon("icon16/application_form_add.png")
	local ulxOption = subMenu:AddOption("Open ulx menu", function() surface.PlaySound( "buttons/lightswitch2.wav" ) LocalPlayer():ConCommand("ulx menu") end)
	ulxOption:SetIcon("icon16/bullet_key.png")

	local ulxinfosOption = subMenu:AddOption("original link of the addon", function() gui.OpenURL( "https://ulyssesmod.net/downloads.php" ) end)
	ulxinfosOption:SetIcon("icon16/book_addresses.png")
	---------------------------------------------------------------
	-- SAM | Admin Mod > https://www.gmodstore.com/market/view/sam 
	local subMenu, mainmenuOption = mainmenu:AddSubMenu("SAM")
	mainmenuOption:SetIcon("icon16/application_view_list.png")
	local samOption = subMenu:AddOption("Open sam admin menu", function() surface.PlaySound( "buttons/blip1.wav" ) LocalPlayer():ConCommand("sam menu") end)
	samOption:SetIcon("icon16/bullet_key.png")

	local saminfosOption = subMenu:AddOption("original link of the addon", function() gui.OpenURL( "https://www.gmodstore.com/market/view/sam" ) end)
	saminfosOption:SetIcon("icon16/book_addresses.png")
	---------------------------------------------------------------
	-- GmodAdminSuite | Menu Mod > https://steamcommunity.com/sharedfiles/filedetails/?id=1595332211 
	local subMenu, mainmenuOption = mainmenu:AddSubMenu("GmodAdminSuite")
	mainmenuOption:SetIcon("icon16/application_view_columns.png")
	local gmodadminsuiteOption = subMenu:AddOption("Open gmodadminsuite menu", function() surface.PlaySound( "buttons/button24.wav" ) LocalPlayer():ConCommand("gmodadminsuite") end)
	gmodadminsuiteOption:SetIcon("icon16/bullet_key.png")

	local gmodadminsuiteinfosOption = subMenu:AddOption("original link of the addon", function() gui.OpenURL( "https://steamcommunity.com/sharedfiles/filedetails/?id=1595332211" ) end)
	gmodadminsuiteinfosOption:SetIcon("icon16/book_addresses.png")
	---------------------------------------------------------------
	-- Awarn 3 > https://www.gmodstore.com/market/view/awarn3-warning-system
	local subMenu, mainmenuOption = mainmenu:AddSubMenu("Awarn")
	mainmenuOption:SetIcon("icon16/application_error.png")
	local awarn3Option = subMenu:AddOption("Open Awarn3 menu", function() surface.PlaySound( "npc/turret_floor/ping.wav" ) LocalPlayer():ConCommand("awarn menu") end)
	awarn3Option:SetIcon("icon16/bullet_key.png")

	local awarninfosOption = subMenu:AddOption("original link of the addon", function() gui.OpenURL( "https://www.gmodstore.com/market/view/awarn3-warning-system" ) end)
	awarninfosOption:SetIcon("icon16/book_addresses.png")
	---------------------------------------------------------------
	-- DarkRP Fadmin > https://github.com/FPtje/DarkRP
	local subMenu, mainmenuOption = mainmenu:AddSubMenu("DarkRP|Fadmin")
	mainmenuOption:SetIcon("icon16/application_side_boxes.png")
	local fadminOption = subMenu:AddOption("Open Fadmin menu", function() surface.PlaySound( "buttons/button1.wav" ) LocalPlayer():ConCommand("+FAdmin_menu") end)
	fadminOption:SetIcon("icon16/bullet_key.png")

	local fadmininfosOption = subMenu:AddOption("original link of the addon", function() gui.OpenURL( "https://steamcommunity.com/sharedfiles/filedetails/?id=248302805" ) end)
	fadmininfosOption:SetIcon("icon16/book_addresses.png")
	---------------------------------------------------------------
	-- MAC's Simple NPCs > https://www.gmodstore.com/market/view/mac-s-simple-npcs
	local subMenu, mainmenuOption = mainmenu:AddSubMenu("MAC's Simple NPCs")
	mainmenuOption:SetIcon("icon16/folder_user.png")
	local msnOption = subMenu:AddOption("Open MAC's Simple NPCs menu", function() surface.PlaySound( "UI/buttonrollover.wav" ) LocalPlayer():ConCommand("mcs_setup") end)
	msnOption:SetIcon("icon16/bullet_key.png")

	local msninfosOption = subMenu:AddOption("original link of the addon", function() gui.OpenURL( "https://www.gmodstore.com/market/view/mac-s-simple-npcs" ) end)
	msninfosOption:SetIcon("icon16/book_addresses.png")
	---------------------------------------------------------------
	-- MapPatcher > https://steamcommunity.com/sharedfiles/filedetails/?id=1572250342
	local subMenu, mainmenuOption = mainmenu:AddSubMenu("MapPatcher")
	mainmenuOption:SetIcon("icon16/application_side_list.png")
	local mappatcherOption = subMenu:AddOption("Open MapPatcher menu", function() surface.PlaySound( "common/warning.wav" ) LocalPlayer():ConCommand("mappatcher") end)
	mappatcherOption:SetIcon("icon16/bullet_key.png")

	local mappatcherinfosOption = subMenu:AddOption("original link of the addon", function() gui.OpenURL( "https://steamcommunity.com/sharedfiles/filedetails/?id=1572250342" ) end)
	mappatcherinfosOption:SetIcon("icon16/book_addresses.png")
	---------------------------------------------------------------
	-- SACS System > https://originahl-scripts.com/gmod-scripts/2468/sacs-server-map-optimizer
	local subMenu, mainmenuOption = mainmenu:AddSubMenu("SACS Menu")
	mainmenuOption:SetIcon("icon16/application_view_gallery.png")
	local sacsOption = subMenu:AddOption("Open SACS menu", function() LocalPlayer():ConCommand("sacs_menu") end) -- no need for an opening sound it already has one
	sacsOption:SetIcon("icon16/bullet_key.png")

	local sacsinfosOption = subMenu:AddOption("original link of the addon", function() gui.OpenURL( "https://originahl-scripts.com/gmod-scripts/2468/sacs-server-map-optimizer" ) end)
	sacsinfosOption:SetIcon("icon16/book_addresses.png")
	---------------------------------------------------------------
	-- AES System > https://steamcommunity.com/sharedfiles/filedetails/?id=2716327107
	local subMenu, mainmenuOption = mainmenu:AddSubMenu("AES Menu")
	mainmenuOption:SetIcon("icon16/eye.png")
	local aesshowOption = subMenu:AddOption("Show AES", function() LocalPlayer():ConCommand("show_esp") end)
	aesshowOption:SetIcon("icon16/flag_green.png")
	local aeshideOption = subMenu:AddOption("Hide AES", function() LocalPlayer():ConCommand("hide_esp") end)
	aeshideOption:SetIcon("icon16/flag_red.png")

	local sacsinfosOption = subMenu:AddOption("original link of the addon", function() gui.OpenURL( "https://steamcommunity.com/sharedfiles/filedetails/?id=2716327107" ) end)
	sacsinfosOption:SetIcon("icon16/book_addresses.png")
	---------------------------------------------------------------
	mainmenu:Open()

end
} )