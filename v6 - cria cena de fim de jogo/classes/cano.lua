Cano = Classe:extend()

function Cano:new()
   self.img = imagem_cano
   self.largura, self.altura = self.img:getDimensions()

   self.xSup = LARGURA_TELA + self.largura
   self.xInf = LARGURA_TELA

   self.ySup =  love.math.random(0, 150) + 30
   self.yInf =  self.ySup + love.math.random(110, 180)

   self.velocidade = -120
end

function Cano:update(dt)
   self.xSup = self.xSup + self.velocidade*dt
   self.xInf = self.xInf + self.velocidade*dt
end

function Cano:draw()
   love.graphics.draw(self.img, self.xSup, self.ySup, math.rad(180))
   love.graphics.draw(self.img, self.xInf, self.yInf)
end

function Cano:saiuDaTela()
   if self.xInf < -self.largura then
       return true
   end
end