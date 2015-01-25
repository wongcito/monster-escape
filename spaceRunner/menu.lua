menus = love.graphics.newImage("img/menus.jpg")
press = love.graphics.newImage("img/press.png")
comic1 = love.graphics.newImage("img/comic1.jpg")
comic2 = love.graphics.newImage("img/comic2.jpg")
comic3 = love.graphics.newImage("img/comic3.jpg")

anim30 = newAnimation(press, 373, 25, 0.1, 0)

function button_update(dt)
    anim30:update(dt)
    
    
end

function button_draw()
    love.graphics.draw(menus, 0, 0)    
    anim30:draw(512-415/2, 690)
        
end


