    function u()
      while turtle.up() == false do
        turtle.digUp()
      end
    end
    function d()
      while turtle.down() == false do
        turtle.digDown()
      end
    end
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
      for slotIndex=1,8 do
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
    isCovered = true
    direction = up
    if args[i] == "-b" then
      isCovered = false
      i=i+1
    end
    if args[i] == "-d" then
      direction=down
      i=i+1
    end
    if args[i] == nil then
      distance = 1
    else
      distance = tonumber(args[i])
    end
    i=1   
     
    while (i < distance) and hasMore do
      pf()
      forceB()
      turtle.select(9)
      pf()
      turtle.select(slotIndex)
      f()
      if isCovered then
        r()
        pf()
        r()
        pf()
        r()
        pf()
        r()
      end
      if direction == "up" then
        u()
      else
        d()
      end
    end
