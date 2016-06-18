//Movement
movement = 16
hspd = 0
vspd = 0
zspd = 0
fric = 25
accel = .3

//Vital
hp = 8
hpMax = 8
sp = 4
spMax = 4

//Core
canAct = true
canAttack = true
canMove = true
moving = false
orderX = x
orderY = y
pointerInteract = -4
targetX = x
targetY = y
myPath = path_add()
pc = 0
h = 0
fh = 0
grounded = true
dTerrain = false
fid = -4

//Attributes
atrVitality = 4
atrStamina = 4
atrMight = 4
atrAgility = 4
atrLore = 4

atrCruelty = 0
atrHope = 0

//Visual
script_execute(scr_humanoid, 0)
facing = 0
facingV = 0
facingH = 0 

//Inventory
invSelect = 1
i = 1
repeat(3)
{
    invSlot[i] = -4
    i += 1
}

//Item Stats
itemDist = 4
itemDir = 0
itemHeight = 8
itemRot = 0

//Combat
turnSpeed = 3
kick = 0
dodgeCost = 1
