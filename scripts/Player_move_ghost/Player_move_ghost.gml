// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_move_ghost(){
image_yscale = 2

//run maybe
if (keyboard_check(vk_shift)= true ){var xSpeed = 4 var ySpeed = 4}
else {xSpeed = 1.5 ySpeed = 1.5}

//checks for movement and sets variables to movement
 xMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
 yMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//animations	
if (xMove!=0 || yMove!=0){

sprite_index = Ghost_playe_walk
} else{
sprite_index = Ghost_playe

}
//direction flip x
if (xMove !=0){image_xscale = -2 * xMove}

//movement
x += xMove * xSpeed* (delta_time*0.0001)
y +=  yMove* ySpeed * (delta_time*0.0001)


}