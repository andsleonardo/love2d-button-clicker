local utils = {}

function utils.distanceBetween(p1, p2)
  return math.sqrt((p1.x - p2.x) ^ 2 + (p1.y - p2.y) ^ 2)
end

function utils.primaryFont(size)
  return G.newFont(MONOGRAM_FONT_FILE, size)
end

function utils.hex(hex, alpha)
  local red, green, blue

  hex = hex:gsub("#", "")
  red, green, blue = hex:match('(..)(..)(..)')

  red, green, blue = tonumber(red, 16) / 255, tonumber(green, 16) / 255, tonumber(blue, 16) / 255
  red, green, blue = math.floor(red*100) / 100, math.floor(green*100) / 100, math.floor(blue*100) / 100

  return red, green, blue, (alpha or 1)
end

function utils.rgb(r, g, b, alpha)
  local red, green, blue = r/255, g/255, b/255
  red, green, blue = math.floor(red*100) / 100, math.floor(green*100) / 100, math.floor(blue*100) / 100

  return red, green, blue, (alpha or 1)
end

return utils
