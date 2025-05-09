
var player_distance = point_distance(x, y, obj_Jodie.x, obj_Jodie.y);


if (player_distance < detection_range) {
    
    var dir = point_direction(x, y, obj_Jodie.x, obj_Jodie.y);
    
    x += lengthdir_x(chase_speed, dir);
    y += lengthdir_y(chase_speed, dir);
} else {
   
    x += patrol_speed * patrol_direction;

   
    if (abs(x - patrol_start_x) > patrol_range) {
        patrol_direction *= -1;
    }
}



if (patrol_direction == 1) {
    image_xscale = 1; 

} else {
    image_xscale = -1; 
}