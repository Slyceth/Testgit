/// @description Insert description here
// You can write your code in this editor
//sets pos to ghost x and y
x = obj_Ghost_Player.x
y = obj_Ghost_Player.y
//Makes button visible when interacting with interactables
if (place_meeting(Ghost_initeract_hitbox.x,Ghost_initeract_hitbox.y,collision_interactables))
{
prompt_visible = 1
}
else
{
prompt_visible =0
}
//sets value to go to a room


