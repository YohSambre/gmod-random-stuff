--[[ idea : https://aide-serveur.fr/threads/apparaitre-avec-un-job-si-on-a-un-certain-grade-ulx.84681/
The idea is original, i executed this but there is a way to do it cleaner
]]
hook.Add( "PlayerInitialSpawn", "IfAdminSetJobStaff", function( ply ) -- the Initialspawn hook seems to me to be the most appropriate 
    if ( ply:IsAdmin() ) then
    ply:SetTeam(TEAM_STAFF) -- replace by the team of your choice
    end
end)
