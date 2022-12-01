hook.Add( "PlayerSpawn", "PrintIfAdmin", function( ply )
    if ( ply:IsAdmin() ) then
    ply:SetTeam(TEAM_MAYOR)
    end
end)