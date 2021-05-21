ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Coin_5"
ENT.Category = "Change Problem"
ENT.Spawnable = true

function ENT:SetupDataTables()

    self:NetworkVar("Int", 1, "Valor")
end
