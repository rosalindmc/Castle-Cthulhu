//Move Control
key_up = keyboard_check(ord("W"))
key_left = keyboard_check(ord("A"))
key_down = keyboard_check(ord("S"))
key_right = keyboard_check(ord("D"))

key_lftclick = mouse_check_button(mb_left)
key_rgtclick = mouse_check_button(mb_right)
key_lftclicked = mouse_check_button_pressed(mb_left)
key_rgtclicked = mouse_check_button_pressed(mb_right)
key_dodge = keyboard_check_pressed(vk_space)
key_sprint = keyboard_check(vk_shift)
key_interact = keyboard_check_pressed(ord("E"))
key_reload = keyboard_check_pressed(ord("R"))
key_drop = keyboard_check_pressed(ord("F"))
key_sneak = keyboard_check_pressed(ord("C"))

key_inv[1] = keyboard_check_pressed(ord("1"))
key_inv[2] = keyboard_check_pressed(ord("2"))
key_inv[3] = keyboard_check_pressed(ord("3"))
key_inv[4] = keyboard_check_pressed(ord("4"))

//Player Lighting Step
scr_playerLighting()

//Sprint Control
if key_sprint = true and sp > 0
{
    sprinting = true
}
else
{
    sprinting = false
}

//Movement
scr_moveControl()

//Dodge Control
if key_dodge = true and can_move = true and sp >= dodgecost and point_distance(x,y,pointx,pointy) > 5
{
scr_dodge()  
}

//Interact
if key_interact = true
{
scr_interact()  
}

//Attack

//Inventory
i = 1
repeat(4)
{
    if key_inv[i] = true and canAttack = true and canAct = true
    {
    inv_select = i
    }
i += 1
}

//Adjust Camera
obj_camera.kick = kick
