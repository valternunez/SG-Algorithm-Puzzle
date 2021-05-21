AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")


function ENT:Initialize()

    self:SetModel("models/props_combine/breenglobe.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)

    self:SetWeight(10)
    self:SetValor(60)

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
