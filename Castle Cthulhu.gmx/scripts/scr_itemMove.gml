/*
if carried = -4
{
inhand = false
    if height > 0
    {
    height += zspd
    zspd -= .1
    image_angle += spin
    }
    else
    {
    depth += 25
    height = 0
    hspd = 0
    vspd = 0
    zspd = 0
    }
}
else if instance_exists(carried)
{
    if slot = carried.inv_select
    {
    inhand = true
    x = (carried.x+lengthdir_x(carried.item_dist,carried.item_dir))
    y = (carried.y+lengthdir_y(carried.item_dist,carried.item_dir))
    image_angle = carried.item_rot
    image_yscale = carried.facingh
    image_index = 0
    height = carried.item_height
    }
    else
    {
    inhand = false
    x = ( ( (carried.x+(lengthdir_x (4,carried.facing+ (15* (slot+8) ) ) ) ) *3) +x)/4
    y = ( ( (carried.y+(lengthdir_y (4,carried.facing+ (15* (slot+8) ) ) ) ) *3) +y)/4
    image_angle = 270+(carried.facingh*(-45+(-5*slot)+abs(angle_difference(270,carried.facing)*.25)))
    image_yscale = carried.facingh
    image_index = 1
    height = carried.height+carried.bounce
    }
}
else
{
inhand = false
carried = -4
i = random(360)
ii = random(3)
zspd = random(3)
hspd = lengthdir_x(ii,i)
vspd = lengthdir_y(ii,i)
}
