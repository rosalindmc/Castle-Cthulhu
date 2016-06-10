switch(argument0)
{
case 0:  //Initialize Variables
animType = scr_humanoid

anim[0] = scr_humanoidWalk
animStep[0] = 0
anim[1] = scr_pistolIdle
animStep[1] = 0

alarm[0] = 10
alarm[1] = 10

hipsHeight = 6      //6 standing
hipsBounce = 0      //-1 walk, -2 crouch
hipsImage = 0       //0 stand, 1 bounce, 2 run, 3 run, 4 dodge forward, 5 dodge back, 6 crouch 
hipsRot = 0
hipsX = 0
hipsY = 0
bodyHeight = 4      
bodyBounce = 0      //head adjust
bodyImage = 7       //7/8 normal, 9/10 bounce 
bodyRot = 0
bodyX = 0
bodyY = 0    
headImage = 11      //11/12 normal, 13/14 bounce, 15/16 damage 
headRot = 0
headX = 0
headY = 0

charSprite = spr_investigator

break

case 1:  //Draw
hipsX = round(x)
hipsY = round(y-h)

bodyX = round(hipsX+lengthdir_x(hipsHeight-hipsBounce,hipsRot+90))
bodyY = round(hipsY+lengthdir_y(hipsHeight-hipsBounce,hipsRot+90))

headX = round(bodyX+lengthdir_x(bodyHeight,bodyRot+90))
headY = round(bodyY+lengthdir_y(bodyHeight,bodyRot+90))

draw_sprite_ext(charSprite,hipsImage,hipsX,hipsY,facingH,1,hipsRot,c_white,1)
draw_sprite_ext(charSprite,bodyImage+facingV,round(bodyX),round(bodyY),facingH,1,bodyRot,c_white,1)
draw_sprite_ext(charSprite,headImage+facingV,round(headX),round(headY),facingH,1,headRot,c_white,1)
break
}
