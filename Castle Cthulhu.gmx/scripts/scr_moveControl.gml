var moveT = (metre*movement)/global.frameRate

if dTerrain = true
{
moveT *= .5
}

if sprinting = true
{
    sregen = false
    alarm[10] = max(15,alarm[10])
    moveT *= 1.5
    sp -= .1
}

if canMove = true and grounded = true
{
    //Horizontal Movement
    if leftKey-rightKey = 1
    {
        hspd = max(-moveT,hspd-(moveT*accel))
    }
    else if leftKey-rightKey = -1
    {
        hspd = min(moveT,hspd+(moveT*accel))
    }
    
    //Vertical Movement
    if upKey-downKey = 1
    {
        vspd = max(-moveT,vspd-(moveT*accel))
    }
    else if upKey-downKey = -1
    {
        vspd = min(moveT,vspd+(moveT*accel))
    }
    
    hspd = lengthdir_x(min(moveT,point_distance(0,0,hspd,vspd)),point_direction(0,0,hspd,vspd))
    vspd = lengthdir_y(min(moveT,point_distance(0,0,hspd,vspd)),point_direction(0,0,hspd,vspd))
}

