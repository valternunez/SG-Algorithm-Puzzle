AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")


function ENT:Initialize()

    self:SetModel("models/props_phx/construct/metal_plate2x2.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetWeight(210)
    self:SetValor(0)

    local phys = self:GetPhysicsObject()
    if phys:IsValid() then
      phys:Wake()
      phys:EnableMotion(false)
    end

end

function ENT:Think()


  --  if self:GetValue() == 752 then

        --BORRAR UNA PUERTA O ALGO ASI PARA QUE EL JUGADOR PASE

  --  end


end

--Physgun does not move this entity
hook.Add( "PhysgunPickup", "AllowPlayerPickup", function( ply, ent )
	if ent:GetClass() == "invisible-wall" then
		--return false
    return false
	end
end )
