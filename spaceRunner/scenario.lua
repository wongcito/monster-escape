-- Assets del escenario y del personaje
ground = love.graphics.newImage("img/ground.png")
mountain = love.graphics.newImage("img/mountain.png")
monster = love.graphics.newImage("img/monster.png")
sky = love.graphics.newImage("img/sky.png")


anim2 = newAnimation(mountain, 1028, 772, 0.1, 0)

anim4 = newAnimation(monster, 1027, 770, 0.1, 0)
anim = newAnimation(ground, 1028, 770, 0.1, 0)

-- Para actualizar el escenario
function scenario_update(dt)
   --love.graphics.setColor(255,255,255)
   anim:update(dt) 
   anim2:update(dt)
   anim4:update(dt)
    

    
end

-- Para dibujar el escenario
function scenario_draw()
    
    love.graphics.draw(sky, 0, 0)
    
    anim2:draw(0, 0) 
    anim4:draw(0,0)
    anim:draw(0, 0)
    
end