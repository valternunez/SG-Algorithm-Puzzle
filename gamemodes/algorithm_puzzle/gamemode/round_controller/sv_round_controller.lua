local round_status = 0 -- 0 = end  1 = active
local active_round = 1

local targetPos = Vector ()
local spawnPos = Vector(-96.74 , -210.92 , 202.03)
--local spawnPos = Vector(-28.11 , -197.56 , 92.03) --Spawn downstairs for change problem
local spawnWall1 = Vector(-49.10 , 180.01 , 175.74)
local spawnTub = Vector(-180.28 , -236.44 , 200.03)
local spawnK1 = Vector(33.10 , -227.42 , 200.03)
local spawnK2 = Vector(33.10 , -217.42 , 200.03)
local spawnK3 = Vector(33.10 , -207.42 , 200.03)
local spawnK4 = Vector(33.10 , -277.42 , 200.03)
local spawnK5 = Vector(33.10 , -287.42 , 200.03)
local spawnK6 = Vector(33.10 , -237.42 , 200.03)
local spawnK7 = Vector(33.10 , -247.42 , 200.03)
local spawnK8 = Vector(33.10 , -257.42 , 200.03)
local spawnK9 = Vector(33.10 , -267.42 , 190.03)
local spawnC10 = Vector(71.65 , -133.00 , 60)

util.AddNetworkString("UpdateRoundStatus")



function spawnKnapsack()
    --invisible wall
    local wall1 = ents.Create("invisible-wall")
    wall1:SetPos(spawnWall1)
    wall1:Spawn()
    --kanpsack/bathtub
    local tub = ents.Create("bathtub-knapsack")
    tub:SetPos(spawnTub)
    tub:SetAngles(Angle(0, 90 , 0))
    tub:Spawn()
    --item1
    local item1 = ents.Create("item-1-knapsack")
    item1:SetPos(spawnK1)
    item1:Spawn()
    --item2
    local item2 = ents.Create("item-2-knapsack")
    item2:SetPos(spawnK2)
    item2:Spawn()
    --item3
    local item3 = ents.Create("item-3-knapsack")
    item3:SetPos(spawnK3)
    item3:Spawn()
    --item4
    local item4 = ents.Create("item-4-knapsack")
    item4:SetPos(spawnK4)
    item4:Spawn()
    --item5
    local item5 = ents.Create("item-5-knapsack")
    item5:SetPos(spawnK5)
    item5:Spawn()
    --item6
    local item6 = ents.Create("item-6-knapsack")
    item6:SetPos(spawnK6)
    item6:Spawn()
    --item7
    local item7 = ents.Create("item-7-knapsack")
    item7:SetPos(spawnK7)
    item7:Spawn()
    --item8
    local item8 = ents.Create("item-8-knapsack")
    item8:SetPos(spawnK8)
    item8:Spawn()
    --item9
    local item9 = ents.Create("item-9-knapsack")
    item9:SetPos(spawnK9)
    item9:Spawn()
    --EURO COINS
    local c11 = ents.Create("coin-4-1")
    c11:SetPos(Vector(71.65 , -63.00 , 20))
    c11:SetAngles(Angle(0, 0 , 90))
    c11:Spawn()

    local c12 = ents.Create("coin-4-1")
    c12:SetPos(Vector(71.65 , -113.00 , 20))
    c12:SetAngles(Angle(0, 0 , 90))
    c12:Spawn()

    local c13 = ents.Create("coin-4-1")
    c13:SetPos(Vector(71.65 , -103.00 , 20))
    c13:SetAngles(Angle(0, 0 , 90))
    c13:Spawn()

    local c14 = ents.Create("coin-4-1")
    c14:SetPos(Vector(71.65 , -93.00 , 20))
    c14:SetAngles(Angle(0, 0 , 90))
    c14:Spawn()

    local c15 = ents.Create("coin-4-1")
    c15:SetPos(Vector(71.65 , -83.00 , 20))
    c15:SetAngles(Angle(0, 0 , 90))
    c15:Spawn()

    local c16 = ents.Create("coin-4-1")
    c16:SetPos(Vector(71.65 , -73.00 , 20))
    c16:SetAngles(Angle(0, 0 , 90))
    c16:Spawn()

    local c101 = ents.Create("coin-1-10")
    c101:SetPos(Vector(71.65 , -133.00 , 20))
    c101:SetAngles(Angle(0, 0 , 90))
    c101:Spawn()

    local c102 = ents.Create("coin-1-10")
    c102:SetPos(Vector(71.65 , -143.00 , 20))
    c102:SetAngles(Angle(0, 0 , 90))
    c102:Spawn()

    local c103 = ents.Create("coin-1-10")
    c103:SetPos(Vector(71.65 , -153.00 , 20))
    c103:SetAngles(Angle(0, 0 , 90))
    c103:Spawn()

    local c104 = ents.Create("coin-1-10")
    c104:SetPos(Vector(71.65 , -163.00 , 20))
    c104:SetAngles(Angle(0, 0 , 90))
    c104:Spawn()

    local c105 = ents.Create("coin-1-10")
    c105:SetPos(Vector(71.65 , -123.00 , 20))
    c105:SetAngles(Angle(0, 0 , 90))
    c105:Spawn()

    local c106 = ents.Create("coin-1-10")
    c106:SetPos(Vector(71.65 , -200 , 20))
    c106:SetAngles(Angle(0, 0 , 90))
    c106:Spawn()

    local c51 = ents.Create("coin-2-5")
    c51:SetPos(Vector(71.65 , -210 , 40))
    c51:SetAngles(Angle(0, 0 , 90))
    c51:Spawn()

    local c52 = ents.Create("coin-2-5")
    c52:SetPos(Vector(71.65 , -220 , 40))
    c52:SetAngles(Angle(0, 0 , 90))
    c52:Spawn()

    local c53 = ents.Create("coin-2-5")
    c53:SetPos(Vector(71.65 , -230 , 40))
    c53:SetAngles(Angle(0, 0 , 90))
    c53:Spawn()

    local c54 = ents.Create("coin-2-5")
    c54:SetPos(Vector(71.65 , -240 , 20))
    c54:SetAngles(Angle(0, 0 , 90))
    c54:Spawn()

    local c55 = ents.Create("coin-2-5")
    c55:SetPos(Vector(71.65 , -250 , 20))
    c55:SetAngles(Angle(0, 0 , 90))
    c55:Spawn()

    local c56 = ents.Create("coin-2-5")
    c56:SetPos(Vector(71.65 , -260 , 20))
    c56:SetAngles(Angle(0, 0 , 90))
    c56:Spawn()

    local c21 = ents.Create("coin-3-2")
    c21:SetPos(Vector(71.65 , -270 , 40))
    c21:SetAngles(Angle(0, 0 , 90))
    c21:Spawn()

    local c22 = ents.Create("coin-3-2")
    c22:SetPos(Vector(71.65 , -280 , 40))
    c22:SetAngles(Angle(0, 0 , 90))
    c22:Spawn()

    local c23 = ents.Create("coin-3-2")
    c23:SetPos(Vector(71.65 , -290 , 40))
    c23:SetAngles(Angle(0, 0 , 90))
    c23:Spawn()

    local c24 = ents.Create("coin-3-2")
    c24:SetPos(Vector(71.65 , -300 , 20))
    c24:SetAngles(Angle(0, 0 , 90))
    c24:Spawn()

    local c25 = ents.Create("coin-3-2")
    c25:SetPos(Vector(71.65 , -310 , 20))
    c25:SetAngles(Angle(0, 0 , 90))
    c25:Spawn()

    local c26 = ents.Create("coin-3-2")
    c26:SetPos(Vector(71.65 , -320 , 20))
    c26:SetAngles(Angle(0, 0 , 90))
    c26:Spawn()

    local invisW1 = ents.Create("invisible-wall-2")
    invisW1:SetPos(Vector(11.40 , -355.19 , 75))
    invisW1:SetAngles(Angle(0 , 0 , 90))
    invisW1:Spawn()

    local changeDump = ents.Create("coin-deposit")
    changeDump:SetPos(Vector(-81.62 , -332.06 , 50))
    changeDump:SetAngles(Angle(0 , 0 , 0))
    changeDump:Spawn()

