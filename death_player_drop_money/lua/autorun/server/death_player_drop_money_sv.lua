-- request for code on the mtxserv discord > https://discord.gg/8bE3CupK
local function playerloosemoney(ply)
	ply:addMoney(-1000)
end

hook.Add( "PlayerDeath", "DPDM", playerloosemoney )
