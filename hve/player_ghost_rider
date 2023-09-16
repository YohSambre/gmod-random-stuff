--[[ first attempt at creating with emitter:Add, I'm not very skilled but I still managed to get a nice rendering. ]]
local function Hooot()
local pos = LocalPlayer():GetPos()
local emitter = ParticleEmitter( pos )

for i = 0, 10 do
	local part = emitter:Add( "effects/fire_cloud1", pos )
	if ( part ) then
		part:SetDieTime( 0.5 )
		part:SetStartAlpha( 255 )
		part:SetEndAlpha( 0 )
		part:SetStartSize( 10 )
		part:SetEndSize( 0 )
		part:SetCollide( true )
		part:SetGravity( Vector( 0, 0, -100 ) )
		part:SetVelocity( VectorRand() * 100 )
	end
end

emitter:Finish()
end
hook.Add( "Think", "GhostRiderSwag", Hooot )
