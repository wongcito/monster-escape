--Timer
createObstacleTimerMax = 2
createObstacleTimer = createObstacleTimerMax

carrilPiedra = nil
carrilPiedragrande = nil
  
-- Cargar obstaculos
-- Piedras pequenas
smallrockscenter = love.graphics.newImage("img/smallrockscenter.png")
smallrocksleftfar = love.graphics.newImage("img/smallrocksleftcenter.png")
smallrocksleftcenter = love.graphics.newImage("img/smallrocksleftcenter2.png")
smallrocksrightfar = love.graphics.newImage("img/smallrocksrightfar.png")
smallrocksrightcenter = love.graphics.newImage("img/smallrocksrightcenter.png")
-- Piedras grandes
bigrockscenter = love.graphics.newImage("img/bigrockscenter.png")
bigrocksleftfar = love.graphics.newImage("img/bigrocksleftfar.png")
bigrocksleftcenter = love.graphics.newImage("img/bigrocksleftcenter.png")
bigrocksrightfar = love.graphics.newImage("img/bigrocksrightfar.png")
bigrocksrightcenter = love.graphics.newImage("img/bigrocksrightcenter.png")

-- Animaciones
anim5 = newAnimation(smallrockscenter, 1028, 229.4, 0.1, 0)
anim6 = newAnimation(smallrocksleftfar, 1028, 229.4, 0.1, 0)
anim7 = newAnimation(smallrocksleftcenter, 1028, 229.4, 0.1, 0)
anim8 = newAnimation(smallrocksrightfar, 1028, 229.4, 0.1, 0)
anim9 = newAnimation(smallrocksrightcenter, 1028, 229.4, 0.1, 0)

anim10 = newAnimation(bigrockscenter, 1028, 229.25, 0.1, 0)
anim11 = newAnimation(bigrocksleftfar, 1028, 229.25, 0.1, 0)
anim12 = newAnimation(bigrocksleftcenter, 1028, 229.25, 0.1, 0)
anim13 = newAnimation(bigrocksrightfar, 1028, 229.25, 0.1, 0)
anim14 = newAnimation(bigrocksrightcenter, 1028, 229.25, 0.1, 0)

function obstacles_update(dt)
    
    createObstacleTimer = createObstacleTimer - (1 * dt)
    if createObstacleTimer < 0 then
	createObstacleTimer = createObstacleTimerMax
    randomNumber = math.random(1, 5)
    
        
    if randomNumber == 1 then
        carrilPiedra = 1
    elseif randomNumber == 2 then
        carrilPiedra = 2
    elseif randomNumber == 3 then
        carrilPiedra = 3
    elseif randomNumber == 4 then
        carrilPiedra = 4
    elseif randomNumber == 5 then
        carrilPiedra = 5
    end
    
        
    end
    
    anim5:update(dt)
    anim6:update(dt)
    anim7:update(dt)
    anim8:update(dt)
    anim9:update(dt)
    
    anim10:update(dt)
    anim11:update(dt)
    anim12:update(dt)
    anim13:update(dt)
    anim14:update(dt)
       
end

function obstacles_draw()
  
    

    -- Piedras pequenas      
    if carrilPiedra == 1 then
        anim5:draw(0, 538.6)
        carrilPiedragrande = 1
    elseif carrilPiedra == 2 then
        anim6:draw(0, 538.6)
        carrilPiedragrande = 2
    elseif carrilPiedra == 3 then
        anim7:draw(0, 538.6)
        carrilPiedragrande = 3
    elseif carrilPiedra == 4 then
        anim8:draw(0, 538.6)
        carrilPiedragrande = 4
    elseif carrilPiedra == 5 then
        anim9:draw(0, 538.6)
        
        carrilPiedragrande = 5
    end
    
    -- Piedras grandes
    if carrilPiedragrande == 1 then
        anim10:draw(0, 538.75)
            if player.carril == 1 then
                gamestate = "finjeu"
           --     player.carril = nil
            end
        carrilPiedragrande = nil
    elseif carrilPiedragrande == 2 then
        anim11:draw(0, 538.75)
            if player.carril == 2 then
                gamestate = "finjeu"
           -- player.carril = nil
            end
        carrilPiedragrande = nil
    elseif carrilPiedragrande == 3 then
        anim12:draw(0, 538.75)
            if player.carril == 3 then
                gamestate = "finjeu"
           -- player.carril = nil
            end
        carrilPiedragrande = nil
    elseif carrilPiedragrande == 4 then
        anim13:draw(0, 538.75)
            if player.carril == 4 then
                gamestate = "finjeu"
           -- player.carril = nil
            end
        carrilPiedragrande = nil
    elseif carrilPiedragrande == 5 then
        anim14:draw(0, 538.75)
            if player.carril == 5 then
                gamestate = "finjeu"
                --player.carril = nil
            end
        
        carrilPiedragrande = nil
    end 
    
    
end