--[[
    Mahjong
]]

Circle = Class{}

function Circle:init(x, y)

    self.x = x
    self.y = y

end

function Circle:update(dt)

end

function Circle:render()

    love.graphics.setColor(0, 0, 0, 0.1)
    love.graphics.circle('fill', self.x, self.y, 10)

end