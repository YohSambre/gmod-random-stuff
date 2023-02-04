--[[ just a piece of code that locks the player in and prevents them from leaving the server accompanied by a nasty noise and fake close button.
this is a code I made quickly that got lost on my hard drive, you are free to modify it
]]
local function Joke()
    Derma_Message("Lua Panic Error!", "ERROR", "Leave this server")
    surface.PlaySound( "npc/attack_helicopter/aheli_crash_alert2.wav" ) -- not the worst noise
end

hook.Add( "Think", "VGhlUG9zdGFsRHVkZUlzSGVyZTE=", Joke )
