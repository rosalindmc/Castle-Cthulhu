//Game Variables
use[1] = scr_fire
use[2] = scr_melee

//Particle System
ps1 = part_system_create()
pt1 = part_type_create()
ps1 = part_emitter_create(ps1)

//Core
owner = -4      //Who is carrying this item
h = 0           //Height of item
itemHilt = 0
itemType = item_revolver
muzzleFlash = spr_muzzle
bLength = 0
image_index = spr_none

alarm[0] = 2

switch(argument0)
{
case 1: //Ground only variable
useType = scr_equip //How item is interacted with when on the ground
image_speed = 0
break
case 2: //Carry only variables
slot = 0
inHand = false
break
}
