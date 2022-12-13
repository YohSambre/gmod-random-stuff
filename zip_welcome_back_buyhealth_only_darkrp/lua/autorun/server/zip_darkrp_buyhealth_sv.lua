local darkrphealthcommanddelay = 0
local darkrphealthsound = Sound("items/smallmedkit1.wav")
hook.Add( "PlayerSay", "WelcomeHealthCommand", function( ply, text ) 
	if ( string.lower( text ) == "/buyhealth" ) then
		if CurTime() < darkrphealthcommanddelay then return end 
		ply:EmitSound(darkrphealthsound)
		ply:addMoney( -1000) 
		ply:SetHealth( 100 )
		darkrphealthcommanddelay = CurTime() + 300 -- no abuse possible with such a duration
		return "" 
	end
end)