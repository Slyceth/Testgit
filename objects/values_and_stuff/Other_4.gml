/// @description Insert description here
// You can write your code in this editor

if menu_current_level >= 1
{
	if object_exists(inst_menu_button_continue)
	{
	variable_instance_set(inst_menu_button_continue, "button_locked_value", false)
	}
}
