/// @description Insert description here
// You can write your code in this editor

direction = point_direction(x, y--, mouse_x, mouse_y);
direction = direction + random_range(-1, 1);
speed = 6;
//image_angle = direction;

hsp = lengthdir_x(speed, direction); 
vsp = lengthdir_y(speed, direction); 

rockGravity = 0.1;

