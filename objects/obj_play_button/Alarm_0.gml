/// @description sparkles!
// You can write your code in this editor
/*
switch (sparkle_count) {
    case 0:
        // code here
		instance_create_layer(x+12,y+5,"sparkles",obj_star)
       sparkle_count ++
	   break;
	     case 1:
        // code here
		instance_create_layer(x+22,y+15,"sparkles",obj_star)
       sparkle_count ++
	   break;
	     case 2:
        // code here
		instance_create_layer(x-32,y-5,"sparkles",obj_star)
       sparkle_count =0
	   break;
    default:
        // code here
        break;
} */


/*
if (sparkle_count<3){
sparkle_count ++
} else{
sparkle_count =0
}
*/

instance_create_layer(random_range(x-75, x+55) ,random_range(y-35, y+15),"sparkles",obj_star)
sparkle_count =0