AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

--[[---------------------------------------------------------
   Name: Hot Dog aka Chien chaud 
   Purpose: a well-cooked hot dog.
---------------------------------------------------------]]

function ENT:Initialize()
	self:SetModel("models/food/hotdog.mdl")
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
			local energy = activator:getDarkRPVar("Energy")
			activator:setSelfDarkRPVar( "Energy", math.Clamp( (energy or 100) + 50, 0, 100 )  )
			activator:EmitSound("npc/barnacle/neck_snap2.wav", 50, 100)
		self.Entity:Remove()
	end
end
