/// @description Insert description here
// You can write your code in this editor

if menu_current_level >= 1
{
	if instance_exists(inst_menu_button_continue)
	{
	variable_instance_set(inst_menu_button_continue, "button_locked_value", false)
	variable_instance_set(inst_menu_button_continue, "menu_target_room", room_level_2)
	}
	
	instance_activate_object(inst_menu_button_level4)	show_debug_message("reveal")
	
	
}
if menu_current_level >= 2
{
	if instance_exists(inst_menu_button_continue)
	{
	variable_instance_set(inst_menu_button_continue, "menu_target_room", Room_sly)
	}
	
	if instance_exists(inst_menu_button_level2)
	{
	variable_instance_set(inst_menu_button_level2, "button_locked_value", false)
	}
	
	
	variable_instance_set(inst_menu_button_level5, "invisible", false)

}

if menu_current_level >= 3
{
	if instance_exists(inst_menu_button_continue)
	{
	variable_instance_set(inst_menu_button_continue, "menu_target_room", Room_sly_4)
	}
	
	if instance_exists(inst_menu_button_level3)
	{
	variable_instance_set(inst_menu_button_level3, "button_locked_value", false)
	}
	

	variable_instance_set(inst_menu_button_level6, "invisible", false)
	
}

if menu_current_level >= 4
{
	if instance_exists(inst_menu_button_continue)
	{
	variable_instance_set(inst_menu_button_continue, "menu_target_room", Room_sly_2)
	}
	
	if instance_exists(inst_menu_button_level4)
	{
	variable_instance_set(inst_menu_button_level4, "button_locked_value", false)
	}
	


	
}



