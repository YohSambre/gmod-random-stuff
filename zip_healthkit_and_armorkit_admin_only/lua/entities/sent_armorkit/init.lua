AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

--[[---------------------------------------------------------
   Name: Armor Ball
   Purpose: a good dose of extra armor.
---------------------------------------------------------]]

function ENT:Initialize()
	self:SetModel("models/Items/HealthKit.mdl")
	self:SetColor( Color( 51, 102, 255 ) ) 
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
	player:SetArmor(999999999)
	activator:EmitSound("npc/barnacle/barnacle_gulp2.wav", 50, 100)
	self.Entity:Remove()
	end
end
