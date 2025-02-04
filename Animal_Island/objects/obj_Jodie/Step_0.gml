// initial moving is 0
hsp = 0;

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