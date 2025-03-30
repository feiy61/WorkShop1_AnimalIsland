window_set_size(1366,768) //hopefully keeps the player in the window barrier
//things to do, add hawk code - and add gravity

lifeLeft = 3;
isAttack = false;

move_speed = 3; // player moving speed
hsp = 0;
vsp = 0;

//jump
grav = 3;
jump = -6;
move_y = 20;
is_grounded = false;
grounded = true;
isJumping = false;
jump_timer = 0;

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

//collect system
rocksCollect = 0;

//climbing
Ontree = false;
treesticking = false;
vy = 0