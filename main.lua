local utils = require("lib/utils")
local buttonClicker = require("button_clicker")

local menu = buttonClicker.states.menu
local gameOver = buttonClicker.states.gameOver

local timer = buttonClicker.timer
local button = buttonClicker.button
local score = buttonClicker.score

function love.load()
  buttonClicker:load()
  menu:load()
  gameOver:load()
end

function love.update(dt)
  if buttonClicker:isPlaying() then
    if timer:isRunning() then timer:decreaseBy(dt) end

    if timer:isOver() then
      timer:setToZero()
      buttonClicker:timesUp()
    end
  end
end

function love.draw()
  G.setBackgroundColor(utils.hex("#282A36"))
  G.setFont(MONOGRAM_FONT)

  if buttonClicker:isMenu() then
    menu:draw()
  elseif buttonClicker:isPlaying() then
    button:draw()
  elseif buttonClicker:isGameOver() then
    score:setRecord(score.current)
    gameOver:draw()
  end

  if not buttonClicker:isMenu() then
    timer:draw()
    score:draw()
  end
end

function love.mousepressed(x, y, mouse_btn, is_touch)
  if (buttonClicker:isMenu() or buttonClicker:isGameOver()) then
    if mouse_btn == 2 then buttonClicker:startPlaying() end

  elseif buttonClicker:isPlaying() then
    if mouse_btn == 1 and button:is_clicked(x, y) then
      score:increaseBy(1)
      button:respawn()
    end
  end
end
