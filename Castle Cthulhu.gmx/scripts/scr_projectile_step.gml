//Projectile Step
height += zspeed

if height <= 0
{
death = 2
instance_destroy()
}

if height >= 40 //Replace Later
{
death = 2
instance_destroy()
}