end

function beginRound()

    round_status = 1
    spawnKnapsack()
    --spawnChange()
    player.GetAll()[1]:SetPos(spawnPos)
    player.GetAll()[1]:Flashlight(true)
    updateClientRoundStatus()

end

function endRound()

    round_status = 0
    updateClientRoundStatus()


end

function getRoundStatus()

    return round_status

end


hook.Add("Think","WaveThink", function ()
  if round_status == 1 then--no funciona porque cuando estoy en el derma aun no crean las cosas.
    if (ents.FindByClass("invisible-wall")[1]) then
        player.GetAll()[1]:ChatPrint("\n.\n.\n.\n.\nObtén el mayor Valor, sin pasar el peso aceptado por la tina. \n Puedes usar uno, algunos o todos los objetos enfrente de la bañera. \n Los objetos deben estar dentro de la tina.")
    elseif (ents.FindByClass("invisible-wall-2")[1]) then
          player.GetAll()[1]:ChatPrint("\n.\n.\n.\n.\nUsa la menor cantidad de monedas para llegar al valor pedido: $57 \n Las monedas deben estar dentro de la tina a lado de la puerta. \n Rojo = $10 \n Amarillo = $5 \n Azul = $2 \n Verde = $1")
    --else
          --player.GetAll()[1]:ChatPrint("Leave the house")
    else
        player.GetAll()[1]:ChatPrint("¡Felicidades! Terminaste los dos algoritmos exitosamente. Aquí termina este mod!")
        endRound()
    end
  end
    --IF INVISIBLE WALL 1 IS UP, chat.AddText("knapsack instructions")
    --if invisible wall 1 is down but wall 2 is up, chat.addtext ("change problem instructions")



end )

function leaveHouse()
    player.GetAll()[1]:ChatPrint("¡Felicidades! Terminaste los dos algoritmos exitosamente. Aquí termina este mod!")
end

function updateClientRoundStatus()

    net.Start("UpdateRoundStatus")
    net.WriteInt(round_status , 4)
    net.Broadcast()

end
