--[[
    Mahjong MenuState
]]

StartState = Class{__includes = BaseState}

function StartState:init()

    self.barWidth = VIRTUAL_WIDTH / 20
    self.bars = {}

    for i = 0, 19 do
        table.insert(self.bars, Bar{
            x = self.barWidth * i,
            width = self.barWidth
        })
    end

end

function StartState:update(dt)

    if love.keyboard.wasPressed('escape') then
        love.event.quit()
    end

    local randomNo = math.random(20)
    self.bars[randomNo].height = self.bars[randomNo].height + 1

end

function StartState:render()

    -- white background
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.rectangle('fill', 0, 0, VIRTUAL_WIDTH, VIRTUAL_HEIGHT)

    -- title
    love.graphics.setFont(gFonts['small'])
    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.printf('A Random-Number Distribution', 2, VIRTUAL_HEIGHT * 0.01, VIRTUAL_WIDTH, 'center')

    for i = 1, 20 do
        self.bars[i]:render()
    end

    -- reset the color
    love.graphics.setColor(1, 1, 1, 1)

end