--------------------------------------------
--*/ NUC JOIN THE BATTLE
--------------------------------------------
MsgC (Color(255, 255, 255), [[                                                                                                              
= NUC - Fuck Vanilla Flashlight loaded!
]])

--------------------------------------------
--*/ BASE
--------------------------------------------
hook.Add( "PlayerSwitchFlashlight", "NUCBlockFlashLight", function( ply, enabled )
	return false
end )