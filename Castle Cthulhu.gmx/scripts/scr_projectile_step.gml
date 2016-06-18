//Contact
if collision_line(x,y,x+lengthdir_x(direction,spd),y+lengthdir_y(direction,spd),obj_solid,true,true) and image_alpha = 1
{
    while !collision_line(x,y,x+lengthdir_x(direction,1),y+lengthdir_y(direction,1),obj_solid,true,true)
    {
    x += lengthdir_x(direction,1)
    y += lengthdir_y(direction,1)
    }
    x += lengthdir_x(direction,1)
    y += lengthdir_y(direction,1)
    spd = 0
}
else
{
//Flight
x += lengthdir_x(direction,spd)
y += lengthdir_y(direction,spd)
}

//Projectile Step
height += zspd

//Temp floor and ceiling hit
if h <= 0
{
death = 2
instance_destroy()
}

if h >= 40 //Replace Later
{
death = 2
instance_destroy()
}
