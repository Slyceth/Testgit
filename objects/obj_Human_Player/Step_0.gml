/// @description Insert description here
// You can write your code in this editor

//PLayer animations
if (Player_state = 0){
	sprite_index = Human_Player};

if (Player_state = 1){
	sprite_index = Human_Player_walk};
	
	if (Player_state = 2){
	sprite_index = Human_Player_run};
	
//debug animation test
if (keyboard_check(ord("1"))){
Player_state = 1

}
if (keyboard_check(ord("2"))){
Player_state = 2

}
if (keyboard_check(ord("`"))|| keyboard_check(ord("0"))){
Player_state = 0

}

//moves in tandum with htbox
angleHB = PLayers_colide_hitbox.image_angle

//no collision test
//same as collision other object
if (place_meeting(obj_Human_Player.x,obj_Human_Player.y,PLayers_colide_hitbox))
{
	//basic human movement
if (keyboard_check(vk_shift)) {
//moves towards object: obj.x, obj.y, speed (negative moves away from object)
	move_towards_point(obj_Ghost_Player.x,obj_Ghost_Player.y,-8)
	Player_state =2
	Player_move_timer =5}
else
{move_towards_point(obj_Ghost_Player.x,obj_Ghost_Player.y,-4)
Player_state =1
Player_move_timer =5
}}
else
//player stops moving
{ Player_state =0
	move_towards_point(obj_Ghost_Player.x,obj_Ghost_Player.y,0)}

//direction
if (PLayers_colide_hitbox.x> obj_Human_Player.x){
image_xscale =-2
}
else {
image_xscale =2	
}
