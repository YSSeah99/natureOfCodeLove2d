--[[
    Mahjong
]]

Walker = Class{}

function Walker:init(def)

    self.x = VIRTUAL_WIDTH / 2
    self.y = VIRTUAL_HEIGHT / 2

    self.xstep = 0
    self.ystep = 0

    self.draw = {{self.x, self.y}}

end

function Walker:update(dt)

    if mouseX == nil or mouseY == nil then
        self.xstep= math.floor(math.random(3)) - 2;
        self.ystep = math.floor(math.random(3)) - 2;
    else
        local particlePosn = self.draw[#self.draw]

        -- change X
        if mouseX < particlePosn[1] then
            self.xstep = math.floor(math.random(4)) - 3;  -- 1, 2, 3, 4 --> -2, -1, 0, 1
            if self.xstep == -2 then self.xstep = -1 end
        elseif mouseX > particlePosn[1] then
            self.xstep = math.floor(math.random(4)) - 2;
            if self.xstep == 2 then self.xstep = 1 end
        end

        -- change Y
        if mouseY < particlePosn[2] then
            self.ystep = math.floor(math.random(4)) - 3;
            if self.ystep == -2 then self.ystep = -1 end
        elseif mouseY > particlePosn[2] then
            self.ystep = math.floor(math.random(4)) - 2;
            if self.ystep == 2 then self.ystep = 1 end
        end
    end

    self.x = self.x + self.xstep
    self.y = self.y + self.ystep

    table.insert(self.draw, {self.x, self.y})

end

function Walker:render()

    love.graphics.setColor(0, 0, 0, 1)
    for i = 1, #self.draw do
        love.graphics.rectangle('fill', self.draw[i][1], self.draw[i][2], 1, 1)
    end

end