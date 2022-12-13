local function Yuhuu(ply)
        ply:GodEnable()
        ply:SetMaterial("models/weapons/w_smg1/smg_crosshair") -- i love this material \o
        ply:PrintMessage( HUD_PRINTTALK, "[Spawn-Protection]: god mode and restrictions are activated." )
        -- BEFORE HOOK RESCTRICT
        hook.Add( "PlayerSpawnEffect", "SMOOTHSPAWNPROTECTIONRESTRICTEFFECT", function()
            return false
        end )
        hook.Add( "PlayerSpawnNPC", "SMOOTHSPAWNPROTECTIONRESTRICTNPC", function()
            return false
        end )
        hook.Add( "PlayerSpawnProp", "SMOOTHSPAWNPROTECTIONRESTRICTPROP", function()
            return false
        end )
        hook.Add( "PlayerSpawnRagdoll", "SMOOTHSPAWNPROTECTIONRESTRICTRAGDOLL", function()
            return false
        end )
        hook.Add( "PlayerSpawnSENT", "SMOOTHSPAWNPROTECTIONRESTRICTSENT", function()
            return false
        end )
        hook.Add( "PlayerSpawnSWEP", "SMOOTHSPAWNPROTECTIONRESTRICTSWEP", function()
            return false
        end )
        hook.Add( "PlayerSpawnVehicle", "SMOOTHSPAWNPROTECTIONRESTRICTVEHICLE", function()
            return false
        end )
        timer.Create( "NoGodNow", 7, 1, function() -- 8/10 seconds
        -- AFTER HOOK UNRESTRICT
        hook.Add( "PlayerSpawnEffect", "SMOOTHSPAWNPROTECTIONRESTRICTEFFECT", function()
            return true
        end )
        hook.Add( "PlayerSpawnNPC", "SMOOTHSPAWNPROTECTIONRESTRICTNPC", function()
            return true
        end )
        hook.Add( "PlayerSpawnProp", "SMOOTHSPAWNPROTECTIONRESTRICTPROP", function()
            return true
        end )
        hook.Add( "PlayerSpawnRagdoll", "SMOOTHSPAWNPROTECTIONRESTRICTRAGDOLL", function()
            return true
        end )
        hook.Add( "PlayerSpawnSENT", "SMOOTHSPAWNPROTECTIONRESTRICTSENT", function()
            return true
        end )
        hook.Add( "PlayerSpawnSWEP", "SMOOTHSPAWNPROTECTIONRESTRICTSWEP", function()
            return true
        end )
        hook.Add( "PlayerSpawnVehicle", "SMOOTHSPAWNPROTECTIONRESTRICTVEHICLE", function()
            return true
        end )
        ply:GodDisable()
        ply:SetMaterial("") -- restore default material
        ply:PrintMessage( HUD_PRINTTALK, "[Spawn-Protection]: god mode and restrictions are disabled." )
    end)
end
hook.Add( "PlayerSpawn", "ZIPSPAWNPROTECTION", Yuhuu )