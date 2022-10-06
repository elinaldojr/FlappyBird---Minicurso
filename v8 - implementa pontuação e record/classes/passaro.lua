Passaro = Classe:extend()

function Passaro:new()
   self.img = imagem_passaro
   self.x, self.y = 50, ALTURA_TELA/2 - 60

   self.largura, self.altura = self.img:getDimensions()

   self.gravidade = 10
   self.velocidade = 0

   self.botaoPressionado = false
end

function Passaro:update(dt)
   self:ficaNaTela()

   self.velocidade = self.velocidade + self.gravidade*1.5*dt

   if love.keyboard.isDown("space") then
      self:voar(dt)
      self.botaoPressionado = true
   else
      self.botaoPressionado = false
   end

   self.y = self.y + self.velocidade
end

function Passaro:draw()
   love.graphics.draw(self.img, self.x, self.y, self.rotacao) -- imagem do pássaro
end

function Passaro:voar(dt)
   if self.botaoPressionado == false then
      som_asa:play()
      self.velocidade = -300*dt
   end
end

function Passaro:ficaNaTela()
   if self.y < 0 then
      self.y = 0
      self.velocidade = 0
   elseif self.y + self.altura > 400 then
      self.y = 400 - self.altura
      self.velocidade = 0
   end
end