--[[
    Mahjong
]]

Bar = Class{}

function Bar:init(def)

    self.x = def.x

    self.width = def.width
    self.height = 0

end

function Bar:update(dt)

end

function Bar:render()

    love.graphics.setColor(192/256, 192/256, 192/256, 0.75)
    love.graphics.rectangle('fill', self.x, VIRTUAL_HEIGHT - self.height, self.width, math.min(self.height, VIRTUAL_HEIGHT))

    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.rectangle('line', self.x, VIRTUAL_HEIGHT - self.height, self.width, math.min(self.height, VIRTUAL_HEIGHT))

end