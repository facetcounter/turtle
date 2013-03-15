forceMode = false
wideMode = false
args = {...}
i=1
if args[i] == "-f" then
  forceMode = true
  i=i+1
  print("forceMode = true")
end
if args[i] == "-fw" then
  forceMode = true
  wideMode = true
  i = i+1
  print ("forceMode and wideMode are true")
end


while i <= #args do
  c = args[i]
  if tonumber(args[i+1]) then
    r = args[i+1]
    i=i+1
  else
    r=1
  end
  print("doing "..c.." times "..r)
  if (c == "f") then
    for j=1,r do
      if (forceMode) then
        while turtle.forward() == false do
          turtle.dig()
          if (wideMode) then
            turtle.digUp()
          end
        end
      else
        turtle.forward()
      end
    end
  end
  if (c == "u") then
    for j=1,r do
      if (forceMode) then
        while turtle.up() == false do
          turtle.digUp()
          if (wideMode) then
            turtle.dig()
          end
        end
      else
        turtle.up()
      end
    end
  end
  if (c == "d") then
    for j=1,r do
      if (forceMode) then
        while turtle.down() == false do
          turtle.digDown()
          if (wideMode) then
            turtle.dig()
          end
        end
      else
        turtle.down()
      end
    end
  end

  if c == "l" then
    for j=1,r do
      turtle.turnLeft()
    end
  end
  if c == "r" then 
    for j=1,r do
      turtle.turnRight()
    end
  end
  if c == "b" then
    for j=1,r do
      turtle.back()
    end
  end


  i = i+1
end
