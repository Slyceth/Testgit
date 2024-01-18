/// @description Insert description here
// You can write your code in this editor
image_xscale = Xscale
//image_yscale = (obj_Human_Player.power_bar -15 +1)*0.03
image_yscale = (obj_Human_Player.power_bar -15 +1)*0.025

x =obj_Ghost_Player.x+35
y =obj_Ghost_Player.y-65
//visible
if (obj_Human_Player.Human_ghost_coll>=1
){image_alpha =1}else {{image_alpha =10}}

//max or not
if(obj_Human_Player.power_bar ==obj_Human_Player.power_bar_max){
image_blend = c_red

}else{ image_blend = -1}
depth=-555555