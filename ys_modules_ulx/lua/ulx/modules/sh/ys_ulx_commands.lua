local CATEGORY_NAME = "YS - ULX COMMANDS"

------------------------------ 1.BOOM! ------------------------------
function ulx.boom( calling_ply, target_plys )
    for i=1, #target_plys do
        local v = target_plys[ i ]
        if ulx.getExclusive( v, calling_ply ) then
        ULib.tsayError( calling_ply, ulx.getExclusive( v, calling_ply ), true )
        else if not v:Alive() then
        ULib.tsayError( calling_ply, v:Nick() .. " is already dead!", true )
        else
        local exp = ents.Create( "env_explosion" )
        exp:Spawn()
        exp:SetPos( v:GetPos() )
        exp:Fire( "Explode" )
        exp:SetKeyValue( "IMagnitude", 250 ) -- exaggerated value to make sure the player dies
            end
        end
    end
end
local boom = ulx.command( CATEGORY_NAME, "ulx boom", ulx.boom, "!boom" )
boom:addParam{ type=ULib.cmds.PlayersArg }
boom:defaultAccess( ULib.ACCESS_ADMIN )
boom:help( "makes the player explode. (KABOOM)" )

------------------------------ 2.FORCE EXIT VEHICLE! ------------------------------
function ulx.exit( calling_ply, target_plys, ply )
    for i=1, #target_plys do
        local v = target_plys[ i ]
        if ulx.getExclusive( v, calling_ply ) then
        ULib.tsayError( calling_ply, ulx.getExclusive( v, calling_ply ), true )
        else if not v:Alive() or not v:InVehicle() then
        ULib.tsayError( calling_ply, v:Nick() .. " is dead or not in a vehicle!", true )
        else
        v:ExitVehicle()
            end
        end
    end
end
local exit = ulx.command( CATEGORY_NAME, "ulx exit", ulx.exit, "!exit" )
exit:addParam{ type=ULib.cmds.PlayersArg }
exit:defaultAccess( ULib.ACCESS_ADMIN )
exit:help( "forces the player to get out of his vehicle. (logically compatible with all vehicles in the game)" )

------------------------------ 3.KIT! ------------------------------
function ulx.kit( calling_ply, target_plys )
    for i=1, #target_plys do
        local v = target_plys[ i ]
        if ulx.getExclusive( v, calling_ply ) then
        ULib.tsayError( calling_ply, ulx.getExclusive( v, calling_ply ), true )
        else if not v:Alive() then
        ULib.tsayError( calling_ply, v:Nick() .. " too late it is already dead!", true )
        else
        local kit = ents.Create( "item_healthkit" )
        kit:Spawn()
        kit:SetPos( v:GetPos() )
            end
        end
    end
end
local kit = ulx.command( CATEGORY_NAME, "ulx kit", ulx.kit, "!kit" )
kit:addParam{ type=ULib.cmds.PlayersArg }
kit:defaultAccess( ULib.ACCESS_ADMIN )
kit:help( "gives 25% of medkit on the player. (poor equivalent of the set hp)" )

------------------------------ 4.BATTERY! ------------------------------
function ulx.battery( calling_ply, target_plys )
    for i=1, #target_plys do
        local v = target_plys[ i ]
        if ulx.getExclusive( v, calling_ply ) then
        ULib.tsayError( calling_ply, ulx.getExclusive( v, calling_ply ), true )
        else if not v:Alive() then
        ULib.tsayError( calling_ply, v:Nick() .. " too late it is already dead!", true )
        else
        local battery = ents.Create( "item_battery" )
        battery:Spawn()
        battery:SetPos( v:GetPos() )
            end
        end
    end
end
local battery = ulx.command( CATEGORY_NAME, "ulx battery", ulx.battery, "!battery" )
battery:addParam{ type=ULib.cmds.PlayersArg }
battery:defaultAccess( ULib.ACCESS_ADMIN )
battery:help( "gives 25% of armor on the player. (poor equivalent of the set armor)" )

------------------------------ 5.MANHACK! ------------------------------
function ulx.manhack( calling_ply, target_plys )
    for i=1, #target_plys do
        local v = target_plys[ i ]
        if ulx.getExclusive( v, calling_ply ) then
        ULib.tsayError( calling_ply, ulx.getExclusive( v, calling_ply ), true )
        else if not v:Alive() then
        ULib.tsayError( calling_ply, v:Nick() .. " is already dead!", true )
        else
        local manhack = ents.Create( "npc_manhack" )
        manhack:Spawn()
        manhack:SetPos( v:GetPos() )
            end
        end
    end
