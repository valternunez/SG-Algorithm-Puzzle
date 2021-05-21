AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")


function ENT:Initialize()

    self:SetModel("models/props_interiors/BathTub01a.mdl")
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

--Physgun does not move this entity



function ENT:Think()

  hook.Add( "PhysgunPickup", "AllowPlayerPickup", function( ply, ent )
    if ent:GetClass() == "bathtub-knapsack" then
      return false
    end
  end )

    if self:GetValor() == 752 then
      ents.FindByClass( "invisible-wall" )[1]:Remove()
      ents.FindByClass( "item-1-knapsack" )[1]:Remove()
      ents.FindByClass( "item-2-knapsack" )[1]:Remove()
      ents.FindByClass( "item-3-knapsack" )[1]:Remove()
      ents.FindByClass( "item-4-knapsack" )[1]:Remove()
      ents.FindByClass( "item-5-knapsack" )[1]:Remove()
      ents.FindByClass( "item-6-knapsack" )[1]:Remove()
      ents.FindByClass( "item-7-knapsack" )[1]:Remove()
      ents.FindByClass( "item-8-knapsack" )[1]:Remove()
      ents.FindByClass( "item-9-knapsack" )[1]:Remove()
    end


end

function ENT:StartTouch(ent)
    if ent:GetClass() == "item-1-knapsack" then
        self:SetWeight(self:GetWeight() - ent:GetWeight())
        self:SetValor(self:GetValor() + ent:GetValor())
    end
    if ent:GetClass() == "item-2-knapsack" then
        self:SetWeight(self:GetWeight() - ent:GetWeight())
        self:SetValor(self:GetValor() + ent:GetValor())
    end
    if ent:GetClass() == "item-3-knapsack" then
        self:SetWeight(self:GetWeight() - ent:GetWeight())
        self:SetValor(self:GetValor() + ent:GetValor())
    end
    if ent:GetClass() == "item-4-knapsack" then
        self:SetWeight(self:GetWeight() - ent:GetWeight())
        self:SetValor(self:GetValor() + ent:GetValor())
    end
    if ent:GetClass() == "item-5-knapsack" then
        self:SetWeight(self:GetWeight() - ent:GetWeight())
        self:SetValor(self:GetValor() + ent:GetValor())
    end
    if ent:GetClass() == "item-6-knapsack" then
        self:SetWeight(self:GetWeight() - ent:GetWeight())
        self:SetValor(self:GetValor() + ent:GetValor())
    end
    if ent:GetClass() == "item-7-knapsack" then
        self:SetWeight(self:GetWeight() - ent:GetWeight())
        self:SetValor(self:GetValor() + ent:GetValor())
    end
    if ent:GetClass() == "item-8-knapsack" then
        self:SetWeight(self:GetWeight() - ent:GetWeight())
        self:SetValor(self:GetValor() + ent:GetValor())
    end
    if ent:GetClass() == "item-9-knapsack" then
        self:SetWeight(self:GetWeight() - ent:GetWeight())
        self:SetValor(self:GetValor() + ent:GetValor())
    end
end

function ENT:EndTouch(ent)
    if ent:GetClass() == "item-1-knapsack" then
        self:SetWeight(self:GetWeight() + ent:GetWeight())
        self:SetValor(self:GetValor() - ent:GetValor())
    end
    if ent:GetClass() == "item-2-knapsack" then
        self:SetWeight(self:GetWeight() + ent:GetWeight())
        self:SetValor(self:GetValor() - ent:GetValor())
    end
    if ent:GetClass() == "item-3-knapsack" then
        self:SetWeight(self:GetWeight() + ent:GetWeight())
        self:SetValor(self:GetValor() - ent:GetValor())
    end
    if ent:GetClass() == "item-4-knapsack" then
        self:SetWeight(self:GetWeight() + ent:GetWeight())
        self:SetValor(self:GetValor() - ent:GetValor())
    end
    if ent:GetClass() == "item-5-knapsack" then
        self:SetWeight(self:GetWeight() + ent:GetWeight())
        self:SetValor(self:GetValor() - ent:GetValor())
    end
    if ent:GetClass() == "item-6-knapsack" then
        self:SetWeight(self:GetWeight() + ent:GetWeight())
        self:SetValor(self:GetValor() - ent:GetValor())
    end
    if ent:GetClass() == "item-7-knapsack" then
        self:SetWeight(self:GetWeight() + ent:GetWeight())
        self:SetValor(self:GetValor() - ent:GetValor())
    end
    if ent:GetClass() == "item-8-knapsack" then
        self:SetWeight(self:GetWeight() + ent:GetWeight())
        self:SetValor(self:GetValor() - ent:GetValor())
    end
    if ent:GetClass() == "item-9-knapsack" then
        self:SetWeight(self:GetWeight() + ent:GetWeight())
        self:SetValor(self:GetValor() - ent:GetValor())
    end

end
