/// @description Insert description here
// You can write your code in this editor

//go back to options
if (keyboard_check_pressed(vk_anykey) || mouse_check_button_released(mb_any)){
obj_room_trans_fade.active=5

room_goto(menu_main)

}


//random bug
if (is_random ==false){
alarm[0]=10

is_random =true
}
//if bug is random
if (random_generator ==1){
instance_create_depth(0,(room_height/2+150)+random_range(-50,50),-555555555,obj_le_bug)
random_generator =0
}