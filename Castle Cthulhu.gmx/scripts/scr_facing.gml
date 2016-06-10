//Facing
targetX = mouse_x
targetY = mouse_y
facing = round(scr_rotate(facing,point_direction(x,y,mouse_x,mouse_y),15)/15)*15

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
