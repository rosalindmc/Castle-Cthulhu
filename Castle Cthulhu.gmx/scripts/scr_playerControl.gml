//Move Control
upKey = keyboard_check(global.upKey)
leftKey = keyboard_check(global.leftKey)
downKey = keyboard_check(global.downKey)
rightKey = keyboard_check(global.rightKey)

lftclickKey = mouse_check_button(mb_left)
rgtclickKey = mouse_check_button(mb_right)
lftclickedKey = mouse_check_button_pressed(mb_left)
rgtclickedKey = mouse_check_button_pressed(mb_right)
dodgeKey = keyboard_check_pressed(global.dodgeKey)
sprintKey = keyboard_check(global.sprintKey)
interactKey = keyboard_check_pressed(global.interactKey)
reloadKey = keyboard_check_pressed(global.reloadKey)
throwKey = keyboard_check_pressed(global.throwKey)
sneakKey = keyboard_check_pressed(global.sneakKey)
emptyKey = keyboard_check(global.emptyKey)

i = 1
repeat(10)
{
    itemKey[i] = keyboard_check_pressed(global.itemKey[i])
    i += 1
}

//Player Lighting Step
scr_playerLighting()

//Sprint Control
if sprintKey = true and sp > 0
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
if dodgeKey = true and canMove = true and sp >= dodgeCost and point_distance(x,y,pointx,pointy) > 5
{
    scr_dodge()  
}

//Interact
if interactKey = true
{
    scr_interact()  
}

//Attack
if lftclickedKey = true
{
    if instance_exists(invSlot[invSelect])
    {
        with(invSlot[invSelect])
        {
            script_execute(use[1],1)
        }
    }
}

//Inventory
i = 1
repeat(array_length_1d(invSlot)-1)
{
    if itemKey[i] = true and canAttack = true and canAct = true
    {
        invSelect = i
    }
i += 1
}

//Adjust Camera
obj_camera.kick = kick
