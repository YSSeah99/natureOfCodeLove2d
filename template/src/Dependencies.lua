--
-- libraries
--

Class = require 'lib/class'
Event = require 'lib/knife.event'
push = require 'lib/push'
Timer = require 'lib/knife.timer'

require 'src/Animation'

gTextures = {

}

gFrames = {

}

gFonts = {
    ['small'] = love.graphics.newFont('fonts/font.ttf', 12),
    ['medium'] = love.graphics.newFont('fonts/font.ttf', 24),
    ['large'] = love.graphics.newFont('fonts/font.ttf', 48)
}

gSounds = {
}
