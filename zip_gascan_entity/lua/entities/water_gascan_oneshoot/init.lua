AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
    self:SetModel( "models/props_junk/metalgascan.mdl" )
    self:PhysicsInit( SOLID_VPHYSICS )
    self:SetMoveType( MOVETYPE_VPHYSICS ) 
    self:SetSolid( SOLID_VPHYSICS )
    local phys = self:GetPhysicsObject() 
    if phys:IsValid() then 
       phys:Wake() 
    end
end

function ENT:Touch(ent)
    local Customisableclass = {
        ["prop_physics"] = true,  -- Les joueurs pourront tirer leurs propres props
        -- Ajoutez ici d'autres classes d'entités si nécessaire
    }
    
    if IsValid(ent) and Customisableclass[ent:GetClass()] then
        self:EmitSound("player/pl_drown1.wav")
        ent:Extinguish()
        local watereffectdata = EffectData()
        watereffectdata:SetOrigin(self:GetPos())
        watereffectdata:SetEntity(self)
        util.Effect("watersplash", watereffectdata)
        self:Remove()
    end
end




