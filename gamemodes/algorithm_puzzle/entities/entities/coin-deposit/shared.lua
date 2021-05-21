ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Change Dump"
ENT.Category = "Change Problem"
ENT.Spawnable = true

function ENT:SetupDataTables()

    self:NetworkVar("Int", 1, "Valor")
    self:NetworkVar("Int", 2, "Diez")
    self:NetworkVar("Int", 3, "Cinco")
    self:NetworkVar("Int", 4, "Dos")
    self:NetworkVar("Int", 5, "Uno")

end
