finjeu = love.graphics.newImage("img/fin.jpg")
press1 = love.graphics.newImage("img/press.png")
anim31 = newAnimation(press1, 373, 25, 0.1, 0)

function fin_update(dt)
    if player.carril == 1 or player.carril == 2 or player.carril == 3 or player.carril == 4 or player.carril == 5 then
        monstershort1:play()
        player.carril=nil
        carrilPiedra = nil
        carrilPiedragrande = nil
        createObstacleTimerMax = 4
        player.x = 500 
        player.y = 410
        player.speed = 300
    end
    anim31:update(dt) 
end

function fin_draw()
    love.graphics.draw(finjeu, 0, 0)    
    anim31:draw(512-415/2, 690)
end