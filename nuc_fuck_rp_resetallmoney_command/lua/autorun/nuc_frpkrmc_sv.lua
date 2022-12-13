--------------------------------------------
--*/ NUC JOIN THE BATTLE
--------------------------------------------
MsgC (Color(255, 255, 255), [[                                                                                                              
= NUC - Fuck rp_resetallmoney command loaded!
]])

--------------------------------------------
--*/ BASE
--------------------------------------------
hook.Add( "Initialize", "NUC_FUCK_RP_RESETALLMONEY_COMMAND", function() 
	concommand.Remove( "rp_resetallmoney" )   
end)
