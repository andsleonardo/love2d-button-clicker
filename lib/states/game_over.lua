local gameOver = {
  slug = "gameOver"
}

function gameOver:draw()
  G.printf(
    "Time's up!\n Right-click to try again",
    0,
    G.getHeight() / 2,
    G.getWidth(),
    "center"
  )
end

return gameOver
