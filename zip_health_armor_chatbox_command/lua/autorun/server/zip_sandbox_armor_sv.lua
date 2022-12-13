local armorcommanddelay = 0
local armorhsound = Sound("items/battery_pickup.wav")

hook.Add( "PlayerSay", "WelcomeArmorCommand", function( ply, text ) 
	if ( string.lower( text ) == "/armor" ) then
		if CurTime() < armorcommanddelay then return end 
		ply:EmitSound(armorhsound)
		ply:SetArmor( 100 )
		armorcommanddelay = CurTime() + 10 -- 10 seconds should be reasonable to avoid bind command abuse
		return "" 
	end
end)