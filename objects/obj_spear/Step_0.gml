/// @description Insert description here
// You can write your code in this editor

// direction + animation
//sets direction
switch (direction) {
case 1:
sprite_index = spr_spear_left
x_movement =-1
y_movement =0
break

case 2:
sprite_index = spr_spear_right
x_movement =1
y_movement =0
break

case 3:
sprite_index = spr_spear_left
x_movement =0
y_movement =1
break

case 4:
sprite_index = spr_spear_left
x_movement =0
y_movement =-1
break


}
//moves
if (launch > 1) {
x += x_movement
y+= y_movement   
//sets stated
if (launch = 0){
launch = 1
alarm[0] = 300
}
}



