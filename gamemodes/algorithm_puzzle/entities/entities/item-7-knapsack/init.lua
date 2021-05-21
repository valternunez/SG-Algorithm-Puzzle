AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")


function ENT:Initialize()

    self:SetModel("models/props_interiors/pot02a.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)

    self:SetWeight(60)
    self:SetValor(171)

    local phys = self:GetPhysicsObject()
    if phys:IsValid() then
      phys:Wake()
    end

end

function ENT:Think()

    --if CurTime() > self.timer + interval then

      --  self.timer = CurTime()

      --  self:SetWeight(210)

  --  end

end
