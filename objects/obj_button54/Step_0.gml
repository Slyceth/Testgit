/// @description Insert description here
// You can write your code in this editor


if (button_press == true) {
    sprite_index = spr_button_pressed
	instance_destroy(inst_33BA0AC_1)
	instance_destroy(inst_33BA0AC_2)
	obj_antighostdeco.image_alpha = 0
	obj_antighostdeco.speed =0
	instance_create_layer(obj_antighostdeco.x,obj_antighostdeco.y,"Players",obj_antighostdecogone)
	
	if (!place_meeting(x,y,obj_Human_Player))
	{
	button_press = false
	}
}
else{
	sprite_index = spr_button_unpressed


	if (place_meeting(x,y,obj_Human_Player))
	{
	button_press =true
	}
}