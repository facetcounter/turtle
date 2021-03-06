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
    function forceB()
      if turtle.back() == false then
        r()
        r()
        while turtle.forward()==false do
          turtle.dig()
        end
        r()
        r()
      end
    end
    function pd()
      findSlot()
      turtle.placeDown()
    end
    function pf()
      findSlot()
      turtle.place()
    end
    function pu()
      findSlot()
      turtle.placeUp()
    end
    function findSlot()
      if turtle.getItemCount(slotIndex) > 0 then
        return true
      end
      for slotIndex=1,9 do
        if turtle.getItemCount(slotIndex) > 0 then
          return true
        end
      end
      hasMore = false
      return false
    end


    args = {...}
    slotIndex = 1
    hasMore = true
    turtle.select(slotIndex)
    i=1
    isCovered = false
    if args[i] == "-c" then
      isCovered = true
      i=i+1
    end
    if args[i] == nil then
      size = 1
    else
      size = tonumber(args[i])
    end
    i=1

  function platform(x,y)
    i=1
    while (i < x) and hasMore do
      j=1
      while (j < y) and hasMore do
        forceB()
        pf()
        j=j+1
      end
      if (i % 2) > 0 then
        r()
        forceB()
        r()
        forceB()
      else
        l()
        forceB()
        l()
        forceB()
      end
      i=i+1
    end
  end

  function wall(x,y)
    i=1
    while (i < x) and hasMore do
      j=1
      while (j < y) and hasMore do
        forceB()
        pf()
        j=j+1
      end
      r()
      r()
      u()
      forceB()
      i=i+1
    end
  end

for i=1,5 do
  f()
  r()
  f()
  l()
end

platform(10,10)


u()
f()
for i=1,4 do
  for j=1,10 do
    forceB()
    pf()
  end
  r()
end

for i=1,10 do
  d()
end

for i=1,4 do
  pd()
  pf()
  r()
  pf()
  r()
  pf()
  r()
  pf()

  u()
  for j=1,10 do
    f()
  end

  d()
end
