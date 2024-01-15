/// @description Insert description here
// You can write your code in this editor
// 1=start fade out (2 = create fade) (3= fading out).
//will create layer for fading
if (active ==1){
temp_layer = layer_create(-5555556,"temp layer")
active =2
}
//fade out room
if(active ==2){
instance_create_layer(0,0,temp_layer,obj_room_trans_fade_black)
obj_room_trans_fade_black.image_alpha=1
active =3
}
if(active == 3 && alarm_count = false){
obj_room_trans_fade_black.image_alpha -=0.01
trans_count -=0.01

}
//if invisible
if(active == 3 && trans_count <=0){
	obj_room_trans_fade_black.image_alpha =0
	trans_count =0.0001
	active =4}
	
//visible
if(active ==5){
obj_room_trans_fade_black.image_alpha +=0.01
trans_count +=0.1
}
//if visible
if(active == 5 && trans_count >=1){
	obj_room_trans_fade_black.image_alpha =1
	trans_count =1
	
	active =6}
	
	//void
	if(active ==6){
	room_goto(obj_level_end.next_level)
	}
	
