//sets state of player:
#region Animation
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
#endregion

#region create hitbox when starting
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
#endregion
#region direction of scare ghost
//if (distance_to_object(obj_Human_Player) <=5){state = 1}
//else {state = 0}
//direction (Only change direction between 1 and 4:
//1 = down
//2=left
//3=up
//4 = right)
switch (direction) {
    case 1:
        image_xscale =2
        break;
		case 2:
        image_xscale =2
        break;
		case 3:
        image_xscale =2
        break;
		case 4:
        image_xscale =-2
        break;
    default:
        // code here
        break;
}
#endregion


