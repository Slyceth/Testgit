/// @description Insert description here
// You can write your code in this editor
x= obj_Human_Player.x
y= obj_Human_Player.y+12

//will turn in direction the player moves into
image_angle=PLayers_colide_hitbox.image_angle
if (obj_Human_Player.Human_ghost_coll>=1
){image_alpha =1}else {{image_alpha =0}}

//visual type
if(type ==0) {
image_xscale =1.5
image_yscale = 1
sprite_index = spr_human_goto_arrow

}else if (type ==1){
image_xscale =1.7
image_yscale = 1.7
sprite_index = spr_human_goto_dot
}

//debug
if (keyboard_check(ord("1"))){type =1}
if (keyboard_check(ord("0"))){type =0}