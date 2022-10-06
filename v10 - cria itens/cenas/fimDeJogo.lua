FimDeJogo = Classe:extend()

function FimDeJogo:new()
   self.img = imagem_gameOver
   self.largura, self.altura = self.img:getDimensions()
   self.tempoComecar = .5 --delay para que o jogador possa voltar a tela inicial

   recorde = 0
end

function FimDeJogo:update(dt)
   self.tempoComecar = self.tempoComecar - dt
   if love.keyboard.isDown("space") and self.tempoComecar <= 0 then
      self.tempoComecar = .5
      cenaAtual = "telaInicial"
      cenas[cenaAtual]:new()
   end

   --atualização do recorde
   if pontos > recorde then
      recorde = pontos
   end
end

function FimDeJogo:draw()
   base:draw() 
   love.graphics.draw(self.img, LARGURA_TELA/2-self.largura/2, 100)

   --pontos
   love.graphics.setFont(fonte_pequena)
   love.graphics.print("Pontos:", LARGURA_TELA/2-40, 170)
   love.graphics.setFont(fonte_img)
   if math.floor(pontos/100) < 1 then
      love.graphics.print(string.format("%02d", pontos), LARGURA_TELA/2-30, 190)
   else
      love.graphics.print(string.format("%03d", math.min(pontos, 999)), LARGURA_TELA/2-45, 190)
   end

   --recorde
   love.graphics.setFont(fonte_pequena)
   love.graphics.print("Recorde:", LARGURA_TELA/2-43, 240)
   love.graphics.setFont(fonte_img)
   love.graphics.print(string.format("%03d", math.min(recorde, 999)), LARGURA_TELA/2-45, 260)
end