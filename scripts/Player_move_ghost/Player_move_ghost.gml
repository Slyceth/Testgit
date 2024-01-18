// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_move_ghost(){
image_yscale = 2


//checks for movement and sets variables to movement
 xMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
 yMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//animations	
if ((global.facing == 0))
    sprite_index = spr_down
if ((global.facing == 1))
    sprite_index = spr_right
if ((global.facing == 2))
    sprite_index = spr_up
if ((global.facing == 3))
    sprite_index = spr_left

if obj_time.left
{
    if ((movement == 1))
    {
        turned = 1
        if ((xprevious == (x + 3)))
            x -= 2
        else
            x -= 3
        if ((moving != true))
            image_index = 1
        moving = true
        if ((global.debug == true))
        {
            if keyboard_check(vk_backspace)
                x -= 5
        }
        image_speed = 0.20000000000000001
        if (obj_time.up && (global.facing == 2))
            turned = 0
        if (obj_time.down && (global.facing == 0))
            turned = 0
        if ((turned == 1))
            global.facing = 3
    }
}
if obj_time.up
{
    if ((movement == 1))
    {
        turned = 1
        y -= 3
        if ((global.debug == true))
        {
            if keyboard_check(vk_backspace)
                y -= 5
        }
        if ((moving != true))
            image_index = 1
        moving = true
        image_speed = 0.20000000000000001
        if (obj_time.right && (global.facing == 1))
            turned = 0
        if (obj_time.left && (global.facing == 3))
            turned = 0
        if ((turned == 1))
            global.facing = 2
    }
}
if obj_time.right
{
    if ((movement == 1))
    {
        if ((obj_time.left == 0))
        {
            turned = 1
            if ((xprevious == (x - 3)))
                x += 2
            else
                x += 3
            if ((global.debug == true))
            {
                if keyboard_check(vk_backspace)
                    x += 5
            }
            moving = true
            image_speed = 0.20000000000000001
            if ((moving != true))
                image_index = 1
            if (obj_time.up && (global.facing == 2))
                turned = 0
            if (obj_time.down && (global.facing == 0))
                turned = 0
            if ((turned == 1))
                global.facing = 1
        }
    }
}
if obj_time.down
{
    if ((movement == 1))
    {
        if ((obj_time.up == 0))
        {
            turned = 1
            y += 3
            if ((global.debug == true))
            {
                if keyboard_check(vk_backspace)
                    y += 5
            }
            if ((moving != true))
                image_index = 1
            moving = true
            image_speed = 0.20000000000000001
            if (obj_time.right && (global.facing == 1))
                turned = 0
            if (obj_time.left && (global.facing == 3))
                turned = 0
            if ((turned == 1))
                global.facing = 0
        }
    }
}

}