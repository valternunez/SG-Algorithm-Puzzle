AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")


function ENT:Initialize()

    self:SetModel("models/props_c17/FurnitureBathtub001a.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetModelScale(self:GetModelScale() * 1, 0)
    self:SetValor(57)
    self:SetDiez(0)
    self:SetCinco(0)
    self:SetDos(0)
    self:SetUno(0)

    local phys = self:GetPhysicsObject()
    if phys:IsValid() then
      phys:Wake()
      phys:EnableMotion(false)
    end

end

--Physgun does not move this entity



function ENT:Think()
    --no entra en esta validacion
    if self:GetValor() == 0 then
      print("Enters first IF Valor")
      print("Valor 10 = " .. self:GetDiez())
      print("Valor 5 = " .. self:GetCinco())
      print("Valor 2 = " .. self:GetDos())
      print("Valor 1 = " .. self:GetUno())
      if self:GetDiez() == 5 then
      if self:GetCinco() == 1 then
          print("Enters third IF Cinco")
          if self:GetDos() == 1 then
              print ("Enters fourth IF Dos")
              if self:GetUno() == 0 then

                  print ("Enters fifth IF Uno")
                  ents.FindByClass( "invisible-wall-2" )[1]:Remove()
                  for k , v in ipairs(ents.FindByClass("coin-1-10")) do
                      v:Remove()
                  end
                  for k , v in ipairs(ents.FindByClass("coin-2-5")) do
                      v:Remove()
                  end
                  for k , v in ipairs(ents.FindByClass("coin-3-2")) do
                      v:Remove()
                  end
                  for k , v in ipairs(ents.FindByClass("coin-4-1")) do
                      v:Remove()
                  end

              end
          end
      end
  end
end
end

function ENT:StartTouch(ent)
    if ent:GetClass() == "coin-1-10" then
        self:SetValor(self:GetValor() - ent:GetValor())
        self:SetDiez(self:GetDiez() + 1)
    end
    if ent:GetClass() == "coin-2-5" then
        self:SetValor(self:GetValor() - ent:GetValor())
        self:SetCinco(self:GetCinco() + 1)
    end
    if ent:GetClass() == "coin-3-2" then
        self:SetValor(self:GetValor() - ent:GetValor())
        self:SetDos(self:GetDos() + 1)
    end
    if ent:GetClass() == "coin-4-1" then
        self:SetValor(self:GetValor() - ent:GetValor())
        self:SetUno(self:GetUno() + 1)
    end
end

function ENT:EndTouch(ent)
    if ent:GetClass() == "coin-1-10" then
        self:SetValor(self:GetValor() + ent:GetValor())
        self:SetDiez(self:GetDiez() - 1)
    end
    if ent:GetClass() == "coin-2-5" then
        self:SetValor(self:GetValor() + ent:GetValor())
        self:SetCinco(self:GetCinco() - 1)
    end
    if ent:GetClass() == "coin-3-2" then
        self:SetValor(self:GetValor() + ent:GetValor())
        self:SetDos(self:GetDos() - 1)
    end
    if ent:GetClass() == "coin-4-1" then
        self:SetValor(self:GetValor() + ent:GetValor())
        self:SetUno(self:GetUno() - 1)
    end

end
