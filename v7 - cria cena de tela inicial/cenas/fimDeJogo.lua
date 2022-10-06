FimDeJogo = Classe:extend()

function FimDeJogo:new()
   self.img = imagem_gameOver
   self.largura, self.altura = self.img:getDimensions()
   self.tempoComecar = .5 --delay para que o jogador possa voltar a tela inicial
end

function FimDeJogo:update(dt)
   self.tempoComecar = self.tempoComecar - dt
   if love.keyboard.isDown("space") and self.tempoComecar <= 0 then
      self.tempoComecar = .5
      cenaAtual = "telaInicial"
      cenas[cenaAtual]:new()
   end
end

function FimDeJogo:draw()
   base:draw() 
   love.graphics.draw(self.img, LARGURA_TELA/2-self.largura/2, 100)
end