//Facing
targetX = mouse_x
targetY = mouse_y
facing = scr_rotate(facing,point_direction(x,y,mouse_x,mouse_y),(360*turnSpeed)/global.frameRate)

if targetY < y
{
facingV = 1
}
else
{
facingV = 0
}

if targetX < x
{
facingH = -1
}
else
{
facingH = 1
}
