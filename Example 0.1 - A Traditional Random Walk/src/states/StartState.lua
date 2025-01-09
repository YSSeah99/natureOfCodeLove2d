--[[
    Mahjong MenuState
]]

StartState = Class{__includes = BaseState}

function StartState:init()

    walker = Walker()

end

function StartState:update(dt)

    if love.keyboard.wasPressed('escape') then
        love.event.quit()
    end

    walker:update(dt)

end

function StartState:render()

    -- white background
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.rectangle('fill', 0, 0, VIRTUAL_WIDTH, VIRTUAL_HEIGHT)

    -- title
    love.graphics.setFont(gFonts['small'])
    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.printf('0.1 - A Traditional Random Walk', 2, VIRTUAL_HEIGHT * 0.01, VIRTUAL_WIDTH, 'center')

    walker:render()

    -- reset the color
    love.graphics.setColor(1, 1, 1, 1)
end