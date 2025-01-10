--[[
    Mahjong MenuState
]]

StartState = Class{__includes = BaseState}

function StartState:init()

    self.circles = {}

end

function StartState:update(dt)

    if love.keyboard.wasPressed('escape') then
        love.event.quit()
    end

    local randomNo = love.math.randomNormal(60, VIRTUAL_WIDTH / 2)
    table.insert(self.circles, Circle(randomNo, VIRTUAL_HEIGHT / 2))

end

function StartState:render()

    -- white background
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.rectangle('fill', 0, 0, VIRTUAL_WIDTH, VIRTUAL_HEIGHT)

    -- title
    love.graphics.setFont(gFonts['small'])
    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.printf('A Gaussian Distribution', 2, VIRTUAL_HEIGHT * 0.01, VIRTUAL_WIDTH, 'center')

    for i = 1, #self.circles do
        self.circles[i]:render()
    end

    -- reset the color
    love.graphics.setColor(1, 1, 1, 1)
end