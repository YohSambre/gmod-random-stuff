AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

--[[---------------------------------------------------------
   Name: Healh Ball
   Purpose: a good dose of extra health (999999999)
---------------------------------------------------------]]

function ENT:Initialize()
	self:SetModel("models/Items/HealthKit.mdl")
	self:SetColor( Color( 0, 204, 0 ) ) 
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
	player:SetHealth(999999999)
	activator:EmitSound("npc/barnacle/barnacle_gulp1.wav", 50, 100)
	self.Entity:Remove()
	end
end
