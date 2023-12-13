/// @description Insert description here
// You can write your code in this editor

if(state ==0){
alarm[0]=20
shake_state =1

state =1


}
if(state ==2){
	
	if(obj_Human_Player.Player_state <2){
instance_create_layer(obj_Human_Player.x,obj_human_fall.y,"Instances",obj_human_fall)
instance_destroy(obj_Human_Player)

//obj_Human_Player.sprite_index = Human_Player_falling

}}