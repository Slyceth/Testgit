/// @description Insert description here
// You can write your code in this editor

hspd=(keyboard_check(vk_right)- keyboard_check(vk_left))*spd;
vspd=(keyboard_check(vk_down)- keyboard_check(vk_up))*spd;

if (place_meeting(x+hspd,y,obj_wall_test))
{
	while(!place_meeting(x+sign(hspd),y,obj_wall_test))
	{
		x+=sign(hspd);
	}
	hspd=0;
}
if (place_meeting(y+vspd,x,obj_wall_test))
{
	while(!place_meeting(y+sign(vspd),x,obj_wall_test))
	{
		y+=sign(vspd);
	}
	vspd=0;
}
//if place meeting with obj_human_stacey
//and space is pressed
//bounce obj_human_stacey away with higher speed, for a few seconds, then return to normal speed

x+=hspd;
y+=vspd;

if (bbox_bottom> room_height) y = room_height - (sprite_height * 0.5);
if (bbox_top < 0) y = 0 + (sprite_height * 0.5);
if (bbox_right> room_width) x = room_width - (sprite_width * 0.5);
if (bbox_left < 0) x = 0 + (sprite_width * 0.5);








