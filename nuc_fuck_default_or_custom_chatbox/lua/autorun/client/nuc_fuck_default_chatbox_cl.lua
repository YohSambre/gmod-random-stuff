--------------------------------------------
--*/ BASE
--------------------------------------------
hook.Add( "OnPlayerChat", "NUCHIDEDEFAULTCHATBOX", function()
	return true
end)


-- thx wiki
hook.Add( "PlayerBindPress", "NUCHIDEDEFAULTCHATBOXBIND", function(ply,bind)
    if bind == "messagemode" then
    	return true
    	elseif bind == "messagemode2" then
    	return true
	end
end)