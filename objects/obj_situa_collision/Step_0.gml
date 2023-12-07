/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x+4,y,obj_Human_Player))
{
	obj_Human_Player.x -= 8
}
if (place_meeting(x-4,y,obj_Human_Player))
{
	obj_Human_Player.x += 8
}
if (place_meeting(x,y+4,obj_Human_Player))
{
	obj_Human_Player.y-= 8
}
if (place_meeting(x,y-4,obj_Human_Player))
{
	obj_Human_Player.y+= 8
}



