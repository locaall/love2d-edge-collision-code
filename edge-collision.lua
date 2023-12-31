-- Get the default window dimensions --
WIN_WIDTH, WIN_HEIGHT = love.graphics.getDimensions()

function love.load()
    -- Create a player and add its attributes --
    Player = {
        x = 100,
        y = 100,
        height = 50,
        width = 50,
        Xspeed = 100,
        Yspeed = 100
    }
end

function love.update(dt)
    -- Update the player each frame --
    Player.x = Player.x + (Player.Xspeed * dt)
    Player.y = Player.y + (Player.Yspeed * dt)

    -- Check edge collision on each frame --
    detectCollision()
end

function love.draw()
    -- Draw a player --
    love.graphics.rectangle("line", Player.x, Player.y, Player.width, Player.height)
end

-- Detect an edge collision --
function detectCollision()
    if (Player.x < 0 or Player.x > WIN_WIDTH - Player.width) then
        -- Rotate the direction of player --
        Player.Xspeed = Player.Xspeed * -1 
    end

    if (Player.y < 0 or Player.y > WIN_HEIGHT - Player.height) then
         -- Rotate the direction of player --
        Player.Yspeed = Player.Yspeed * -1
    end
end
