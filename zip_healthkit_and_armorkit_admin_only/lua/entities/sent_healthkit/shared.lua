AddCSLuaFile()

if SERVER then
	resource.AddFile( "materials/entities/sent_incredible_healthkit.png" )
end

ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "HealthKit (Max Health)"
ENT.Author			= "Yoh Sambre"
ENT.Contact			= "Yoh Sambre#9953"
ENT.Instructions	= "aim the kit and press E."
ENT.Category = "Medkit and Healthkit"
ENT.Spawnable = true
ENT.AdminOnly = true