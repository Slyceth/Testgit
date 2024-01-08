/// @description Insert description here
// You can write your code in this editor
#region //Animations
//if (state =1) set animation to break, else set animation to normal
if (state ==1){
sprite_index =spr_falling_block_break 

}else
{
sprite_index = spr_falling_block_normal
}
#endregion

#region //block shake
//shakes block
if (shake_state ==1) {

//if shake =1 and x lower then xmax move left	
if (x < xmax){
x++
}

}else if(shake_state ==2)
{//if shake =2 and x greater then xmax move right
if (x > xmin){
x--
}	
}
//shakes to side by switching values
if (x >=xmax){
shake_state =2
}

if (x <=xmin){
shake_state =1
}
#endregion