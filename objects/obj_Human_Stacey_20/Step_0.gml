/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_space))
{
	randomize();
	hspeed = choose(10, -10);
	vspeed = choose(10, -10);
}

if (bbox_bottom > room_height) or (bbox_top < 0) vspeed = -vspeed;
if (bbox_left > room_width) or (bbox_right < 0) hspeed = -hspeed;











