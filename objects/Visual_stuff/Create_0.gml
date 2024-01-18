/// @description Insert description here
// You can write your code in this editor
//xval and yval are left corner box size adds to get right corners
xval=room_width*0.5 -640
yval=room_height*0.5 - 225
xsize=1270
ysize=530
outline=12

//create ghost
instance_create_depth(room_width/2,room_height/2,-55555,obj_stole_stuff)
//bug easter egg
random_generator =0
is_random =false