end
local manhack = ulx.command( CATEGORY_NAME, "ulx manhack", ulx.manhack, "!manhack" )
manhack:addParam{ type=ULib.cmds.PlayersArg }
manhack:defaultAccess( ULib.ACCESS_ADMIN )
manhack:help( "makes a manhack appear on the player (DONT SPAM)." )

------------------------------ 6.FART! ------------------------------
function ulx.fart( calling_ply, target_plys )
    for i=1, #target_plys do
        local v = target_plys[ i ]
        if ulx.getExclusive( v, calling_ply ) then
        ULib.tsayError( calling_ply, ulx.getExclusive( v, calling_ply ), true )
        else if not v:Alive() then
        ULib.tsayError( calling_ply, v:Nick() .. " he's dead he can't fart!", true )
        else
        local fart = ents.Create( "env_ar2explosion" )
        fart:Spawn()
        fart:SetPos( v:GetPos() )
        fart:Fire( "Explode" )
            end
        end
    end
end
local fart = ulx.command( CATEGORY_NAME, "ulx fart", ulx.fart, "!fart" )
fart:addParam{ type=ULib.cmds.PlayersArg }
fart:defaultAccess( ULib.ACCESS_ADMIN )
fart:help( "fart target(s)." )

------------------------------ 7.FORCE PLAYER ALL WEAPONS DROP! ------------------------------
function ulx.forcedrop( calling_ply, target_plys )
    for i=1, #target_plys do
        local v = target_plys[ i ]
        if ulx.getExclusive( v, calling_ply ) then
        ULib.tsayError( calling_ply, ulx.getExclusive( v, calling_ply ), true )
        else if not v:Alive() then
        ULib.tsayError( calling_ply, v:Nick() .. " he's dead he can't forcedrop!", true )
        else
            if ( v:IsValid() ) then
                for _, wep in ipairs( v:GetWeapons() ) do -- thx wiki
                v:DropWeapon( wep )
                    end
                end
            end
        end
    end
end
local forcedrop = ulx.command( CATEGORY_NAME, "ulx forcedrop", ulx.forcedrop, "!forcedrop" )
forcedrop:addParam{ type=ULib.cmds.PlayersArg }
forcedrop:defaultAccess( ULib.ACCESS_ADMIN )
forcedrop:help( "drops all the player's weapons." )

------------------------------ 8.SET PLAYER FRAG ------------------------------
function ulx.addfrag( calling_ply, target_plys, amount )
    for i=1, #target_plys do
        target_plys[ i ]:AddFrags( amount )
    end
end
local addfrag = ulx.command( CATEGORY_NAME, "ulx addfrag", ulx.addfrag, "!addfrag" )
addfrag:addParam{ type=ULib.cmds.PlayersArg }
addfrag:addParam{ type=ULib.cmds.NumArg, min=-1, max=666, hint="addfrag", ULib.cmds.round }
addfrag:defaultAccess( ULib.ACCESS_ADMIN )
addfrag:help( "add frag for target(s)." )

------------------------------ 9.SET PLAYER FRAG ------------------------------
function ulx.adddeath( calling_ply, target_plys, amount )
    for i=1, #target_plys do
        target_plys[ i ]:AddDeaths( amount )
    end
end
local adddeath = ulx.command( CATEGORY_NAME, "ulx adddeath", ulx.adddeath, "!adddeath" )
adddeath:addParam{ type=ULib.cmds.PlayersArg }
adddeath:addParam{ type=ULib.cmds.NumArg, min=-1, max=666, hint="adddeath", ULib.cmds.round }
adddeath:defaultAccess( ULib.ACCESS_ADMIN )
adddeath:help( "add death for target(s)." )

------------------------------ 10.WELCOME BACK PLAYER FLASHLIGHT ------------------------------
function ulx.onflashlight( calling_ply, target_plys, ply )
    for i=1, #target_plys do
        local v = target_plys[ i ]
        v:AllowFlashlight(true)
        end
    end
local onflashlight = ulx.command( CATEGORY_NAME, "ulx onflashlight", ulx.onflashlight, "!onflashlight" )
onflashlight:addParam{ type=ULib.cmds.PlayersArg }
onflashlight:defaultAccess( ULib.ACCESS_ADMIN )
onflashlight:help( "gives the player the possibility to turn on his flashlight." )

------------------------------ 11.FORCE DISABLE PLAYER FLASHLIGHT ------------------------------
function ulx.offlashlight( calling_ply, target_plys, ply )
    for i=1, #target_plys do
        local v = target_plys[ i ]
        v:AllowFlashlight(false)
        end
    end
