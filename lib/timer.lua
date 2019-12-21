local utils = require("lib/utils")

local timer = {
  color = "#F8F8F2",
  seconds = TIMER_MAX_SECONDS,
  min_seconds = 0,
  max_seconds = TIMER_MAX_SECONDS,
  wrapper = {
    x = 0 + SCREEN_MARGIN,
    y = 0 + SCREEN_MARGIN,
    size = G.getWidth() - SCREEN_MARGIN * 2,
    align = "right"
  }
}

function timer:reset()
  self.seconds = 10
end

function timer:isRunning()
  return self.seconds > 0
end

function timer:isOver()
  return self.seconds < 0
end

function timer:setToZero()
  self.seconds = 0
end

function timer:decreaseBy(seconds)
  self.seconds = self.seconds - seconds
end

function timer:draw()
  G.setColor(utils.hex(self.color))

  G.printf(
    "Time left: " .. math.ceil(self.seconds),
    self.wrapper.x, self.wrapper.y, self.wrapper.size, self.wrapper.align
  )
end

return timer
