-- suggested by Zray
hook.Add( "AddToolMenuCategories", "ClearDecalsCustomCategory", function()
	spawnmenu.AddToolCategory( "Utilities", "ClearDecals", "#ClearDecals" )
end )

hook.Add( "PopulateToolMenu", "ClearDecalsCustomMenuSettings", function()
	spawnmenu.AddToolMenuOption( "Utilities", "ClearDecals", "Custom_Menu", "#ClearDecals", "", "", function( panel )
		panel:AddControl( "Header", { Description = "#The buttons below will allow you to clean the decals of your choice" } )
		panel:AddControl("button", {Text = "Clear Decals - Decals (blood / bullet marks)", Command = "r_cleardecals"})
		panel:AddControl("button", {Text = "Clear Decals - Ragdolls", Command = "clear_decals_ragdolls"})
		panel:AddControl("Label", {Text = "Clear Decals - 2022/2023 By YohSambre"})
	end )
end )