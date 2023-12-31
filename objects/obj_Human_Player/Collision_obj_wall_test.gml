/// @description Insert description here
// You can write your code in this editor


if ((x < room_width * 0.5) and (hspeed <= 0))
or ((x > room_width * 0.5) and (hspeed >= 0))
{
	hspeed = -hspeed;
}
vspeed = random_range(-1,1);