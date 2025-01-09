--[[
    Mahjong
]]

Walker = Class{}

function Walker:init(def)

    self.x = VIRTUAL_WIDTH / 2
    self.y = VIRTUAL_HEIGHT / 2

    self.draw = {}

end

function Walker:update(dt)

    local xstep = math.floor(math.random(4)) - 2;
    local ystep = math.floor(math.random(4)) - 2;

    if xstep == 2 then
        xstep = 1
    end

    if ystep == 2 then
        ystep = 1
    end


    self.x = self.x + xstep
    self.y = self.y + ystep

    table.insert(self.draw, {self.x, self.y})

end

function Walker:render()

    love.graphics.setColor(0, 0, 0, 1)
    for i = 1, #self.draw do
        love.graphics.rectangle('fill', self.draw[i][1], self.draw[i][2], 1, 1)
    end

end