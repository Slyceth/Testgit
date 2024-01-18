/// @description Insert description here
// You can write your code in this editor
//when not ded
//99 used for when player is ded
if (Player_state !=99){
#region //PLayer animations
//Idle animation
if (Player_state = 0){
	//sprite_index = Human_Player
	sprite_index = spr_Human_idle};
//walking animation
if (Player_state = 1){
	//sprite_index = Human_Player_walk};
	sprite_index = spr_Human_walk};
	//running animation
	if (Player_state = 2){
	//sprite_index = Human_Player_run
	sprite_index = spr_Human_walk_run};
	
#endregion
#region //unused crap
//moves in tandum with htbox(unused)
angleHB = PLayers_colide_hitbox.image_angle

//no collision test
//same as collision other object

/*if (place_meeting(obj_Human_Player.x,obj_Human_Player.y,PLayers_colide_hitbox))
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
*/
#endregion
#region //visual stuff (direction and E button)
//direction (depending on where the ghost is)(if human x < then ghost x turn human left and vice cersa)
if (PLayers_colide_hitbox.x> obj_Human_Player.x){
image_xscale =-2
}
else {
image_xscale =2	
}
//Used for layering (moving objects in front and behind the player)
depth =- y
#endregion

#region //Human movement player ghost
//new movement:

//collision with interactables (makes the E button appear in the button object code + sets value to 1 for later)
if (place_meeting(obj_Human_Player.x,obj_Human_Player.y,Ghost_initeract_hitbox))
{if (Human_ghost_coll < 2){
//sets ghost collission to 1, is used to make the player movement later on more easier to code.
Human_ghost_coll = 1
}}
else //If human and the hitbox are not colliding and the state = to 1,
{
if (Human_ghost_coll = 1){
//sets movment and collsion to 0 so that ghost can move and the human doesn't break
Human_ghost_coll = 0
is_human_moving =0
}

}
//if collision between hitbox and human and E is pressed? State is set to 2.
if (Human_ghost_coll == 1 && keyboard_check(ord("E"))) {
// =2 means human moves and ghost does not.
Human_ghost_coll =2
//movement distance until alarm is hit then stops the human from moving

}
#endregion
#region //Human run from enemy ghost
//sets states:
//state = 0 is idle
//state =1 is walk
//state = 2 is run
//All code until next comment sets human state to idle
switch (Human_ghost_coll) {
       case 0:
if (player_runninng_direc ==0){
Player_state =0}
//Player_move_timer =5    not this comment
        break;	
     
	 case 1:
 
if (player_runninng_direc ==0){
Player_state =0}
//Player_move_timer =5    still no
        break;	
   
   case 3:
    //moves away from player (x and y to move to, speed is minus to move away from player).
	//Find the human walk velocity here (-4)
	move_towards_point(obj_Ghost_Player.x,obj_Ghost_Player.y,-4)
Player_state =1
//Player_move_timer =5    
        break;
	

		
    default:
        // code here
        break;
}

//sets speed to 0 only when value is 0 (to stop the player from moving)
if (is_human_moving ==0)
{
speed =0
is_human_moving =1
}
//run
//if (Player_state ==2){
//moves player when running (direc = direction of player moving)
	//Find the human run velocity here (dpending on player direction)
switch (player_runninng_direc) {
    case 1:
        //down
		y+= 5

        break;
		   case 2:
      //left
	  x-=5
        break;
		   case 3:
      //up
	  y-=5
        break;
		   case 4:
       //right
	   x+=5
        break;
    default:
        // code here
        break;
}	
	
//}
//Running animation when running dire > 0 and running animation is not playing
if (player_runninng_direc != 0 && sprite_index != spr_Human_walk_run){
	
		sprite_index = spr_Human_walk_run
}
//attempt to fix animation
if (player_runninng_direc >0){
// If player is running set alarm, when alarm rings stop moving
if (Player_move_timer ==1) {
	   alarm[1]=150
	   Player_move_timer =2
	}
	if(Player_state !=2){
	Player_state =2	
	}

}}
#endregion
//when ded
else{
	speed =0
	image_alpha =0
	is_human_moving =1
	player_runninng_direc =0
	Player_move_timer =0
}
//adds to power bar when collsion players,E is held,powerbar is lower then maximun and timer is false
if(Human_ghost_coll ==2){if(keyboard_check(ord("E"))&& power_bar<power_bar_max && Can_add == false){
//adds to powerbar
power_bar += 1
audio_play_sound(Button_select,1,false)
alarm[2]=5
Can_add =true

}else if(keyboard_check(ord("E")) =false){
//if let go then walk tiemer and move player
alarm[0]=power_bar
Human_ghost_coll =3
}
//ghost animation
obj_Ghost_Player.sprite_index = Ghost_player_wait_scare

}else if(Human_ghost_coll <2){power_bar =15 }
