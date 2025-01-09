--
-- libraries
--

Class = require 'lib/class'
Event = require 'lib/knife.event'
push = require 'lib/push'
Timer = require 'lib/knife.timer'

require 'src/Animation'
require 'src/constants'
require 'src/StateMachine'
require 'src/Util'

require 'src/components/tile'
require 'src/components/deck'
require 'src/components/set'
require 'src/components/AIBehaviour'
require 'src/components/countdown'

require 'src/gui/bgGUI'
require 'src/gui/Panel'
require 'src/gui/playerGUI'
require 'src/gui/playerchoiceGUI'
require 'src/gui/playerHandGUI'
require 'src/gui/AIHandGUI'
require 'src/gui/selection_box'

require 'src/states/BaseState'
require 'src/states/MenuState'

require 'src/states/Singleplayer/SettingState'
require 'src/states/Singleplayer/DealerPickingState'
require 'src/states/Singleplayer/DiceRollingState'

require 'src/states/Singleplayer/PlayerDrawState'
require 'src/states/Singleplayer/PlayerDiscardState'

require 'src/states/AIStates/RightAI/rightAIDrawState'
require 'src/states/AIStates/RightAI/rightAIDiscardState'

require 'src/states/AIStates/OppoAI/oppoAIDrawState'
require 'src/states/AIStates/OppoAI/oppoAIDiscardState'

require 'src/states/AIStates/LeftAI/leftAIDrawState'
require 'src/states/AIStates/LeftAI/leftAIDiscardState'

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
