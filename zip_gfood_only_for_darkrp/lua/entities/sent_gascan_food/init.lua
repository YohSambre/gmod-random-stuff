AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

--[[---------------------------------------------------------
   Name: Gascan
   Purpose: it smells so good the gasoline.
---------------------------------------------------------]]

function ENT:Initialize()
	self:SetModel("models/props_junk/gascan001a.mdl")
	self:SetRenderMode( RENDERMODE_TRANSCOLOR )
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)

	local phys = self:GetPhysicsObject()
	if	(phys:IsValid()) then
		phys:Wake()
	end
end

function ENT:Use(player, activator, caller)
	if ( activator:IsPlayer() ) then
			activator:Ignite(30)
			activator:EmitSound("npc/barnacle/barnacle_gulp2.wav", 50, 100)
		self.Entity:Remove()
	end
end
