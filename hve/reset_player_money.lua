concommand.Add( "resetmoney", function(ply)
    RunConsoleCommand("rp_resetallmoney")
    ply:EmitSound( "ambient/levels/labs/coinslot1.wav" )
end)
