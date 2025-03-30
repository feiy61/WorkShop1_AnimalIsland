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


if (hsp = 0) 
{
    sprite_index = Jodie;
	
} 
else if (hsp !=0) 
{
    sprite_index = Jodie_Run; 
}
else if (keyboard_check_pressed(vk_space))
{
	sprite_index = Skunk_Jump;
}



//jumping 

vsp += grav;


if (place_meeting(x, y+1,  obj_greybox) )
{
    vsp = 0;
	if (keyboard_check_pressed(vk_space) && !isJumping)
	{
		jump_timer = 12;
		isJumping = true;
	}
	
}
if(isJumping)

{
	vsp += jump;
	jump_timer --;
	
	if(jump_timer <= 0)
	{
		isJumping = false;
	}

}
	


// 应用垂直移动
y += vsp;



//move_and_collide(hsp, move_y, obj_greybox)



//spraying placeholder
if (keyboard_check(key_spray))  && (cooldown < 1) {
    
	instance_create_layer(x, y, "_Spray", obj_spray);

	cooldown = 60;
	
}



//throwing rocks placeholder
if(mouse_check_button(mb_left) && rocksCollect > 0 )
{
	 
    instance_create_layer(x, y, "_Rock", obj_Rock)
	rocksCollect --;
	
}

cooldown --;

//Hiding placeholder
if (place_meeting(x, y, obj_hole))
{
     visible = 1 - keyboard_check(ord("C"));
	obj_Lion.lionIsBlind = true;
	 obj_hawk.hawkIsBlind = true;
}


//game fates

if place_meeting(x, y, obj_hole)
{
	room_goto_next()
}


//die fate

if place_meeting(x, y, obj_Lion)
{
	
	
	if(isAttack == false && obj_Lion.lionIsBlind == false)
	{
				
		if(lifeLeft < 0)
		{
			room_restart()
		}
		
		else
		{
			lifeLeft --;
			isAttack = true;
			alarm[0] =60;
		}
	}
	
}



if place_meeting(x, y, obj_hawk)
{
	if(obj_hawk.hawkIsBlind == false && isAttack == false)
	{
		if(lifeLeft < 0)
		{
			room_restart()
		}
		
		else
		{
			lifeLeft --;
			isAttack = true;
			alarm[0] =60;
		}
	}
}

if place_meeting(x, y, obj_hawk_beach)
{
	if(obj_hawk_beach.hawkIsBlind == false && isAttack == false)
	{
		if(lifeLeft < 0)
		{
			room_restart()
		}
		
		else
		{
			lifeLeft --;
			isAttack = true;
			alarm[0] =60;
		}
	}
}

//collect system
if (place_meeting(x, y, obj_rock_collectable))
{
     if(keyboard_check(ord("X")))
	 {
		rocksCollect ++;
		with (instance_place(x, y, obj_rock_collectable)) 
		{
            instance_destroy(); 
        }
	 }
}






/*
if(obj_Lion.isBlind == false && isAttack == false)
	{
		
		if(lifeLeft < 0)
		{
			room_restart()
		}
		
		else
		{
			lifeLeft --;
			isAttack = true;
			alarm[0] =10;
		}
		
		
	}
	
	
*/

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