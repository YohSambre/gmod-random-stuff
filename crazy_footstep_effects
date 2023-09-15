hook.Add( "PlayerFootstep", "friendlyStalkerEffects", function(ply)
    ply:EmitSound( "npc/stalker/go_alert2a.wav" ) -- so loud
    ply:ScreenFade( SCREENFADE.MODULATE, Color( 0, 0, 0 ), 0.3, 0 )
    ply:ConCommand("say *SCREAM*!") -- show panic in the chatbox
end)
