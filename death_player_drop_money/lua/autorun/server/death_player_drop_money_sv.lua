local function playerloosemoney(ply)
	ply:addMoney(-1000)
end

hook.Add( "PlayerDeath", "DPDM", playerloosemoney )