--This is code to kill cows in a 6x8 space
--This is to count the number of items in slot 1 of the turtle's inventory
local s == 0
turtle.getItemCount(1)
--How my turtle will move and attack
for t = 1,6 do 
	for x = 1,8 do
    turtle.forward()
    turtle.attackDown()
  end
  for y = 1,8 do
    turtle.back()
    turtle.attackDown()
  end
--I wanted to have my turtle stop here by having a certain number of items in slot 1 using turtle.getItemCount
  turtle.turnLeft()
  turtle.forward()
  turtle.turnRight()
end
--This is to get my turtle back to its starting position after having completed its route of the area
turtle.turnRight()
turtle.forward()
turtle.forward()
turtle.forward()
turtle.forward()
turtle.forward()
turtle.turnLeft()
