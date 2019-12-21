local score = {
  best = 0,
  current = 0,
  wrapper = {
    x = 0 + SCREEN_MARGIN,
    y = 0 + SCREEN_MARGIN,
    size = G.getWidth() - SCREEN_MARGIN * 2,
    align = "left"
  }
}

function score:reset()
  self.current = 0
end

function score:increaseBy(n)
  self.current = self.current + n
end

function score:setRecord(n)
  if n > self.best then self.best = n end
end

function score:draw()
  G.printf(
    "Score: " .. self.current .. "\nBest: " .. self.best,
    self.wrapper.x, self.wrapper.y, self.wrapper.size, self.wrapper.align
  )
end

return score
