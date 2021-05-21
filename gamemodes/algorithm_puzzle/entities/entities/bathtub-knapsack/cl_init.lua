include("shared.lua")

surface.CreateFont( "BathtubFont", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 25,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )


function ENT:Draw()

    self:DrawModel()

end

hook.Add("HUDPaint", "ViewWeight", function()

    local eye = LocalPlayer():GetEyeTrace()

		--Knapsack
    if eye.Entity:GetClass() == "bathtub-knapsack" then
        --draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
				local w = eye.Entity:GetWeight()
				local v = eye.Entity:GetValor()
				draw.SimpleText("Peso Maximo Admitido: " .. w .. "kg\n Valor Al Momento: " .. v  , "BathtubFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
    end
		--ITEM 1
		if eye.Entity:GetClass() == "item-1-knapsack" then
        --draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
				local w =  eye.Entity:GetWeight()
				local v = eye.Entity:GetValor()
				draw.SimpleText("Peso: " .. w .. "kg\n Valor: " .. v , "BathtubFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
    end
		--ITEM 2
		if eye.Entity:GetClass() == "item-2-knapsack" then
				--draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
				local w =  eye.Entity:GetWeight()
				local v = eye.Entity:GetValor()
				draw.SimpleText("Peso: " .. w .. "kg\n Valor: " .. v , "BathtubFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
		end
		--ITEM 3
		if eye.Entity:GetClass() == "item-3-knapsack" then
				--draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
				local w =  eye.Entity:GetWeight()
				local v = eye.Entity:GetValor()
				draw.SimpleText("Peso: " .. w .. "kg\n Valor: " .. v , "BathtubFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
		end
		--ITEM 4
		if eye.Entity:GetClass() == "item-4-knapsack" then
				--draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
				local w =  eye.Entity:GetWeight()
				local v = eye.Entity:GetValor()
				draw.SimpleText("Peso: " .. w .. "kg\n Valor: " .. v , "BathtubFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
		end
		--ITEM 5
		if eye.Entity:GetClass() == "item-5-knapsack" then
				--draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
				local w =  eye.Entity:GetWeight()
				local v = eye.Entity:GetValor()
				draw.SimpleText("Peso: " .. w .. "kg\n Valor: " .. v , "BathtubFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
		end
		--ITEM 6
		if eye.Entity:GetClass() == "item-6-knapsack" then
				--draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
				local w =  eye.Entity:GetWeight()
				local v = eye.Entity:GetValor()
				draw.SimpleText("Peso: " .. w .. "kg\n Valor: " .. v , "BathtubFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
		end
		--ITEM 7
		if eye.Entity:GetClass() == "item-7-knapsack" then
				--draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
				local w =  eye.Entity:GetWeight()
				local v = eye.Entity:GetValor()
				draw.SimpleText("Peso: " .. w .. "kg\n Valor: " .. v , "BathtubFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
		end
		--ITEM 8
		if eye.Entity:GetClass() == "item-8-knapsack" then
				--draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
				local w =  eye.Entity:GetWeight()
				local v = eye.Entity:GetValor()
				draw.SimpleText("Peso: " .. w .. "kg\n Valor: " .. v , "BathtubFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
		end
		--ITEM 9
		if eye.Entity:GetClass() == "item-9-knapsack" then
				--draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
				local w =  eye.Entity:GetWeight()
				local v = eye.Entity:GetValor()
				draw.SimpleText("Peso: " .. w .. "kg\n Valor: " .. v , "BathtubFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
		end


end)
