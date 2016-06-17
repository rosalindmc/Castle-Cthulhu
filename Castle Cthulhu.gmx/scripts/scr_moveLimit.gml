//Apply Friction
if leftKey-rightKey = 0 or canMove = false
{
    if hspd > 0 
    {
        hspd = max(hspd-(fric/global.frameRate),0)
    }
    else
    {
        hspd = min(hspd+(fric/global.frameRate),0)
    }
}

if upKey-downKey = 0 or canMove = false
{
    if vspd > 0
    {
        vspd = max(vspd-(fric/global.frameRate),0)
    }
    else
    {
        vspd = min(vspd+(fric/global.frameRate),0)
    }
}
