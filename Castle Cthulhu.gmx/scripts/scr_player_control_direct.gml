//Move Control
key_up = keyboard_check(ord("W"))
key_left = keyboard_check(ord("A"))
key_down = keyboard_check(ord("S"))
key_right = keyboard_check(ord("D"))

key_lftclick = mouse_check_button(mb_left)
key_rgtclick = mouse_check_button(mb_right)
key_lftclicked = mouse_check_button_pressed(mb_left)
key_rgtclicked = mouse_check_button_pressed(mb_right)

if can_move = true
{
//Horizontal Movement
if key_left-key_right = 1
{
hspd = max(-movement,hspd-(movement*.3))
}
else if key_left-key_right = -1
{
hspd = min(movement,hspd+(movement*.3))
}

//Vertical Movement
if key_up-key_down = 1
{
vspd = max(-movement,vspd-(movement*.3))
}
else if key_up-key_down = -1
{
vspd = min(movement,vspd+(movement*.3))
}
}

//Attack
if key_lftclick = 1
{
script_execute(equip_attacktype[1],0,1)
}

if key_lftclicked = 1
{
script_execute(equip_attacktype[1],1,1)
}

if key_rgtclick = 1
{
script_execute(equip_attacktype[2],0,2)
}

if key_rgtclicked = 1
{
script_execute(equip_attacktype[2],1,2)
}
