function love.load()
  height = love.graphics.getHeight()
  yoff = 0.0
  y = love.math.noise(yoff) * height
  x = 0
  points = {x, y}
end

function love.draw()
  love.graphics.setColor(255, 255, 255)
  -- love.graphics.points(points)
  love.graphics.line(points)
end

function love.update(dt)
  yoff = yoff + 0.01
  y = love.math.noise(yoff) * height
  x = x + 1
  table.insert(points, x)
  table.insert(points, y)
end
