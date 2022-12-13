AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

--[[---------------------------------------------------------
   Name: Turtle
   Purpose: I believe that eating turtles is illegal.
---------------------------------------------------------]]

function ENT:Initialize()
	self:SetModel("models/props/de_tides/vending_turtle.mdl")
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
			activator:setSelfDarkRPVar( "Energy", math.Clamp( (energy or 100) + 30, 0, 100 )  )
			activator:EmitSound("npc/barnacle/neck_snap2.wav", 50, 100)
		self.Entity:Remove()
	end
end
