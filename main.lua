local buttonClicker = require("button_clicker")

local menu = buttonClicker.states.menu
local gameOver = buttonClicker.states.gameOver

local timer = buttonClicker.timer
local button = buttonClicker.button
local score = buttonClicker.score

function love.load()
  buttonClicker:load()
  button:spawn()
end

function love.update(dt)
  if buttonClicker:isPlaying() then
    if timer:isRunning() then timer:decreaseBy(dt) end

    if timer:isOver() then
      timer:applyZeroFix()
      buttonClicker:timesUp()
    end
  end
end

function love.draw()
  G.setColor(1, 1, 1)
  G.setFont(buttonClicker.font)

  timer:draw()
  buttonClicker:renderScore()

  if buttonClicker:isMenu() then
    menu:draw()
  elseif buttonClicker:isPlaying() then
    button:draw()
  elseif buttonClicker:isGameOver() then
    gameOver:draw()
  end
end

function love.mousepressed(x, y, mouse_btn, is_touch)
  if buttonClicker:isMenu() or buttonClicker:isGameOver() then
    buttonClicker:startPlaying()

  elseif buttonClicker:isPlaying() then
    if mouse_btn == 1 and button:is_clicked() then
      buttonClicker:increaseScoreBy(1)
      button:respawn()
    end
  end
end