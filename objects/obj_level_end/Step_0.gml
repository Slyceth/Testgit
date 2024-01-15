/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_Human_Player)){
obj_room_trans_fade.active=5
temp_layer = layer_create(-5555556,"temp layer")
instance_create_layer(0,0,temp_layer,obj_room_trans_fade_black)

}

