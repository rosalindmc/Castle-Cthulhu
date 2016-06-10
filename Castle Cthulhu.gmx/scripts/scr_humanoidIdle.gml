animStep[0] += 1
alarm[0] = global.frameRate*.15

switch(argument0)
{
case 0:
animStep[0] = 4
scr_humanoidIdle(4)
break

case 1:
hipsImage = 0
hipsBounce = 0 
headImage = 11
bodyImage = 7
break

case 2:
hipsImage = 1
hipsBounce = 1
headImage = 11
bodyImage = 7
break

case 3:
hipsImage = 0
hipsBounce = 0 
headImage = 13
bodyImage = 7
break

case 4:
hipsImage = 0
hipsBounce = 0
headImage = 11
bodyImage = 7
break

case 5:
animStep[0] = 1
scr_humanoidIdle(1)
break
}
