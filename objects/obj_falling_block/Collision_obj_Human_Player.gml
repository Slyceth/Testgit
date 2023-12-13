/// @description Insert description here
// You can write your code in this editor

if(state ==0){
alarm[0]=20
shake_state =1

state =1


}
if(state ==2){
	
	if(player_state =0){
//ded if position
if(obj_Human_Player.x <= x+12 && obj_Human_Player.x >= x-12){
//ded if state is different so no looping
if (obj_Human_Player.Player_state !=99){
obj_Human_Player.Player_state = 99
//makes player fall
instance_create_layer(obj_Human_Player.x,obj_Human_Player.y,"Players",obj_human_fall)
obj_Human_Player.image_alpha = 0
obj_Human_Player.speed =0

player_state =1
}
}
//obj_Human_Player.sprite_index = Human_Player_falling

}}