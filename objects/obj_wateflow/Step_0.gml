/// @description Insert description here
// You can write your code in this editor
//water directions
switch (drection) {
    case 1:
        // down
		sprite_index = spr_water_flow_down
		image_xscale =1
		image_yscale =1
        break;
		  case 2:
        // left
		sprite_index = spr_water_flow_side
		image_xscale =1
		image_yscale =1
        break;
		  case 3:
        // up
		sprite_index = spr_water_flow_down
		image_xscale =1
		image_yscale =-1
        break;
		  case 4:
        // right
		sprite_index = spr_water_flow_side
		image_xscale =-1
		image_yscale =1
        break;
    default:
        // code here
        break;
}
//player_collision
if (place_meeting(x,y,obj_Human_Player)){
if (obj_Human_Player.x < x-32 && obj_Human_Player.x > x+32 && obj_Human_Player.y > y-32 && obj_Human_Player.y < y+32){
switch (drection) {
    case 1:
        // down
		obj_Human_Player.speed=0
		obj_Human_Player.y +=3
        break;
		  case 2:
        // left
		obj_Human_Player.speed=0
		obj_Human_Player.x -=3
        break;
		  case 3:
        // up
		obj_Human_Player.speed=0
		obj_Human_Player.y -=3
        break;
		  case 4:
        // right
	obj_Human_Player.speed=0
		obj_Human_Player.x +=3
        break;
    default:
        // code here
        break;
}}

}



//ddebug
if(keyboard_check(ord("1"))){
drection = 1

}
if(keyboard_check(ord("2"))){
drection =2
}
if(keyboard_check(ord("3"))){
drection =3
}

if(keyboard_check(ord("4"))){
drection =4
}