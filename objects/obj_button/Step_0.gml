/// @description Insert description here
// You can write your code in this editor


if (button_press == true) {
    sprite_index = spr_button_pressed
	instance_destroy(inst_33BA0AC_1)
	
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