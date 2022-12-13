hook.Add( "PlayerSay", "ZIPCLEARDECALSCHATBOXCOMMAND", function( ply, text )
	if ( string.lower( text ) == "/cleardecals" ) then
		ply:ConCommand( "r_cleardecals")
		ply:SendLua( "game.RemoveRagdolls()" )
		return ""
	end
end )

concommand.Add( "clear_decals_ragdolls", function( ply, cmd, args )
	ply:SendLua( "game.RemoveRagdolls()" )
end )

concommand.Add( "clear_rdecals", function( ply, cmd, args )
	ply:SendLua( "r_cleardecals" )
end )
-- suggested by Zsombor99
concommand.Add( "clear_decals", function( ply, cmd, args )
    ply:ConCommand( "r_cleardecals")
	ply:SendLua( "game.RemoveRagdolls()" )
end )