local offflashlight = ulx.command( CATEGORY_NAME, "ulx offlashlight", ulx.offlashlight, "!offlashlight" )
offflashlight:addParam{ type=ULib.cmds.PlayersArg }
offflashlight:defaultAccess( ULib.ACCESS_ADMIN )
offflashlight:help( "removes the player's ability to use the game's basic flashlight." )

------------------------------ 12.FORCE RETRY PLAYER ------------------------------
function ulx.retry( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        v:ConCommand("retry")
    end
end
local retry = ulx.command( CATEGORY_NAME, "ulx retry", ulx.retry, "!retry", false, false, true )
retry:addParam{ type=ULib.cmds.PlayersArg }
retry:defaultAccess( ULib.ACCESS_ADMIN )
retry:help( "a restart the game session from  of target(s)." )

----------------------------- 13.HELICO GRENADAAA! ------------------------------
function ulx.helicogrenade( calling_ply, target_plys )
    for i=1, #target_plys do
        local v = target_plys[ i ]
        if ulx.getExclusive( v, calling_ply ) then
        ULib.tsayError( calling_ply, ulx.getExclusive( v, calling_ply ), true )
        else if not v:Alive() then
        ULib.tsayError( calling_ply, v:Nick() .. " is already dead!", true )
        else
        local helicogrenade = ents.Create( "grenade_helicopter" )
        helicogrenade:Spawn()
        helicogrenade:SetPos( v:GetPos() )
            end
        end
    end
end
local helicogrenade = ulx.command( CATEGORY_NAME, "ulx helicogrenade", ulx.helicogrenade, "!helicogrenade" )
helicogrenade:addParam{ type=ULib.cmds.PlayersArg }
helicogrenade:defaultAccess( ULib.ACCESS_ADMIN )
helicogrenade:help( "makes a helicogrenade appear on the player (DONT SPAM)." )

------------------------------ 14.FORCE SHOW MOTD PLAYER! ------------------------------
function ulx.showmotd( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        v:ConCommand("ulx motd") -- Who knows one day i will make sure that the custom motds is shown
    end
end
local showmotd = ulx.command( CATEGORY_NAME, "ulx showmotd", ulx.showmotd, "!showmotd", false, false, true )
showmotd:addParam{ type=ULib.cmds.PlayersArg }
showmotd:defaultAccess( ULib.ACCESS_ADMIN )
showmotd:help( "force the player to read the wordd." )

------------------------------ 15.FORCE SCREENSHOOT PLAYER! ------------------------------
function ulx.forcejpeg( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        timer.Create( "GrabSandboxCamera", 0.1, 0, function() v:Give( "gmod_camera" ) v:SelectWeapon( "gmod_camera" ) end ) -- this is the only method i found that is allowed (https://wiki.facepunch.com/gmod/Server_Operator_Rules)
    end
end
local forcejpeg = ulx.command( CATEGORY_NAME, "ulx forcejpeg", ulx.forcejpeg, "!forcejpeg", false, false, true )
forcejpeg:addParam{ type=ULib.cmds.PlayersArg }
forcejpeg:defaultAccess( ULib.ACCESS_ADMIN )
forcejpeg:help( "force the player to screenshoot the game. (Server Operator Rules friendly)" )

------------------------------ 16.UNFORCE SCREENSHOOT PLAYER! ------------------------------
function ulx.unforcejpeg( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        timer.Remove( "GrabSandboxCamera" )
    end
end
local unforcejpeg = ulx.command( CATEGORY_NAME, "ulx unforcejpeg", ulx.unforcejpeg, "!unforcejpeg", false, false, true )
unforcejpeg:addParam{ type=ULib.cmds.PlayersArg }
unforcejpeg:defaultAccess( ULib.ACCESS_ADMIN )
unforcejpeg:help( "gives back to the player the possibility to not take the camera by force anymore." )

------------------------------ 17.FORCE CLEANUP ENTITIES PLAYER! ------------------------------
function ulx.cleanup( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        v:ConCommand("gmod_cleanup")
    end
end
local cleanup = ulx.command( CATEGORY_NAME, "ulx cleanup", ulx.cleanup, "!cleanup", false, false, true )
cleanup:addParam{ type=ULib.cmds.PlayersArg }
cleanup:defaultAccess( ULib.ACCESS_ADMIN )
cleanup:help( "removes all entities spawned by the player. (handy against players who spam the ropes or props to crash the server)" )

------------------------------ 18.FORCE SCREENSHAKE PLAYER! ------------------------------
function ulx.screenshake( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        util.ScreenShake( Vector(0, 0, 0), 5, 5, 5, 9000 ) -- thx wiki
    end
end
local screenshake = ulx.command( CATEGORY_NAME, "ulx screenshake", ulx.screenshake, "!screenshake", false, false, true )
screenshake:addParam{ type=ULib.cmds.PlayersArg }
screenshake:defaultAccess( ULib.ACCESS_ADMIN )
screenshake:help( "makes the player's screen shake." )

------------------------------ 19.SET MODEL PLAYER! ------------------------------
function ulx.setmodel( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        v:SetModel( command )
    end
end
local setmodel = ulx.command( CATEGORY_NAME, "ulx setmodel", ulx.setmodel, "!setmodel", false, false, true )
setmodel:addParam{ type=ULib.cmds.PlayersArg }
setmodel:addParam{ type=ULib.cmds.StringArg, hint="models/example.mdl", ULib.cmds.takeRestOfLine }
setmodel:defaultAccess( ULib.ACCESS_ADMIN )
setmodel:help( "change the player's model. (works with the playermodels)" )

------------------------------ 20.BYE BYE CROSSHAIR! ------------------------------
function ulx.uncrosshair( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        v:CrosshairDisable()
    end
end
local uncrosshair = ulx.command( CATEGORY_NAME, "ulx uncrosshair", ulx.uncrosshair, "!uncrosshair", false, false, true )
uncrosshair:addParam{ type=ULib.cmds.PlayersArg }
uncrosshair:defaultAccess( ULib.ACCESS_ADMIN )
uncrosshair:help( "hide the crosshair half life 2." )

------------------------------ 21.WELCOME BACK CROSSHAIR! ------------------------------
function ulx.crosshair( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        v:CrosshairEnable()
    end
end
local crosshair = ulx.command( CATEGORY_NAME, "ulx crosshair", ulx.crosshair, "!crosshair", false, false, true )
crosshair:addParam{ type=ULib.cmds.PlayersArg }
crosshair:defaultAccess( ULib.ACCESS_ADMIN )
crosshair:help( "show the crosshair half life 2." )

------------------------------ 22.SET PLAYER WALKSPEED ------------------------------
function ulx.setwalkspeed( calling_ply, target_plys, amount )
    for i=1, #target_plys do
        target_plys[ i ]:SetWalkSpeed( amount )
    end
end
local setwalkspeed = ulx.command( CATEGORY_NAME, "ulx setwalkspeed", ulx.setwalkspeed, "!setwalkspeed" )
setwalkspeed:addParam{ type=ULib.cmds.PlayersArg }
setwalkspeed:addParam{ type=ULib.cmds.NumArg, min=0, max=99999, hint="setwalkspeed", ULib.cmds.round }
setwalkspeed:defaultAccess( ULib.ACCESS_ADMIN )
setwalkspeed:help( "changes the player's walking speed. (default value is 250)" )

------------------------------ 23.DISPLAY CUSTOM MESSAGE FOR PLAYER ------------------------------
function ulx.hudmessage( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        v:PrintMessage( HUD_PRINTCENTER,( command ))
    end
end
local hudmessage = ulx.command( CATEGORY_NAME, "ulx hudmessage", ulx.hudmessage, "!hudmessage", false, false, true )
hudmessage:addParam{ type=ULib.cmds.PlayersArg }
hudmessage:addParam{ type=ULib.cmds.StringArg, hint="models/example.mdl", ULib.cmds.takeRestOfLine }
hudmessage:defaultAccess( ULib.ACCESS_ADMIN )
hudmessage:help( "change the player's model. (works with the playermodels)" )

------------------------------ 24.FORCE PLAYER SAY! ------------------------------
function ulx.forcesay( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        v:Say( command )
    end
end
local forcesay = ulx.command( CATEGORY_NAME, "ulx forcesay", ulx.forcesay, "!forcesay", false, false, true )
forcesay:addParam{ type=ULib.cmds.PlayersArg }
forcesay:addParam{ type=ULib.cmds.StringArg, hint="write text here.", ULib.cmds.takeRestOfLine }
forcesay:defaultAccess( ULib.ACCESS_ADMIN )
forcesay:help( "change the player's model. (works with the playermodels)" )

------------------------------ 25.SENDLUA ! ------------------------------
function ulx.sendlua( calling_ply, target_plys, command )
    for _, v in ipairs( target_plys ) do
        v:SendLua( command )
    end
end
local sendlua = ulx.command( CATEGORY_NAME, "ulx sendlua", ulx.sendlua, "!sendlua", false, false, true )
sendlua:addParam{ type=ULib.cmds.PlayersArg }
sendlua:addParam{ type=ULib.cmds.StringArg, hint="write the code here.", ULib.cmds.takeRestOfLine }
sendlua:defaultAccess( ULib.ACCESS_ADMIN )
sendlua:help( "allows you to run code on the player. (if the code is invalid an error window will appear)" )