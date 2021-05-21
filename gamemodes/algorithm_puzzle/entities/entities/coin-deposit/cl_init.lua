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

hook.Add("HUDPaint", "ViewValue", function()

    local eye = LocalPlayer():GetEyeTrace()

		--Knapsack
    if eye.Entity:GetClass() == "coin-deposit" then
        --draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
				local v = eye.Entity:GetValor()
				--local c10 = eye.Entity:GetDiez()
				--local c5 = eye.Entity:GetCinco()
				--local c2 = eye.Entity:GetDos()
				--local c1 = eye.Entity:GetUno()
				draw.SimpleText("Cantidad Objetivo: " .. v  , "BathtubFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
    end


end)
