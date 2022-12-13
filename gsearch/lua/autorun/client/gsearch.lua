print("::=======================::")
print("~ GSEARCH ~")
print("gametracker - sv_allowcslua 1 garry's mod servers checker")            
print("By YohSambre")
print("::=======================::")

concommand.Add( "gsearch", function(ply)
    surface.PlaySound("npc/turret_floor/deploy.wav")
    RunConsoleCommand("escape") -- if I don't do this the display is not correct
    local gsearchdframe = vgui.Create("DFrame") 
	 gsearchdframe:SetSize(900, 900) 
	 gsearchdframe:SetTitle("gsearch aka the complete list of gmod servers that allow sv_allowcslua listed in gametracker")
	 gsearchdframe:SetIcon( "icon16/application_xp_terminal.png" )
	 gsearchdframe:MakePopup()
     gsearchdframe:Center()
	 gsearchdframe.Paint = function(self, w, h)
	 draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 150 ) )
	 surface.SetDrawColor(Color(math.random(0, 255),math.random(0, 255),math.random(0, 255)), 5, 5, 2 ) -- Yepeeeeeeee
	 surface.DrawOutlinedRect( 1, 1, w - 1, h - 1 )
end

local gsearchhtml = vgui.Create("DHTML", gsearchdframe)
    gsearchhtml:Dock(FILL)
    gsearchhtml:OpenURL("https://www.gametracker.com/search/garrysmod/?search_by=server_variable&search_by2=sv_allowcslua&query=1&loc=_all&sort=c_numplayers&order=DESC&searchipp=50")
end)