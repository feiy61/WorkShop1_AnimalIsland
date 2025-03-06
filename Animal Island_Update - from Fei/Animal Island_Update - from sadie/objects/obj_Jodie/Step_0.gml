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



//jumping 

if keyboard_check(vk_space) 
	{
		vsp = -jump_speed;
		gravity = 0.01;
		if !place_meeting(x, y + 1, obj_greybox)
		{
			gravity = 0;
		}
	}


y+= vsp;



move_and_collide(hsp, move_y, obj_greybox)



//spraying placeholder
if (keyboard_check(key_spray))  && (cooldown < 1) {
    
	instance_create_layer(x, y, "_Spray", obj_spray);

	cooldown = 50;
	
}



//throwing rocks placeholder
if(mouse_check_button(mb_left)) && (cooldown < 1)
{
	 
    instance_create_layer(x, y, "_Rock", obj_Rock)
	cooldown = 50;
	
}

cooldown --;

//Hiding placeholder
if (place_meeting(x, y, Obj_hidingH))
{
     visible = 1 - keyboard_check(ord("C"));
	 obj_Lion.isBlind = true;
}


//game fates

if place_meeting(x, y, obj_hole)
{
	room_goto_next()
}

if place_meeting(x, y, obj_Lion)
{
	
	if(obj_Lion.isBlind == false)
	{
	room_restart()
	}
}


//climbing 

/*
//are you on tree???
if Ontree && !place_meeting(x, y, Obj_ground)
 Ontree = false
 
 //getting on tree
 //climinb up
 if place_meeting(x, y, Obj_Tree) && place_meeting(x, y+1, Obj_ground)
 if keyboard_check(vk_up)
  Ontree = true;
 
 //climbing down
 if place_meeting(x, y, Obj_Tree)
 if keyboard_check(vk_down)
 Ontree = false;
 

//at last - climbing up on tree
if Ontree && keyboard_check(vk_up)
{
	y = y -3
	if !place_meeting(x, y, Obj_Tree)
	{
	  Ontree = false
		while (! place_meeting(x, y+1, Obj_Tree))
		y+=1
	}
	
}
//climbing down
if Ontree && keyboard_check(vk_down) {
	var wallId, itsOk;
	itsOk = false;
	wallId = instance_place(x, y+3, Obj_ground)
	if wallId < 0
	 y += 3;
	 else {
		 with wallId
		 itsOk = place_meeting(x, y, Obj_ground)
	 }
	if itsOk == true
	y+=3
	else 
	{ 
		while(!place_meeting(x, y+1, Obj_ground))
		y+=1;
		Ontree = false;
	}
}
	

y+= vsp;



move_and_collide(hsp, move_y, Obj_ground)

*/

//or


/*

//tree sticking code, originally wall climbing
treesticking = false;

if !place_meeting(x, y+1, Obj_Tree)
	if place_meeting(x-1, y, Obj_Tree) || place_meeting(x+1, y, Obj_Tree) { 
		treesticking = true;
		vy = 0
		jump_speed = 0 
		if keyboard_check(vk_up){ 
			if !place_meeting(x, y-2, Obj_Tree)
			y-=2 
			else
			  while(!place_meeting(x, y-1, Obj_Tree))
			  y-=1
		}
		if keyboard_check(vk_down){
			if !place_meeting(x, y-1, Obj_Tree)
			y+=4
			else
			while(!place_meeting(x, y+1, Obj_Tree))
		}
		
	}
	
}
*/