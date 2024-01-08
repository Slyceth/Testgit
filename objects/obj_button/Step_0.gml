/// @description Insert description here
// You can write your code in this editor


if (button_press == true) {
    sprite_index = spr_button_pressed
	instance_destroy(inst_33BA0AC)
	
	// pls remove when have a good soluotion
	instance_destroy(obj_door_closed)


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