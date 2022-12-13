local blackandwhitesettings = {
	["$pp_colour_brightness"] = 0,
	["$pp_colour_contrast"] = 1,
	["$pp_colour_colour"] = 0,
}
hook.Add("RenderScreenspaceEffects", "ZIPBlackAndWhitePlayerVision", function()
	DrawColorModify(blackandwhitesettings) --Draws Color Modify effect
end)