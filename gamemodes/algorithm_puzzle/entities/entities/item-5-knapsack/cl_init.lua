include("shared.lua")

surface.CreateFont( "ItemOneFont", {
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

--hook.Add("HUDPaint", "ViewWeight", function()

    --local eye = LocalPlayer():GetEyeTrace()

  --  if eye.Entity:GetClass() == "item-1-knapsack" then
        --draw.SimpleText(eye.Entity:GetWeight(), "MoneyFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
			--	local x =  eye.Entity:GetWeight()
			--	draw.SimpleText("Weight: " .. x .. "kg", "ItemOneFont", ScrW() / 2 , ScrH() / 2 , Color(255,0,0) , 1 , 1)
    --end


--end)
