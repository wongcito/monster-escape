 -- Objeto / player
player = {} 
player.x = 500 
player.y = 410
player.speed = 300
player.img = love.graphics.newImage("img/runningfront.png")

player.carril = nil

anim3 = newAnimation(player.img, 219, 320.4, 0.04, 0)

-- Para mover el personaje
function player_move(dt)   
   
   -- list1 = {"sound/Breathe1.wav", "sound/Breathe2.wav"}
    --TEsound.playLooping(list1)
    
    
    
    
    
    
    
    
    
    if love.keyboard.isDown('left','a') then
        randomFoot = math.random(1, 5)
    
        
    if randomFoot == 1 then
        foots1:play()
    elseif randomFoot == 2 then
        foots2:play()
    elseif randomFoot == 3 then
        foots3:play()
    end
        
	    if player.x > 0 then 
        player.x = player.x - (player.speed*dt)
        end
        
   elseif love.keyboard.isDown('right','d') then
        
        randomFoot = math.random(1, 5)
    
        
    if randomFoot == 1 then
        foots1:play()
    elseif randomFoot == 2 then
        foots2:play()
    elseif randomFoot == 3 then
        foots3:play()
    end
        
        if player.x < (love.graphics.getWidth() - 187) then
		player.x = player.x + (player.speed*dt)
        end
   end
    
   if player.x > 0 and player.x < 204.8 then
        player.carril = 1
    elseif player.x > 204.8 and player.x < 409.6 then
        player.carril = 2
    elseif player.x > 409.6 and player.x < 614.4 then
        player.carril = 3
    elseif player.x > 614.4 and player.x < 819.2 then
        player.carril = 4
    elseif player.x > 819.2 and player.x < 1024 then
        player.carril = 5
end
    
   anim3:update(dt)  
end

-- Para dibujar el personaje
function player_draw() 
   anim3:draw(player.x, player.y) 
end