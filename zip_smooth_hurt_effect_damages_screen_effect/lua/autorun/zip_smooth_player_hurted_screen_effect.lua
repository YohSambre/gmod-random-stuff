hook.Add( "PlayerHurt", "momwhydoihavetosuffer", function(ply)
	ply:ScreenFade( SCREENFADE.IN, Color( 0, 0, 0 ), 0.3, 0 )
end)