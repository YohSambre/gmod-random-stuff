list.Set( "DesktopWindows", "ZIP MODE ADMIN", {
	title = "MODE ADMIN",
	icon = "iconmodeadmin/modeadminicon.png", -- credit: https://icon-library.com/icon/gmod-icon-24.html
	init = function( icon, window )
		local ModeAdminDFrame = vgui.Create( "DFrame" )
			--ModeAdminDFrame:SetPos( 100, 100 )	
			ModeAdminDFrame:Center()		 
			ModeAdminDFrame:SetSize( 300, 150 )		
			ModeAdminDFrame:SetTitle( " Mode Admin" )
			ModeAdminDFrame:SetIcon( "icon16/lightning.png" )
			ModeAdminDFrame:MakePopup()
			ModeAdminDFrame:ShowCloseButton(false)
			ModeAdminDFrame.Paint = function(self, w, h)	
			draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 150))
			surface.SetDrawColor(Color(255, 255, 255, 150))
			surface.DrawOutlinedRect( 1, 1, w - 1, h - 1 )
			end

		local QuitModeAdminDFrameclose = vgui.Create( "DButton", ModeAdminDFrame )
			QuitModeAdminDFrameclose:SetSize( 50, 15 )
			QuitModeAdminDFrameclose:SetPos( 262, 5 )
			QuitModeAdminDFrameclose:SetText( "❌" )
			QuitModeAdminDFrameclose:SetFont( "Default" )
			QuitModeAdminDFrameclose:SetTextColor( Color( 255, 255, 255 ) )
			QuitModeAdminDFrameclose.Paint = function()     
		end
			QuitModeAdminDFrameclose.DoClick = function()
    		ModeAdminDFrame:Close()
end

		local ModeAdminDermaButtonStaff = vgui.Create( "DButton", ModeAdminDFrame ) 
			ModeAdminDermaButtonStaff:SetText( "Activate staff mode" )
			ModeAdminDermaButtonStaff:SetToolTip( "automatically activates invincibility, invisibility and noclip" )										
			ModeAdminDermaButtonStaff:SetSize( 250, 30 )
			ModeAdminDermaButtonStaff:SetPos( 25, 50 )
			ModeAdminDermaButtonStaff.DoClick = function()
			ModeAdminDFrame:Close()
			notification.AddLegacy( "You are now in staff mode", NOTIFY_HINT, 3 )
			surface.PlaySound( "buttons/button15.wav" )
			RunConsoleCommand( "ulx", "god",  "^" )
			RunConsoleCommand( "ulx",  "cloak", "^" )
			RunConsoleCommand( "ulx",  "noclip", "^" )
		end

		local ModeAdminDermaButtonUnStaff = vgui.Create( "DButton", ModeAdminDFrame ) 
			ModeAdminDermaButtonUnStaff:SetText( "Disable staff mode" )
			ModeAdminDermaButtonUnStaff:SetToolTip( "disables invincibility, invisibility and noclip" )								
			ModeAdminDermaButtonUnStaff:SetSize( 250, 30 )
			ModeAdminDermaButtonUnStaff:SetPos( 25, 90 )					
			ModeAdminDermaButtonUnStaff.DoClick = function()
			ModeAdminDFrame:Close()
			notification.AddLegacy( "You are now in player mode", NOTIFY_HINT, 3 )
			surface.PlaySound( "buttons/button15.wav" )
			RunConsoleCommand( "ulx", "ungod",  "^" )
			RunConsoleCommand( "ulx",  "uncloak", "^" )
			RunConsoleCommand( "ulx",  "noclip", "^" )
		end
	end
} )