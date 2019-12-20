require("lib/constants")

-- General game logic and common stuff among all states.
local buttonClicker = {
  button = require("lib/button"),
  current_state = "menu",
  font = G.newFont(30),
  score = 0,
  states = {
    menu = require("lib/states/menu"),
    playing = {slug = "playing"},
    gameOver = require("lib/states/game_over"),
  },
  timer = require("lib/timer")
}

function buttonClicker:load()
  self.current_state = "menu"
  self:resetScore()
  self.timer:reset()
end

-- Game state
function buttonClicker:goToMenu()
  self.current_state = "menu"
end

function buttonClicker:startPlaying()
  self.current_state = "playing"
  self:resetScore()
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

-- Score
function buttonClicker:resetScore()
  self.score = 0
end

function buttonClicker:increaseScoreBy(n)
  self.score = self.score + n
end

function buttonClicker:renderScore()
  G.printf("Score: " .. self.score, 0, 0, G.getWidth() / 2, "left")
end

return buttonClicker
