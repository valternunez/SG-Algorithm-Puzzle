AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")


function ENT:Initialize()

    self:SetModel("models/custom/coin.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetModelScale(self:GetModelScale() * 5, 0)
    self:SetColor(Color(0,255,0))

    self:SetValor(1)

    local phys = self:GetPhysicsObject()
    if phys:IsValid() then
      phys:Wake()
    end


end

function ENT:Think()



end
