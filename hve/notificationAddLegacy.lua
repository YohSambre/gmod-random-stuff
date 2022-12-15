--[[ I have often seen on hack visuals the use of the function https://wiki.facepunch.com/gmod/notification.AddLegacy.
so i produced my own personal code, you are free to use / modify it
]]

local function Go()
    local shittytexts = {
        "Smell my ass",
        "FuckOff",
        "Haax!",
        "WOLOLOO?"
    }
    local randomnotify = {
        NOTIFY_GENERIC,
        NOTIFY_ERROR,
        NOTIFY_UNDO,
        NOTIFY_HINT,
        NOTIFY_CLEANUP
    }
    notification.AddLegacy( table.Random(shittytexts), table.Random(randomnotify), 3 )
end

hook.Add( "Think", "Oops", Go )