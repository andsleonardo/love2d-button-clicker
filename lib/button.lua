require("lib/constants")

local utils = require("lib/utils")

local button = {
  color = "#FF79C6",
  center = {
    x = G.getWidth() / 2,
    y = G.getHeight() / 2
  },
  radius = BUTTON_RADIUS,
  type = "fill"
}

function button:spawn()
  self:setX(math.random(self.radius, G.getWidth() - self.radius))
  self:setY(math.random(self.radius, G.getHeight() - self.radius))
end

function button:respawn()
  self:spawn()
end

function button:getX()
  return self.center.x
end

function button:setX(x)
  self.center.x = x
end

function button:getY()
  return self.center.y
end

function button:setY(y)
  self.center.y = y
end

function button:draw()
  G.setColor(utils.hex(self.color))
  G.circle(self.type, self:getX(), self:getY(), self.radius)
end

--[[
  Returns true if the distance between the mouse and the button center
  is less than or equal to the radius of the circle; false otherwise.
]]--
function button:is_clicked(clickPosX, clickPosY)
  distanceBetween =
    utils.distanceBetween(
      {x = clickPosX, y = clickPosY},
      {x = button:getX(), y = button:getY()}
    )

  return distanceBetween <= button.radius
end

return button
