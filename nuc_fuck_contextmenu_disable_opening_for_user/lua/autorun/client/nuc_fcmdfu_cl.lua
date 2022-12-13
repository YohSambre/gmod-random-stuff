--------------------------------------------
--*/ BASE
--------------------------------------------
local function NoCM()
	if not LocalPlayer():IsAdmin() then 
	surface.PlaySound( "buttons/combine_button_locked.wav" )
	notification.AddLegacy( "The context menu was disabled on this server (Admin only).", NOTIFY_HINT, 3 )
	return false
	end
end

hook.Add( "OnContextMenuOpen", "NUCCONTEXTMENUOPEN", NoCM )