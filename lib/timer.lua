local timer = {
  seconds = TIMER_MAX_SECONDS,
  min_seconds = 0,
  max_seconds = TIMER_MAX_SECONDS
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

function timer:applyZeroFix()
  self.seconds = 0
end

function timer:decreaseBy(seconds)
  self.seconds = self.seconds - seconds
end

function timer:draw()
  G.printf(
    "Time left: " .. math.ceil(self.seconds),
    G.getWidth() / 2, 0, G.getWidth() / 2, "right"
  )
end

return timer
