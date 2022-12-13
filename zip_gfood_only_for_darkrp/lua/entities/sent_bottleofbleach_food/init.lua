AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

--[[---------------------------------------------------------
   Name: Bleach
   Purpose: to be used only if you are under 3 years old
---------------------------------------------------------]]

function ENT:Initialize()
	self:SetModel("models/props_junk/garbage_plasticbottle001a.mdl")
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
			activator:Kill()
			activator:EmitSound("npc/barnacle/barnacle_gulp2.wav", 50, 100)
		self.Entity:Remove()
	end
end
