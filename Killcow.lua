--This is code to kill cows in a 6x8 space
--Variable to know how many items are in slot 1
local ItemCount = turtle.getItemCount(1)
local move = 0
--How my turtle will move and attack
while ItemCount =<10 then
  for t = 1,6 do 
    for x = 1,8 do
      turtle.forward()
      turtle.attackDown()
    end
    for y = 1,8 do
      turtle.back()
      turtle.attackDown()
    end
--This is to count items in slot 1        
    turtle.getItemCount(1)            
--I wanted to have my turtle stop here by having a certain number of items in slot 1 using turtle.getItemCount
    turtle.turnLeft()
    turtle.forward()
    turtle.turnRight()
    move == move + 1
  end
end
--This is to get my turtle back to its starting position after having completed its route of the area
turtle.turnRight()
for m = 1 to move do
  turtle.forward()
end
turtle.turnLeft()
