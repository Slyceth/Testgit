/// @description Insert description here
// You can write your code in this editor
image_xscale = 2;
image_yscale = 2;
//sets animation mainly (but could also be used for walking speed or something)
Player_state =0;
//Amount of time player moves after collision with ghost
Player_move_timer = 0;
//Checks if human and ghost are colliding
Human_ghost_coll = 0;
//makes certain speed only 0 if value 0 (stops player from moving after being scared)
is_human_moving =0;
player_runninng_direc =0;