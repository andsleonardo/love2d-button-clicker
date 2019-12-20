local menu = {
  slug = "menu"
}

function menu:draw()
  G.printf(
    "Click/tap anywhere to begin",
    0,
    G.getHeight() / 2,
    G.getWidth(),
    "center"
  )
end

return menu
