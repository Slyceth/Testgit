/// @description Insert description here
// You can write your code in this editor
x = obj_Ghost_Player.x
y = obj_Ghost_Player.y

if (place_meeting(Ghost_initeract_hitbox.x,Ghost_initeract_hitbox.y,collision_interactables))
{
prompt_visible = 1
}
else
{
prompt_visible =0
}
