/// @description Insert description here
// You can write your code in this editor

//depth
depth =-y

//x/ypos
x = obj_Ghost_Player.x
y= obj_Ghost_Player.y-85
#region fade
//fade in/fade out
//sets transparency to value
image_alpha = transparent
//set states
switch (sprite_visible) {
    case 0:
     //if 0 visible
	 transparent = 1.0
        break;
    case 1:
	//if 1 fade out
      transparent -= 0.1
        break;
		    case 2:
      //if 2 then invisible
	  transparent = 0.0
        break;
    case 3:
      //if 3 then turn visible
	  transparent += 0.1
        break;
   
   default:
        // code here
        break;
}
//if  visible/invisilbe stop changing image alpha
if (sprite_visible == 1 && transparent <=0)
{ sprite_visible = 2}

if (sprite_visible == 3 && transparent >=1)
{ sprite_visible = 0
	

}

//checks button to make invisible
if (keyboard_check(vk_anykey)){	
if (sprite_visible = 0){ sprite_visible =2 }	
}
else{
//wait until fade
if (sprite_visible = 2){ //alarm[0] = 300
	sprite_visible = -2
	}

}
#endregion