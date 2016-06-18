animStep[0] += sign(moving)
alarm[0] = (global.frameRate*.3)/max(1,abs((60*moving)/global.frameRate))

switch(argument0)
{
case 0:
animStep[0] = 4
scr_humanoidWalk(4)
break

case 1:
hipsImage = 2
hipsBounce = 0 
headImage = 13
bodyImage = 7
break

case 2:
hipsImage = 1
hipsBounce = 1
headImage = 11
bodyImage = 9
break

case 3:
hipsImage = 3
hipsBounce = 0 
headImage = 13
bodyImage = 7
break

case 4:
hipsImage = 1
hipsBounce = 1
headImage = 11
bodyImage = 7
break

case 5:
animStep[0] = 1
scr_humanoidWalk(1)
break
}
