local menu = {
  slug = "menu"
}

function menu:draw()
  G.printf(
    "Right-click anywhere to begin",
    0,
    G.getHeight() / 2,
    G.getWidth(),
    "center"
  )
end

return menu
