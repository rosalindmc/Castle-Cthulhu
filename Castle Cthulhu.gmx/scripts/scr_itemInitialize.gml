owner = -4      //Who is carrying this item
h = 0           //Height of item
itemHilt = 0
itemType = item_revolver
name = "Revolver"
sprite_index = spr_revolver

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
