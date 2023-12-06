/// @description Insert description here
// You can write your code in this editor

if (exiting = true)
{
//adds speed to value	
param_value += param_speed	
//if the value is greater then the max
if (param_value >= param_max_value){
	//goes to the next room
	room_goto(target_room)
	
}
else
{
//adds minus speed? (most likely reverses)
param_value+= -param_speed
//if lower the minimum
if (param_value <= param_min_value){
//destroy the effect	
instance_destroy()
}
}

fx_set_parameter(filter, param_name, param_value);

}







