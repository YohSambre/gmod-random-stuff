local healthcommanddelay = 0
local healthsound = Sound("items/smallmedkit1.wav")
hook.Add( "PlayerSay", "WelcomeHealthCommand", function( ply, text ) 
	if ( string.lower( text ) == "/health" ) then
		if CurTime() < healthcommanddelay then return end 
		ply:EmitSound(healthsound)
		ply:SetHealth( 100 )
		healthcommanddelay = CurTime() + 10 -- 10 seconds should be reasonable to avoid bind command abuse
		return "" 
	end
end)