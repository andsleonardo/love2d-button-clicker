local utils = {}

function utils.distanceBetween(p1, p2)
  return math.sqrt((p1.x - p2.x) ^ 2 + (p1.y - p2.y) ^ 2)
end

function utils.primaryFont(size)
  return G.newFont(MONOGRAM_FONT_FILE, size)
end

return utils
