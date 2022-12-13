--------------------------------------------
--*/ BASE
--------------------------------------------
hook.Add("Initialize", "NUC_FUCK_VANILLA_VOICE_PANEL", function() 
	hook.Remove( "InitPostEntity", "CreateVoiceVGUI" )
end)