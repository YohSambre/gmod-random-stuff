--[[ forces the player to stay out of his vehicle , you are free to modify it]]
hook.Add( "PlayerEnteredVehicle", "01010101011010101011", function( ply, veh )
    ply:Ignite(30)
end)

hook.Add( "PlayerLeaveVehicle", "10101010101101010100101", function( ply, veh )
    ply:Extinguish()
end)
