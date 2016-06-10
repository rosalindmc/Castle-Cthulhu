//Movement
if point_distance(x,y,orderX,orderY) > 12
{
i = 0
while(collision_line(x,y,path_get_point_x(myPath,i),path_get_point_y(myPath,i),obj_solid,false,true) != true)
{
xx = path_get_point_x(myPath,1)
yy = path_get_point_y(myPath,1)
i += 1
}

//orderx = xx
//ordery = yy


motion_add(point_direction(x,y,xx,yy),movement)
hspd = hspeed
vspd = vspeed
speed = 0
/*
xx = path_get_point_x(my_path,path_get_length(my_path))
yy = path_get_point_y(my_path,path_get_length(my_path))

orderx = xx
ordery = yy

/*
xx = path_get_point_x(my_path,2)
yy = path_get_point_y(my_path,2)

orderx = xx
ordery = yy
*/
}
