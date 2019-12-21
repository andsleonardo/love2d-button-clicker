require("lib/constants")

-- General game logic and common stuff among all states.
local buttonClicker = {
  button = require("lib/button"),
  current_state = "menu",
  font = G.newFont("assets/monogram_extended.ttf", 42),
  score = require("lib/score"),
  states = {
    menu = require("lib/states/menu"),
    playing = {},
    gameOver = require("lib/states/game_over"),
  },
  timer = require("lib/timer")
}

function buttonClicker:load()
  self.current_state = "menu"
  self.score:reset()
  self.timer:reset()
end

-- Game state
function buttonClicker:goToMenu()
  self.current_state = "menu"
end

function buttonClicker:startPlaying()
  self.current_state = "playing"
  self.score:reset()
  self.timer:reset()
end

function buttonClicker:timesUp()
  self.current_state = "over"
end

function buttonClicker:isMenu()
  return self.current_state == "menu"
end

function buttonClicker:isPlaying()
  return self.current_state == "playing"
end

function buttonClicker:isGameOver()
  return self.current_state == "over"
end

return buttonClicker
