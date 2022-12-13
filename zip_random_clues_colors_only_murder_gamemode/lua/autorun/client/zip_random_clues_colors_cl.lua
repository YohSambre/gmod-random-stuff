hook.Add( "PreDrawHalos", "HaloRandomCluesColors", function()
	halo.Add( ents.FindByClass( "mu_loot" ), Color(math.random(0, 255),math.random(0, 255),math.random(0, 255)), 5, 5, 2 )
end )