surface.CreateFont( "InstruccionesFont", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 40,
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


function openLobby()

    net.Start("start_game")
    net.SendToServer()

    local frame = vgui.Create("DFrame")
    frame:SetSize(ScrW(),ScrH())
    frame:Center()
    frame:SetVisible(true)
    frame:ShowCloseButton(false)
    frame:SetDraggable(false)
    frame:SetTitle("Mod Algoritmos")

    -- Rich Text panel
    local richtext = vgui.Create( "RichText", frame )
    richtext:Dock( FILL )

    -- Text segment #1 (grayish color)
    richtext:InsertColorChange(255, 255, 255, 255)

    function richtext:PerformLayout()

	     self:SetFontInternal("InstruccionesFont")
	     self:SetFGColor(Color(255, 255, 255))

	  end
    richtext:AppendText("Algoritmo 1 - Problema de la Mochila - Ático \n\n")
    richtext:AppendText("La bañera en el ático tiene la capacidad de soportar hasta 210kg de peso. Los objetos 9 objetos enfrente de ella tienen un peso y valor definido. Para acceder a las escaleras que llevan al nivel de abajo, se debe de resolver el algoritmo siguiente:\n\nSe deben de colocar en la bañera los objetos que maximizen el valor en conjunto de ellos dentro de la bañera sin pasar el límite de peso que ésta permite. ")
    richtext:AppendText("\n\nLa escalera se desbloquerá solamente si se tiene la combinación correcta de objetos dentro de la bañera.\n\n")

    richtext:AppendText("\n\nAlgoritmo 2 - Problema del Cambio - Primer Nivel\n\n")
    richtext:AppendText("La segunda bañera se encuentra en el Primer Nivel, bajando las escaleras desde el Ático, a lado de una puerta bloqueda. Cerca de ella se encuentran monedas de 4 colores. Las monedas rojas tienen un valor de $10, las amarillas $5, azules $2 y las verdes $1. El objetivo es depositar el menor número de monedas que sumen 57 en la bañera. Ni más, ni menos.")
    richtext:AppendText("\n\nLa puerta de salida se desbloquerá solamente si se tiene la combinación correcta de monedas dentro de la segunda bañera.\n\n")

    frame.Paint = function(s , w , h)

        draw.RoundedBox(0 , 0 , 0 , w , h , Color(0 , 0,  0, 255))

    end
    frame:MakePopup()

    local startBut = vgui.Create("DButton",frame)
    startBut:SetSize(200 , 75)
    startBut:SetPos(ScrW()/2 - 100, ScrH()/2 + (350))
    startBut:SetText("EMPEZAR")
    startBut.DoClick = function()

        --net.Start("start_game")
        --net.SendToServer()

        frame:Close()

    end


end

net.Receive("open_lobby", openLobby)
