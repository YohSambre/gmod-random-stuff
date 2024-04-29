local function SoundAmbient(ply)
    ply:SendLua([[RunConsoleCommand('ulx', 'playsound', 'sound.mp3')]])
--                                                          ^ mp3 file name
    timer.Create("badambient", 600, 0, function()
        --                      ^ mp3 file time in seconds
        ply:SendLua([[RunConsoleCommand('ulx', 'playsound', 'sound.mp3')]])
--                                                              ^ mp3 file name
    end)
end
hook.Add("PlayerInitialSpawn", "SooEz", SoundAmbient)
