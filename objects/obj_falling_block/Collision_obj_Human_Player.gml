/// @description Insert description here
// You can write your code in this editor
//if collision when not broken then change state to broken
if(state ==0){
alarm[0]=20
shake_state =1

state =1


}
#region //Player kill
//if already broken? Kill player
if(state ==2){
	
	if(player_state =0){
//ded if collision is met in position
if(obj_Human_Player.x <= x+12 && obj_Human_Player.x >= x-12){
//ded if state is different so no looping and softlocking
if (obj_Human_Player.Player_state !=99){
obj_Human_Player.Player_state = 99
//makes player fall by crating falling obj and deactivating playeru+
instance_create_layer(obj_Human_Player.x,obj_Human_Player.y,"Players",obj_human_fall)
instance_create_layer(obj_Ghost_Player.x,obj_Ghost_Player.y,"Players",obj_ghost_fall)
audio_play_sound(plauer_fall,1,false)
obj_Human_Player.image_alpha = 0
obj_Human_Player.speed =0
obj_Ghost_Player.image_alpha = 0
obj_Ghost_Player.speed =0


player_state =1
}
}
//obj_Human_Player.sprite_index = Human_Player_falling

}}
#endregion