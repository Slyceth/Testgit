//sets state of player:

switch (state) {
    case 0:
		sprite_index = spr_ghost_enemy_normal
        break;
		    case 1:
        sprite_index = spr_ghost_enemy_scare
        break;
    default:
        // code here
        break;
}

//creates hitbox
if (place_meeting(x,y,Obj_scare_ghost))
{
//sets animation
if (Obj_scare_hitbox.state =1) {
state =1
}
else 
{
state =0	
}
}
else if (hibox ==0)
{
//creates hitbox and then deactivates itself
	instance_create_layer(x,y,"Instances",Obj_scare_hitbox)
hibox =1
}
//ddebug
if(keyboard_check(ord("1"))){
state = 0
}
if(keyboard_check(ord("2"))){
state = 1
}