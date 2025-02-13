// walk funtion:
hsp = 0;
vsp = 0;
image_speed = 1;




// keyboard input
if (keyboard_check(key_left)) {
    hsp = -move_speed; 
    facing_direction = 1; 
}
if (keyboard_check(key_right)) {
    hsp = move_speed;
    facing_direction = -1; 
}

// update player location
x += hsp;
image_xscale = facing_direction


if (hsp != 0) {
    sprite_index = spr_jodie_walk; 
} else {
    sprite_index = spr_jodie_idle; 
}

 //jumping placeholder - work pending..sadie
 if !place_meeting(x, y + 1, obj_greybox)
{
	if keyboard_check(vk_space) vsp = -jump_speed;
    gravity = 0.01;
}
else
{
    gravity = 0;
}
 




move_and_collide(hsp, move_y, obj_greybox)



//spraying placeholder
if (keyboard_check(key_spray))  && (cooldown < 1) {
    
	instance_create_layer(x, y, "_Rock", obj_spray);

	spray_cooldown = 300;
	
}


//throwing rocks placeholder
if(mouse_check_button(mb_left)) && (cooldown < 1)
{
	 
	 instance_create_layer(x, y, "_Rock", obj_Rock)
	cooldown = 25;
	
}

cooldown = cooldown - 1;


//game fates

if place_meeting(x, y, obj_hole)
{
	room_goto_next()
}
if place_meeting(x, y, obj_Lion)
{
	room_restart()
}