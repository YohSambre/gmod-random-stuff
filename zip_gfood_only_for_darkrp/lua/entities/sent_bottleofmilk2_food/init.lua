AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

--[[---------------------------------------------------------
   Name: Milk
   Purpose: Dairy products are our friends for life.
---------------------------------------------------------]]

function ENT:Initialize()
	self:SetModel("models/props_junk/garbage_milkcarton002a.mdl")
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
			activator:setSelfDarkRPVar( "Energy", math.Clamp( (energy or 100) + 20, 0, 100 )  )
			activator:EmitSound("npc/barnacle/barnacle_gulp2.wav", 50, 100)
		self.Entity:Remove()
	end
end
