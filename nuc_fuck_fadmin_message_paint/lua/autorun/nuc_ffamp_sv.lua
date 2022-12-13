--------------------------------------------
--*/ NUC JOIN THE BATTLE
--------------------------------------------
MsgC (Color(255, 255, 255), [[                                                                                                              
= NUC - Fuck Fadmin Message Paint loaded!
]])

--------------------------------------------
--*/ BASE
--------------------------------------------
hook.Add( "Initialize", "NUC_FUCK_FADMIN_MESSAGE_PAINT", function() 
	hook.Remove( "HUDPaint", "FAdmin_MessagePaint" )
end)

