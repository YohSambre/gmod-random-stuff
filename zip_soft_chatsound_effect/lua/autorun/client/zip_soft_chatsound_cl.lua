local soundemittedbytheplayer = Sound("ambient/machines/keyboard1_clicks.wav") 
hook.Add("OnPlayerChat", "ZIPPLAYERTYPESKEYBOARD", function(ply) 
	ply:EmitSound(soundemittedbytheplayer) 
end)