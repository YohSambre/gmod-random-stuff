local function SoundAmbient()
    RunConsoleCommand("sam", "playsound", "sound.mp3")
--                                            ^ mp3 file name
    timer.Create( "Warstime", 420, 0, function()
--                             ^ mp3 file time in seconds
        RunConsoleCommand("sam", "playsound", "sound.mp3")
--                                               ^ mp3 file name
    end)
end
hook.Add( "PlayerInitialSpawn", "SooEz", SoundAmbient )