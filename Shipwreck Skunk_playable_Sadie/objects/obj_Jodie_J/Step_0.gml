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
	sprite_index = Jodie_Jump;
}



//jumping 

vsp += grav;


if (place_meeting(x, y+1,  obj_greybox_1) )
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

//throwing rocks placeholder
if(mouse_check_button(mb_left) && rocksCollect > 0 )
{
	 
    instance_create_layer(x, y, "_Rock", obj_Rock)
	rocksCollect --;
	
}

cooldown --;

//Hiding placeholder
if (place_meeting(x, y, Obj_hidingH))
{
     visible = 1 - keyboard_check(ord("C"));
	 //obj_Lion.lionIsBlind = true;
	 obj_hawk_jungle.hawkIsBlind = true;
	 obj_wolf.wolfIsBlind = true;
}

if place_meeting(x, y, obj_hawk_jungle)
{
	if(obj_hawk_jungle.hawkIsBlind == false && isAttack == false)
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


if place_meeting(x, y, obj_wolf)
{
	
	
	if(isAttack == false && obj_wolf.wolfIsBlind == false)
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
if (place_meeting(x, y, obj_Rock_collectable))
{
     if(keyboard_check(ord("X")))
	 {
		rocksCollect ++;
		with (instance_place(x, y, obj_Rock_collectable)) 
		{
            instance_destroy(); 
        }
	 }
}



//game fates

if place_meeting(x, y, obj_start)
{
	room_goto_next()
}


//die fate


/*
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
*/








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

