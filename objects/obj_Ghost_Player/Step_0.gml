/// @description Insert description here
// You can write your code in this editor
//if not scaring then control + animations play
if(obj_Human_Player.Human_ghost_coll !=2)
{
Player_states_ghost()
Player_move_ghost()	
scream =0
audio_stop_sound(Ghost_scream)
}else
{
//make visible and scare player
sprite_index = Ghost_player_scare
image_alpha = 1

//sets direction when scare
if (obj_Human_Player.x<x){
image_xscale =-2	
}else
{
image_xscale =2	
}
//sets scream sound
if (scream ==0)
{scream =1
audio_play_sound(Ghost_scream, 1,false)
}
}
//depth:
depth = y;

