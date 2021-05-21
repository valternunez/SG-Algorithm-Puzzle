ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Item_3"
ENT.Category = "Kapsack Algorithm"
ENT.Spawnable = true

function ENT:SetupDataTables()

    self:NetworkVar("Int", 1, "Weight")
    self:NetworkVar("Int", 2, "Valor")
end
