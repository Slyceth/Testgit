/// @description Insert description here
// You can write your code in this editor

if ((x < room_width * 0.5) and (hspeed <= 0))
or ((x > room_width * 0.5) and (hspeed >= 0))
{
	hspeed = -hspeed * 1.01;
}

if ((y < room_height * 0.5) and (vspeed <= 0))
or ((y > room_height * 0.5) and (vspeed >= 0))
{
	vspeed = -vspeed *1.01;
}









