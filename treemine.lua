function u()
  while turtle.up() == false do
    turtle.digUp()
  end
end
function d() turtle.down() end
function df() turtle.dig() end
function f()
  while turtle.forward() == false do
    turtle.dig()
  end
end
function r() turtle.turnRight() end
function l() turtle.turnLeft() end
function du() turtle.digUp() end
function dd() turtle.digDown() end
function b() turtle.back() end

function col() 
  df()
  f()
  du()
  dd()
end

args = {...}
if args[1] == nil then
  distance = 1
else
  distance = args[1]
end

if args[2] == nil then
  height = 2
else
  height = args[2]
end

for j=1,height do
for i=1,distance do
  col()
  l()
  col()
  col()
  r()
  col()
  r()
  col()
  col()
  l()
end
l()
f()
f()
l()
u()
u()
u()

end

for i=1,height*3 do
d()
end
