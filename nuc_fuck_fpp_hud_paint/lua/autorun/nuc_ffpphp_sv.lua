--------------------------------------------
--*/ NUC JOIN THE BATTLE
--------------------------------------------
MsgC (Color(255, 255, 255), [[                                                                                                              
= NUC - Fuck FPP HUD PAINT loaded!
]])

--------------------------------------------
--*/ BASE
--------------------------------------------
hook.Add( "Initialize", "NUC_FUCK_FPP_HUDPAINT", function() 
	hook.Remove( "HUDPaint", "FPP_HUDPaint" )  
end)

