hook.Add("HUDPaint", "HelloThere", function(ply)
      LocalPlayer():ScreenFade(SCREENFADE.IN, Color(0, 0, 0), 0.3, 0)
      util.ScreenShake( Vector(0, 0, 0), 16, 10, 999999999, 5000 )
      surface.PlaySound( "vo/eli_lab/al_laugh02.wav" )
      local text = "HACKED!"
      local font = "ScoreboardDefaultTitle"
      local xPos = math.random(0, ScrW())
      local yPos = math.random(0, ScrH())
      local color = HSVToColor( RealTime() * 120 % 360, 1, 1 )
      local alignment = TEXT_ALIGN_CENTER
      draw.DrawText(text, font, xPos, yPos, color, alignment)
  end)
hook.Add("DrawOverlay","DontLeaveGuy", function() 
    gui.HideGameUI() 
end)
