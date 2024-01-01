Player_state =2
Player_move_timer =1
if(Player_state =2)

//tests and sets direction to other
{
switch (Obj_scare_hitbox.box_direc) {
    case 1:
        player_runninng_direc =1
		speed =0
        break;
		   case 2:
        player_runninng_direc =2
	speed =0
        break;
		   case 3:
        player_runninng_direc =3
	speed =0
        break;
		   case 4:
        player_runninng_direc =4
	speed =0
        break;
    default:
        // code here
        break;
}
	
	
}
else if (is_human_moving ==0)
{
speed =0
is_human_moving =1
}
