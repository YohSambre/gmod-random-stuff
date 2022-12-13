local fuckredscreen = {
	["CHudDamageIndicator"] = true
}

hook.Add( "HUDShouldDraw", "HideHUD", function( name )
	if ( fuckredscreen[ name ] ) then
		return false
	end
end )