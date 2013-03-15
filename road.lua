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
    safe = false
    if args[i] == "-c" then
      isCovered = true
      i=i+1
    end
    if args[i] == "-s" then
      safe = true
      i=i+1
    end
    if args[i] == nil then
      distance = 1
    else
      distance = tonumber(args[i])
    end
    i=1
    if safe == false and covered == false then
      while (i < distance/2) and hasMore do
        pd()
        l()
        f()
        pd()
        r()
        f()
        pd()
        r()
        f()
        pd()
        l()
        f()
        i=i+1
      end
      i=i*2
    else
      while (i < distance) and hasMore do
        r()
        dd()
        pd()
        df()
        pf()
        if isCovered then
          u()
          df()
          pf()
          du()
          pu()
          d()
        end
        l()
        l()
        f()
        dd()
        pd()
        df()
        pf()
        if isCovered then
          u()
          df()
          pf()
          du()
          pu()
          d()
        end
        r()
        r()
        f()
        l()
        f()
        i = i+1
      end
    end
  r()
  r()
    for j=1,i do
      f()
    end
