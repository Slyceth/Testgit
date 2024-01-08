/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_space))
{
	//draw text box "game start" here
	//delete(text_draw_start)
	move_towards_point(random(1000),random(100),1);
	hspeed = choose(10, -10);
	check=false;
}

if(place_meeting(x,y,obj_wall_test))
{
	move_bounce_solid(true);
}

if(place_meeting(x,y,obj_Ghost_Charlie))
{
	move_bounce_solid(true);
}
if(place_meeting(x,y,obj_deathzone))
{
	audio_stop_all()
	obj_keyboard_wasd.sprite_visible=0
	room_restart()
	check=true;
}










