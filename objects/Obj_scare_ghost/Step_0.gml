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
{}
else
{instance_create_layer(x,y,"Instances",Obj_scare_hitbox)

//ddebug
if(keyboard_check(ord("1"))){
state = 0
}
if(keyboard_check(ord("2"))){
state = 1
}}