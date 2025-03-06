window_set_size(1366,768) //hopefully keeps the player in the window barrier
//things to do, add hawk code - and add gravity

move_speed = 4; // player moving speed
hsp = 0;
vsp = 0;

//jump
grav = 0;
jump_speed = 10;
move_y = 4;

facing_direction = -1; // facing direction（1 is left，-1 is right）


key_left = ord("A"); // A key
key_right = ord("D"); // D key


//spray function placeholder
spray_range = 100; 
spray_duration = 60; 
spray_cooldown = 300;
spray_timer = 0; 

key_spray = ord("S");

//throwing rock function place holder - sadie
cooldown = 0;

//knock out
isknockout = false;

//climbing
Ontree = false;
treesticking = false;
vy = 0