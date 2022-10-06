LARGURA_TELA, ALTURA_TELA = love.graphics.getDimensions()

require "_recursos"

function love.load()
   Classe = require "classes/classic"

   require "classes/passaro"
   require "classes/cano"

   require "cenas/jogo"

   jogo = Jogo()
end

function love.update(dt)
   jogo:update(dt)
end

function love.draw()
   jogo:draw()
end

