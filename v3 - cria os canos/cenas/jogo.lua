Jogo = Classe:extend()

function Jogo:new()
   passaro = Passaro()

   tabelaCanos = {}
   tempoCanos = 1
end

function Jogo:update(dt)
   passaro:update(dt)
   
   tempoCanos = tempoCanos - dt -- atualiza tempo dos canos
   if tempoCanos <= 0 then
      local cano = Cano()

      table.insert(tabelaCanos, cano)
      tempoCanos = 1.5
   end

  --percorre tabela de canos
   for i=#tabelaCanos, 1, -1 do
      tabelaCanos[i]:update(dt)

      if tabelaCanos[i]:saiuDaTela() then
         som_ponto:play()
         table.remove(tabelaCanos, i) 
      end
   end
end

function Jogo:draw()
   for i, cano in pairs(tabelaCanos) do
      cano:draw()
   end

   passaro:draw()
end