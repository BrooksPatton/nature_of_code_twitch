function love.load()
  randomNumbers = {}
  width = love.graphics.getWidth()
  height = love.graphics.getHeight()
  x = 0
  y = height
  local i
  for i = 1, 20 do
    randomNumbers[i] = 0
  end
  rectWidth = width / 20
end

function love.draw()
  local left = x

  for i,v in ipairs(randomNumbers) do
    love.graphics.setColor(131, 192, 240)
    love.graphics.rectangle('fill', left, height - v, rectWidth, v)
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle('line', left, height - v, rectWidth, v)
    love.graphics.print(i, left + rectWidth / 2, height - 20)

    left = left + rectWidth
  end
end

function love.update(dt)
  local r = monteCarloRandomNumber(1, 20)

  randomNumbers[r] = randomNumbers[r] + 1
end

function monteCarloRandomNumber(m, n)
  while true do
    local r1 = love.math.random(m, n)
    local r2 = love.math.random(m, n)

    if r2 * r2 <= r1 * r1 then
      return r1
    end
  end
end
