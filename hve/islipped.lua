--[[ I made this code following the visibility of a miserable payload on the discord of kvac, in short it is simple and funny, you are free to modify it]]
local function Yolo(ply)
	if ( ply:IsValid() ) then
        for _, wep in ipairs( ply:GetWeapons() ) do -- thx wiki
          	ply:DropWeapon( wep )
          	ply:EmitSound( "vo/k_lab/ba_whoops.wav" )
--                         | PART ULX |
          	if ulx then RunConsoleCommand("ulx", "logecho", "0") -- I don't want to see any notification crap spamming the chatbox
          	if ulx then RunConsoleCommand("ulx", "ragdoll", "*")
          	timer.Simple( 1, function() RunConsoleCommand("ulx", "unragdoll", "*")
          	   end)
          	end
            end
    	end
    end
end
hook.Add( "PlayerFootstep", "HVEOhshitIslippedagain", Yolo )
