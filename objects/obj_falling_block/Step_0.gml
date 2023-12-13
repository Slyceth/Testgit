/// @description Insert description here
// You can write your code in this editor
if (state ==1){
sprite_index =spr_falling_block_break 

}else
{
sprite_index = spr_falling_block_normal
}

//shakes block
if (shake_state ==1) {

	
if (x < xmax){
x++
}
}else if(shake_state ==2)
{
if (x > xmin){
x--
}	
}
//shakes to side
if (x >=xmax){
shake_state =2
}

if (x <=xmin){
shake_state =1
}
