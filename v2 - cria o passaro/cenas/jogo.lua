Jogo = Classe:extend()

function Jogo:new()
   passaro = Passaro()
end

function Jogo:update(dt)
   passaro:update(dt)
end

function Jogo:draw() 
   passaro:draw()
end