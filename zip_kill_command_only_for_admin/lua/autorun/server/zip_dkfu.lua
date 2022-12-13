local function BlockUserKillCommand(ply)
	if not ply:IsAdmin() then
		ply:ChatPrint("You don't have permission to do this (Only admin).")
		ply:EmitSound( "buttons/combine_button_locked.wav")
		return false
	end
end
hook.Add( "CanPlayerSuicide", "DisableKillCommandForUser", BlockUserKillCommand )