--This is code to kill cows in a 6x8 space
--Variable to know how many items are in slot 1
local ItemCount = turtle.getItemCount(1)
local move = 0
--How my turtle counts when to stop and when to continue
while ItemCount <=15 and move <6 do 
--How my turtle moves and attacks  
  for x = 1,8 do 
    turtle.forward()
    turtle.attackDown()
  end
    for y = 1,8 do
      turtle.back()
      turtle.attackDown()
    end
--This is to count items in slot 1        
  ItemCount = turtle.getItemCount(1)
--This brings my turtle into the next row  
  turtle.turnLeft()    
  turtle.forward()
  turtle.turnRight()
  move = move + 1
end
--This is to get my turtle back to its starting position by counting how mant times it killed a row
turtle.turnRight()
for m = 1 , move do
  turtle.forward()
end
turtle.turnLeft()
