/// @description Insert description here
// You can write your code in this editor

//depth
depth =-y

//x/ypos
x = obj_Ghost_Player.x
y= obj_Ghost_Player.y-85

//fade in/fade out
image_alpha = transparent
//set states
switch (sprite_visible) {
    case 0:
      transparent = 1.0
        break;
    case 1:
      transparent -= 0.1
        break;
		    case 2:
      transparent = 0.0
        break;
    case 3:
      transparent += 0.1
        break;
   
   default:
        // code here
        break;
}
if (sprite_visible == 1 && transparent <=0)
{ sprite_visible = 2}

if (sprite_visible == 3 && transparent >=1)
{ sprite_visible = 0
	

}

//checks button
if (keyboard_check(vk_anykey)){	
if (sprite_visible = 0){ sprite_visible =2}	
}
else{
//wait until fade
if (sprite_visible = 2){ alarm[0] = 300
	sprite_visible = -2
	}

}