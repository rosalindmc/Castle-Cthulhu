switch(argument0)
{
case 0: //Ground
draw_sprite_ext(sprite_index,image_index,round(x),round(y-h),1,image_yscale,image_angle,c_white,1)
break

case 1: //Held
draw_sprite_ext(sprite_index,image_index,round(x+lengthdir_x(itemHilt,image_angle)),round(y+lengthdir_y(itemHilt,image_angle)-h),1,image_yscale,image_angle,c_white,1)
break
}
