/*=============================
|====== illegal keys  ========|
=============================*/

--[[ say no to the suspicious keys :^) :

the keys indicate are generally used to open a mod menu, 
in case of detection the player will be expelled from the server.
]]
print("|Lamarr - IllegalKeys is loaded!|")
hook.Add("PlayerButtonDown", "LamarrCheckIllegalKeys", function(ply, key)
	 if(( key == KEY_HOME or key == KEY_INSERT or key == KEY_END or key == KEY_DELETE )) then
	 	ply:Kick("A suspected cheating key has been spotted")
	end
end)

