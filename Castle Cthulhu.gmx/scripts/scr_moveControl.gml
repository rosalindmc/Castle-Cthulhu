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
    if key_left-key_right = 1
    {
        hspd = max(-moveT,hspd-(moveT*accel))
    }
    else if key_left-key_right = -1
    {
        hspd = min(moveT,hspd+(moveT*accel))
    }
    
    //Vertical Movement
    if key_up-key_down = 1
    {
        vspd = max(-moveT,vspd-(moveT*accel))
    }
    else if key_up-key_down = -1
    {
        vspd = min(moveT,vspd+(moveT*accel))
    }
}

