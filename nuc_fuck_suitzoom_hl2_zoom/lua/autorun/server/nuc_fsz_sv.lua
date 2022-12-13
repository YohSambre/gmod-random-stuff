--------------------------------------------
--*/ NUC JOIN THE BATTLE
--------------------------------------------
MsgC (Color(255, 255, 255), [[                                                                                                             
= NUC - Fuck Suit Zoom (hl2 zoom) loaded!
]])
--------------------------------------------
--*/ BASE
--------------------------------------------
--[[
At the time i was using the hook called 'KeyPress' to check if the player presses his zoom key and on my side i return the opposite 
with just a sound and visual notification.

The problem that forced me to change my method was the console command "toggle_zoom" that allowed to bypass my addon, i tried to use 
'concommand.remove' and even 'concommand.add' to override the command but it was a failure.

i was running out of options when suddenly a friend of mine suggested me to check with 'GM:HUDShouldDraw' but again it was a failure, 
my friend then told me about the function "Player:SetCanZoom", i tried to make a code and it was a success.

thx my friend Nogitsu]]

hook.Add("PlayerInitialSpawn", "NUCFUCKSUITZOOM", function(ply)  
		ply:SetCanZoom( false )
end)

--[[ 
my old unsecured code :

hook.Add( "KeyPress", "hellow", function( ply, key )
	if ( key == IN_ZOOM ) then
		surface.PlaySound( "buttons/combine_button_locked.wav" )
		notification.AddLegacy( "the zoom was disabled on this server", NOTIFY_HINT, 3 )
		RunConsoleCommand("-zoom")
	end
end )
]]