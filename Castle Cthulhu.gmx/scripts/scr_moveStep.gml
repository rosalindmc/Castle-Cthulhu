//Horizontal Collision
if place_meeting(x+hspd,y,obj_solid)
{
    while !place_meeting(x+sign(hspd),y,obj_solid)
    {
        x += sign(hspd)
    }
    hspd = 0
}

x += hspd

//Vertical Collision
if place_meeting(x,y+vspd,obj_solid)
{
    while !place_meeting(x,y+sign(vspd),obj_solid)
    {
        y += sign(vspd)
    }
    vspd = 0
}

y += vspd
    
//Check Moving
if canMove = true and point_distance(x,y,xprevious,yprevious) > 0
{
    if abs(angle_difference(point_direction(x,y,targetX,targetY),point_direction(xprevious,yprevious,x,y))) < 90
    {
        moving = point_distance(x,y,xprevious,yprevious)
    }
    else
    {
        moving = -point_distance(x,y,xprevious,yprevious)
    }
}
else
{
    moving = false
}

//Floor Finder
fid = instance_position(x,y,obj_floor)
if fid != -4
{
    if fid.difficult = true
    {
        dTerrain = true
    }
    else
    {
        dTerrain = false
    }

    if fid.ramp = false
    {
        fh = fid.h
    }
    else
    {
        script_execute(fid.ramp)
    }      
}
else
{
    fh = -1000
    dTerrain = false
}

//Apply Gravity
if h > fh
{
    grounded = false
    zspd += (10*metre)/global.frameRate
    h -= zspd
}
if h <= fh
{
    grounded = true
    h = fh
    zspd = 0
}
