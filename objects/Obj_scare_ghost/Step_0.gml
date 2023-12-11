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
if (collision_rectangle(x-32,y-32,x+32,y+32,Obj_scare_hitbox,false,false))
{
//sets animation

}
else if (hibox ==0)
{
//creates hitbox and then deactivates itself
	instance_create_layer(x,y,"Instances",Obj_scare_hitbox)
hibox =1
}

if (distance_to_object(obj_Human_Player) <=5){state = 1}
else {state = 0}