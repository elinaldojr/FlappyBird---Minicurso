--Carrega todos os recursos do jogo

--recursos (imagens)
imagem_passaro = love.graphics.newImage("recursos/imagens/yellowbird-midflap.png")
imagem_fundo = love.graphics.newImage("recursos/imagens/background-day.png")
imagem_base = love.graphics.newImage("recursos/imagens/base.png")
imagem_cano = love.graphics.newImage("recursos/imagens/pipe-green.png")
imagem_logo = love.graphics.newImage("recursos/imagens/message.png")
imagem_gameOver = love.graphics.newImage("recursos/imagens/gameover.png")
imagem_barra_energia = love.graphics.newImage("recursos/imagens/barra-energia.png")
imagem_item = love.graphics.newImage("recursos/imagens/book.png")
--

--recursos(fontes)
fonte = love.graphics.newFont("recursos/fontes/flappy-font.ttf", 40)
fonte_pequena = love.graphics.newFont("recursos/fontes/flappy-font.ttf", 20)
fonte_img = love.graphics.newImageFont( 'recursos/fontes/img_font.png', '0123456789' )
--

--recursos(sons)
som_ponto = love.audio.newSource("recursos/sons/point.ogg", "static")
som_ponto:setVolume(0.4)
som_asa = love.audio.newSource("recursos/sons/wing.ogg", "static")
som_perdeu = love.audio.newSource("recursos/sons/die.ogg", "static")
som_perdeu:setVolume(0.6)
som_bateu = love.audio.newSource("recursos/sons/hit.ogg", "static")
som_bateu:setVolume(0.3)
som_item = love.audio.newSource("recursos/sons/oneup.ogg", "static")
--