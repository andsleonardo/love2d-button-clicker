local utils = require("lib/utils")

local menu = {
  title = {
    color = {1, 1, 1},
    content = "BUTTON CLICKER",
    text = G.newText(utils.primaryFont(80)),
    y = G.getHeight() * 0.33
  },
  rule = {
    color = {0.6, 0.6, 0.6},
    content = "Left-click the button\n as many times as possible\n before you run out of time.",
    text = G.newText(utils.primaryFont(36)),
    y = G.getHeight() * 0.5
  },
  startButton = {
    color = {1, 1, 1},
    content = "Right-click anywhere to begin",
    text = G.newText(utils.primaryFont(36)),
    y = G.getHeight() * 0.7
  }
}

function loadTextComponent(component, y)
  component.text:addf(
    {component.color, component.content},
    G.getWidth(), "center", 0, component.y
  )
end

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

return menu
