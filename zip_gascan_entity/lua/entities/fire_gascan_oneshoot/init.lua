AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
    self:SetModel( "models/props_junk/gascan001a.mdl" )
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
--                           v "true" for active | "false" for disable
        ["prop_physics"] = true, -- players will be able to fire their own prop
--        v EXAMPLE v 
--      ["class_entity"] = true,
        -- Add here other entity classes here if necessary
    }
    if IsValid(ent) and Customisableclass[ent:GetClass()] then
        self:EmitSound("player/sprayer.wav")
        ent:Ignite(30)
        local fireeffectdata = EffectData()
        fireeffectdata:SetOrigin(self:GetPos())
        fireeffectdata:SetEntity(self)
        util.Effect("gunshotsplash", fireeffectdata)
        self:Remove()
    end
end



