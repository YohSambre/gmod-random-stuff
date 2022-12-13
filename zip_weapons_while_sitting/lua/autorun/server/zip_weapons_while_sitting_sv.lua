-- suggest by Jamesinator
concommand.Add( "disable_weapons_in_vehicles", function( ply, cmd, args )
    ply:SetAllowWeaponsInVehicle( false )
end )

hook.Add( "PlayerSay", "DisableWeaponsInVehicles", function( ply, text )
	if ( string.lower( text ) == "/dwiv" ) then
		ply:SetAllowWeaponsInVehicle( false )
		return ""
	end
end )

local function MagicPower(ply)
	ply:SetAllowWeaponsInVehicle( true )
end

hook.Add( "CanPlayerEnterVehicle", "ZIPWEAPONSWHILESITTING", MagicPower )