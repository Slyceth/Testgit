/// @description Insert description here
// You can write your code in this editor
if obj_time.left
{
    turned = 1 // tells it to change global.facing, the direction you're facing, at the end of this block
    if (xprevious == (x + 3)) // alternates between moving left 2 pixels and 3 pixels, for an average speed of 2.5
        x -= 2
    else
        x -= 3
    
    if (obj_time.up && global.facing == 2) // if you're already going up or down, that is, diagonally, no need to change the facing direction
        turned = 0
    if (obj_time.down && global.facing == 0)
        turned = 0
    if (turned == 1) // change the facing direction
        global.facing = 3
}
if obj_time.up
{
    turned = 1 // same thing
    y -= 3 // constant speed this time
    
    if (obj_time.right && global.facing == 1) // same thing, keep facing right or left if you're going diagonally that way
        turned = 0
    if (obj_time.left && global.facing == 3)
        turned = 0
    if (turned == 1) // same thing
        global.facing = 2
}
if obj_time.right
{
    if (obj_time.left == 0) // IMPORTANT: if you're pressing both right and left, it ignores the right input
    {
        turned = 1
        if (xprevious == (x - 3))
            x += 2
        else
            x += 3
        
        if (obj_time.up && global.facing == 2)
            turned = 0
        if (obj_time.down && global.facing == 0)
            turned = 0
        if (turned == 1)
            global.facing = 1
    }
}
if obj_time.down
{
    if (obj_time.up == 0) // IMPORTANT: if you're pressing both... wait a minute. That shouldn't work.
    {
        turned = 1
        if (xprevious == (x - 3))
            x += 2
        else
            x += 3
        
        if (obj_time.up && global.facing == 2)
            turned = 0
        if (obj_time.down && global.facing == 0)
            turned = 0
        if (turned == 1)
            global.facing = 0
	}
}
    















