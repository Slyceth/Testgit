image_xscale = 2
image_yscale =2
image_alpha =3.5
state=0
//sets the direction of hitbox to the direction of the ghost it is touching
if (place_meeting(x,y,Obj_scare_ghost)){
box_direc= Obj_scare_ghost.turn_direction
}
//for trans
trans =0
//
//for ghost
