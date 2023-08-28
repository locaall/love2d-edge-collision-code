-- Get the default window dimensions --
WIN_HEIGHT = love.graphics.getDimensions()
WIN_WIDTH = love.graphics.getDimensions()

function love.load()
    -- Create a player and add its attributes --
    Player = {
        x = 100,
        y = 100,
        height = 25,
        width = 100,
        Xspeed = 100,
        Yspeed = 100
    }
end

function love.update(dt)
    -- Update the player each frame --
    Player.x = Player.x + (Player.Xspeed * dt)
    Player.y = Player.y + (Player.Yspeed * dt)
  
    detectCollision() -- Check edge collision on each frame --
end

function love.draw()
    -- Draw a player --
    love.graphics.rectangle("line", Player.x, Player.y, Player.width, Player.height)
end

-- Detect an edge collision --
function detectCollision()
    if (Player.x < 0 or Player.x > WIN_WIDTH - Player.width) then
        Player.Xspeed = Player.Xspeed * -1 -- Rotate the direction of player --
    end

    if (Player.y < 0 or Player.y > WIN_HEIGHT - Player.height) then
        Player.Yspeed = Player.Yspeed * -1 -- Rotate the direction of player --
    end
end
