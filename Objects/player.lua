require("Managers.InputManager")

Player = {
    x = 10,
    y = 10
}


function Player:load()
    
end

function Player:update(dt)
    -- Update player position based on input
    local move = Input:GetMoveInput()
    self.x = self.x + move.x * 200 * dt  -- Move speed of 200 pixels per second
    self.y = self.y + move.y * 200 * dt
end

function Player:draw()
    love.graphics.rectangle("fill", self.x, self.y, 50, 50)
end