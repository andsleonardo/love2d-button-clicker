local menu = {
  title = "BUTTON CLICKER",
  rule = "Left-click the button\n as many times as possible\n before you run out of time.",
  startButton = "Right-click anywhere to begin"
}

function menu:draw()
  renderTitle(self.title)
  renderRule(self.rule)
  renderStartButton(self.startButton)
end

function renderTitle(text)
  G.setFont(G.newFont(FONT_PATH, 80))
  G.printf(
    text,
    0,
    G.getHeight() * 0.3,
    G.getWidth(),
    "center"
  )
end

function renderRule(text)
  G.setFont(G.newFont(FONT_PATH, 36))
  G.setColor(0.6, 0.6, 0.6)

  G.printf(
    text,
    0,
    G.getHeight() * 0.5,
    G.getWidth(),
    "center"
  )
end

function renderStartButton(text)
  G.setFont(G.newFont(FONT_PATH, 36))
  G.setColor(1, 1, 1)

  G.printf(
    text,
    0,
    G.getHeight() * 0.75,
    G.getWidth(),
    "center"
  )
end

return menu
