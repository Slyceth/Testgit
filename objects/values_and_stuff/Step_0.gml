/// @description Insert description here
// You can write your code in this editor

if menu_current_level >= 1
{
	if instance_exists(inst_menu_button_continue)
	{
	variable_instance_set(inst_menu_button_continue, "button_locked_value", false)
	}
	
	if instance_exists(inst_menu_button_level4)
	{
	instance_activate_object(inst_menu_button_level4)
	//object_set_visible( inst_menu_button_level4, vis);
	//variable_instance_set(inst_menu_button_level4, "invisible", false)
	}
	
	
	
}
if menu_current_level >= 2
{
	if instance_exists(inst_menu_button_level2)
	{
	variable_instance_set(inst_menu_button_level2, "button_locked_value", false)
	}
	
	if instance_exists(inst_menu_button_level5)
	{
		
	variable_instance_set(inst_menu_button_level5, "invisible", false)
	}
}

if menu_current_level >= 3
{
	if instance_exists(inst_menu_button_level3)
	{
	variable_instance_set(inst_menu_button_level3, "button_locked_value", false)
	}
	
	if instance_exists(inst_menu_button_level6)
	{
	variable_instance_set(inst_menu_button_level6, "invisible", false)
	}
}

if menu_current_level >= 2
{
	
}

