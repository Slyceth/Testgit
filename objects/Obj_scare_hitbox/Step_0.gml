image_xscale = 1.6
image_yscale =2
//image_alpha =1
#region state
//sets the state of the hitbox and ghost when touching the human
if (place_meeting(x,y,obj_Human_Player)){
state =1

}else
{
state =0
}
#endregion


#region rotation
//rotation
switch (box_direc) {
    case 0:
       //null
	   image_angle=0 
	    break;
	case 1:
       //down
	   image_angle=	0 
	    break;
	   case 2:
       //left
	   image_angle=-90
	    break;
	    case 3:
       //up
	   image_angle=180
        break;
		 case 4:
       //right
	   image_angle=90
	    break;
    default:
        // code here
        break;
}
#endregion

//sets the ghost state to the hitbox state
var _is_colliding = instance_place(x,y,Obj_scare_ghost);
//show_debug_message(_is_colliding);
if (instance_exists(_is_colliding)){
box_direc = _is_colliding.turn_direction
//show_debug_message(is_colliding.turn_direction)
}

//animations stuff
if(trans ==0){alarm[0]=random_range(10,30) trans =1}
