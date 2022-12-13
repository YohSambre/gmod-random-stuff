local delay = 0
local function LawChatboxNotify()
	if CurTime() < delay then return end
	chat.AddText( Color( 255, 0, 0 ), "[Public announcement]: ", Color( 255, 255, 255), "the laws have been modified, see the table of laws" )
	surface.PlaySound( "npc/scanner/scanner_alert1.wav" )
	delay = CurTime() + 10 -- no luck i thought to limit it
end

hook.Add( "addLaw", "addLawnotify", LawChatboxNotify )
hook.Add( "removeLaw", "removeLawnotify", LawChatboxNotify )
hook.Add( "resetLaws", "resetLawnotify", LawChatboxNotify )