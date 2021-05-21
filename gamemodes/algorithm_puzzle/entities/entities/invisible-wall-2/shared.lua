ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Invisible Wall"
ENT.Category = "Change Problem"
ENT.Spawnable = true

function ENT:SetupDataTables()

    self:NetworkVar("Int", 1, "Weight")
    self:NetworkVar("Int", 2, "Valor")

end
