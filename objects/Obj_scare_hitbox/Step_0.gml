image_xscale = 1.6
image_yscale =2
image_alpha =0


if (place_meeting(x,y,obj_Human_Player)){
state =1

}else
{
state =0
}
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


if (place_meeting(x,y,Obj_scare_ghost)){
box_direc=Obj_scare_ghost.direction

}


