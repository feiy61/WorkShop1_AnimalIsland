/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("A")))
{
	
	x -= MoveSpeed;
	image_speed = MoveSpeed
	
}
if(keyboard_check(ord("D")))
{
	
	x += MoveSpeed;
	image_speed = MoveSpeed
	
}



if(keyboard_check(ord("Q"))) && (cooldown < 1)
{
	instance_create_layer(x,y, "Stinkbomb", ObjStinkBomb);

	sprite_index = Player_superstar
	
	cooldown = 3;
	



	
}



if(mouse_check_button(mb_left)) && (cooldown < 1)
{
	 
	 instance_create_layer(x, y, "Rock_layer", ObjRock)
	cooldown = 25;
	
}

cooldown = cooldown - 1;