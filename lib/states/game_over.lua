local utils = require("lib/utils")

local gameOver = {
  title = {
    color = "#FFFFFF",
    content = "TIME'S UP!",
    text = G.newText(utils.primaryFont(60)),
    y = G.getHeight() * 0.5
  },
  startOver = {
    color = "#6272A4",
    content = "Right-click to start over",
    text = G.newText(utils.primaryFont(36)),
    y = G.getHeight() * 0.6
  }
}

function gameOver:load()
  for _i, v in ipairs({self.title, self.startOver}) do
    loadTextComponent(v)
  end
end

function gameOver:draw()
  for _i, v in ipairs({self.title, self.startOver}) do
    G.draw(v.text)
  end
end

function loadTextComponent(component, y)
  component.text:addf(
    {{utils.hex(component.color)}, component.content},
    G.getWidth(), "center", 0, component.y
  )
end

return gameOver
