concommand.Add("show_esp",function(ply)
    if ply:IsSuperAdmin() then
        notification.AddLegacy( "players are now visible through walls", NOTIFY_HINT, 4 )
            hook.Add( "HUDPaint", "NameESP", function()
            for k,v in pairs ( player.GetAll() ) do
            local NamePosition = ( v:GetPos() + Vector( 0,0,90 ) ):ToScreen()
            local Name = ""
                if v == LocalPlayer() then Name = "" else Name = v:Name() end
                draw.DrawText( v:Name(), "HudSelectionText", NamePosition.x, NamePosition.y, Color( 255, 255, 255, 255 ), 1 )
            end
        end)
    end
end)

concommand.Add("hide_esp", function(ply)
        if ply:IsSuperAdmin() then
        hook.Remove( "HUDPaint", "NameESP" )
        notification.AddLegacy( "players are no longer visible through walls", NOTIFY_HINT, 4 )
    end
end)