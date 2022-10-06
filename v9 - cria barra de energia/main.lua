LARGURA_TELA, ALTURA_TELA = love.graphics.getDimensions()

require "_recursos"

function love.load()
   Classe = require "classes/classic"

   require "classes/passaro"
   require "classes/cano"
   require "classes/fundo"

   require "cenas/telaInicial"
   require "cenas/jogo"
   require "cenas/fimDeJogo"

   cenas = {}
   cenaAtual = "telaInicial"

   cenas["telaInicial"] = TelaInicial()
   cenas["jogo"] = Jogo()
   cenas["fimDeJogo"] = FimDeJogo()

   fundo = Fundo(0, 0, imagem_fundo)
   base = Fundo(0, 400, imagem_base, -120)
end

function love.update(dt)
   fundo:update(dt)
   base:update(dt)
   
   cenas[cenaAtual]:update(dt)
end

function love.draw()
   fundo:draw() 
    

   cenas[cenaAtual]:draw()
end

