local utils = require("lib/utils")

local menu = {
  title = {
    color = "#F8F8F2",
    content = "BUTTON CLICKER",
    text = G.newText(utils.primaryFont(80)),
    y = G.getHeight() * 0.33
  },
  rule = {
    color = "#6272A4",
    content = "Left-click the button\n as many times as possible\n before you run out of time.",
    text = G.newText(utils.primaryFont(36)),
    y = G.getHeight() * 0.5
  },
  startButton = {
    color = "#F8F8F2",
    content = "Right-click anywhere to begin",
    text = G.newText(utils.primaryFont(36)),
    y = G.getHeight() * 0.7
  }
}

function menu:load()
  for _i, v in ipairs({self.title, self.rule, self.startButton}) do
    loadTextComponent(v)
  end
end

function menu:draw()
  for _i, v in ipairs({self.title, self.rule, self.startButton}) do
    G.draw(v.text)
  end
end

function loadTextComponent(component, y)
  component.text:addf(
    {{utils.hex(component.color)}, component.content},
    G.getWidth(), "center", 0, component.y
  )
end

return menu
