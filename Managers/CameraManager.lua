require("Managers.InputManager")

Camera = {
    x = 0,
    y = 0,
    scaleX = 1,
    scaleY = 1,
    rotation = 0
}

function Camera:set()
    love.graphics.push()
    love.graphics.rotate(-self.rotation)
    love.graphics.scale(1 / self.scaleX, 1 / self.scaleY)
    love.graphics.translate(-self.x, -self.y)
end

function Camera:unset()
    love.graphics.pop()
end

function Camera:move(dx, dy)
    self.x = self.x + (dx or 0)
    self.y = self.y + (dy or 0)
end

function Camera:rotate(dr)
    self.rotation = self.rotation + dr
end

function Camera:scale(sx, sy)
    sx = sx or 1
    self.scaleX = self.scaleX * sx
    self.scaleY = self.scaleY * (sy or sx)
end

function Camera:setPosition(x, y)
    self.x = x or self.x
    self.y = y or self.y
end

function Camera:setScale(sx, sy)
    self.scaleX = sx or self.scaleX
    self.scaleY = sy or self.scaleY
end


--- controle de movimento:
function Camera:update(dt)
    local value = Input:GetCamInput()
    Camera:move(value.x * 200 * dt, value.y * 200 * dt)
end

function Camera:draw()
    love.graphics.setColor(1, 0, 0, 1)
    -- superior esquerdo
    love.graphics.line(10, 10, 40, 10)
    love.graphics.line(10, 10, 10, 40)
    -- superior direito
    love.graphics.line(WINDOW_WIDTH-10, 10, WINDOW_WIDTH-40, 10)
    love.graphics.line(WINDOW_WIDTH-10, 10, WINDOW_WIDTH-10, 40)
    -- inferior esquerdo 
    love.graphics.line(10, WINDOW_HEIGHT-10, 10, WINDOW_HEIGHT-40)
    love.graphics.line(10, WINDOW_HEIGHT-10, 40, WINDOW_HEIGHT-10)
    --inferior direito
    love.graphics.line(WINDOW_WIDTH-10, WINDOW_HEIGHT-10, WINDOW_WIDTH-40, WINDOW_HEIGHT-10)
    love.graphics.line(WINDOW_WIDTH-10, WINDOW_HEIGHT-10, WINDOW_WIDTH-10, WINDOW_HEIGHT-40)
    -- cruz no meio
    love.graphics.line(WINDOW_WIDTH / 2 - 15, WINDOW_HEIGHT / 2, WINDOW_WIDTH / 2 + 15, WINDOW_HEIGHT / 2)
    love.graphics.line(WINDOW_WIDTH / 2, WINDOW_HEIGHT / 2 - 15, WINDOW_WIDTH / 2, WINDOW_HEIGHT / 2 + 15)
    
    love.graphics.setColor(1, 1, 1, 1)

end