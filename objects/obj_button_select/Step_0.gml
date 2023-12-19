/// @description Insert description here
// You can write your code in this editor
//moves outline
if (obj_play_button.on =true){
x = obj_play_button.x
y = obj_play_button.y
}else if (obj_continue_button.on =true && obj_continue_button.locked= false){
x = obj_continue_button.x
y = obj_continue_button.y
}


if (obj_play_button.on =false && obj_continue_button.on =false){
x = -50
y = -50
}
