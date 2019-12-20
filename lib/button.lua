require("lib/constants")

local utils = require("lib/utils")

local button = {
  radius = BUTTON_RADIUS,
  type = "fill",
  position = {
    x = 0,
    y = 0
  }
}

function button:spawn()
  self:setX(math.random(self.radius, G.getWidth() - self.radius))
  self:setY(math.random(self.radius, G.getHeight() - self.radius))
end

function button:respawn()
  self:spawn()
end

function button:getX()
  return self.position.x
end

function button:setX(x)
  self.position.x = x
end

function button:getY()
  return self.position.y
end

function button:setY(y)
  self.position.y = y
end

function button:draw()
  G.setColor(1, 0, 0)
  G.circle(self.type, self:getX(), self:getY(), self.radius)
end

--[[
  Returns true if the distance between the mouse and the button center
  is less than or equal to the radius of the circle; false otherwise.
]]--
function button:is_clicked()
  distance_between =
    utils.distance_between(
      {x = love.mouse.getX(), y = love.mouse.getY()},
      {x = button:getX(), y = button:getY()}
    )

  return distance_between <= button.radius
end

return button
