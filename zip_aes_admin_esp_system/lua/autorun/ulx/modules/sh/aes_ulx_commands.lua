local CATEGORY_NAME = "AES - ULX COMMANDS"
------------------------------ SHOW ESP ------------------------------
function ulx.aes( calling_ply, target_plys )
    for _, v in ipairs( target_plys ) do
        v:ConCommand("show_esp")
    end
end
local aes = ulx.command( CATEGORY_NAME, "ulx aes", ulx.aes, "!aes", false, false, true )
aes:addParam{ type=ULib.cmds.PlayersArg }
aes:defaultAccess( ULib.ACCESS_ADMIN )
aes:help( "display esp." )

------------------------------ HIDE ESP ------------------------------
function ulx.noaes( calling_ply, target_plys )
    for _, v in ipairs( target_plys ) do
        v:ConCommand("hide_esp")
    end
end
local noaes = ulx.command( CATEGORY_NAME, "ulx noaes", ulx.noaes, "!noaes", false, false, true )
noaes:addParam{ type=ULib.cmds.PlayersArg }
noaes:defaultAccess( ULib.ACCESS_ADMIN )
noaes:help( "hide esp." )