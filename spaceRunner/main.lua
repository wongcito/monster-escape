require("AnAL")
require("player")
require("scenario")
require("obstacles")
require("menu")
require("fin")
require("TEsound")

function love.load()
    
    breathe1 = love.audio.newSource("sound/Breathe1.wav")
    breathe2 = love.audio.newSource("sound/Breathe2.wav")
    breathe3 = love.audio.newSource("sound/Breathe3.wav")
    
    foots1 = love.audio.newSource("sound/Foots1.wav")
    foots2 = love.audio.newSource("sound/Foots2.wav")
    foots3 = love.audio.newSource("sound/Foots3.wav")
    
    monster1 = love.audio.newSource("sound/Monster1.wav")
    monster2 = love.audio.newSource("sound/Monster2.wav")
    monster3 = love.audio.newSource("sound/Monster3.wav")
    monster4 = love.audio.newSource("sound/Monster4.wav")
    
    monstershort1 = love.audio.newSource("sound/MonsterShort1.wav")
    
    monstermove1 = love.audio.newSource("sound/MonsterMove1.wav")
    monstermove2 = love.audio.newSource("sound/MonsterMove2.wav")
    
    interface1 = love.audio.newSource("sound/Interface1.wav")
    
    yell1 = love.audio.newSource("sound/Yell1.wav")
    yell2 = love.audio.newSource("sound/Yell2.wav")
    yell3 = love.audio.newSource("sound/Yell3.wav")
    
    music = love.audio.newSource("sound/THEME_MUSIC.wav")
    musicintro = love.audio.newSource("sound/Intro.wav")
    musicfin = love.audio.newSource("sound/LOSE.wav")
    
    gamestate = "menu"    
end
 
function love.update(dt)
   
    TEsound.cleanup()
    
   --Para salir del juego
   if love.keyboard.isDown('escape') then
		love.event.push('quit')
   end
    
   if gamestate == "menu" then
        button_update(dt)
        music:stop()
        musicintro:setLooping( loop )
        musicintro:play()
        
        if love.keyboard.isDown(" ") then
        interface1:setVolume(1)
            interface1:play()
            
    end
   end
   
   if gamestate == "playing" then
        
        --Soundtrack
        musicintro:stop()
        musicfin:stop()
        music:setLooping( loop )
        music:play()
        
        --Sound effects
        
        randomSound = math.random(1, 200)
        
        if randomSound == 1 then
        
        breathe1:play()
        elseif randomSound == 2 then
       
        breathe2:play()
        elseif randomSound == 3 then
        
        breathe3:play()
        elseif randomSound == 4 then
        
        monster1:play()
        elseif randomSound == 5 then
        
        monster2:play()
        elseif randomSound == 6 then
        
        monster3:play()
        elseif randomSound == 7 then
       
        monster4:play()
        elseif randomSound == 8 then
      
        monstermove1:play()
        elseif randomSound == 9 then
        
        monstermove2:play()
        elseif randomSound == 10 then
        
        yell1:play()
        elseif randomSound == 11 then
      
        yell2:play()
        elseif randomSound == 12 then
       
        yell3:play()
        
    end
        
        
   -- Animacion del escenario
        scenario_update(dt)
    
   -- Animacion del personaje
        player_move(dt)
   
   -- Actualizacion de obstaculos
        obstacles_update(dt) 
   end
        
   if gamestate == "finjeu" then
        music:stop()
        musicfin:setLooping( loop )
        musicfin:play()
        fin_update(dt)
        
        yell1:stop()
        yell2:stop()
        yell3:stop()
        monstermove1:stop()
        monstermove2:stop()
        monster4:stop()
        monster3:stop()
        --monster2:stop()
        monster1:stop()
        breathe1:stop()
        breathe2:stop()
        breathe3:stop()
        
        if love.keyboard.isDown(" ") then
        interface1:setVolume(1)
        interface1:play()
    end
        
        
   end
    
    
    
    if love.keyboard.isDown(" ") and (gamestate == "menu" or gamestate == "finjeu") then
        
        gamestate = "playing"
        
    end
    
end 

function love.draw()
    
    if gamestate == "playing" then
        
        -- Dibujo el escenario
        scenario_draw()

    -- Dibujo el personaje
        player_draw() 
    
    -- Dibujo de los obstaculos
        obstacles_draw()
    end    
    
    if gamestate == "menu" then
        button_draw()
    end
        
    if gamestate == "finjeu" then
        fin_draw()
    end

end

function love.keypressed(k)
    if k == "up" then
        monster3:play()
    end
end