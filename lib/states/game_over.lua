local gameOver = {}

function gameOver:draw()
  G.printf(
    "Time's up!\n Right-click to start over",
    0,
    G.getHeight() / 2,
    G.getWidth(),
    "center"
  )
end

return gameOver
