/// @description Insert description here
// You can write your code in this editor
var target_x = instance_nearest(x, y, obj_door_closed).x
var target_y = instance_nearest(x, y, obj_door_closed).y


if (place_meeting(x,y,obj_Human_Player)){
	new_obj = instance_create_layer(target_x,target_y, "Instances",obj_door_open)
	Nearest_door = instance_nearest(x, y, obj_door_open)
	instance_nearest(x, y, obj_door_closed).x = 1
	instance_nearest(x, y, obj_door_closed).y = 1
	new_obj = instance_create_layer(x,y, "Instances",obj_button_pushed)
	instance_destroy()
}














