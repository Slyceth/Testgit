/// @description Insert description here
// You can write your code in this editor
if (global.phasing == 0 && other.phase == 0)
{
    x = xprevious // Reset to your previous position, so you don't clip. Ok.
    y = yprevious
    if (global.interact == 0) // if you aren't currently in a cutscene, so, during regular movement
    {
        if obj_time.up // if you're holding up
        {
            if (collision_rectangle((x + 2), (y + 15), (x + 18), (y + 19), obj_solidparent, 0, 1) > 0) // if a precise collision IS detected
            {
                if (obj_time.left && collision_line((bbox_left - 3), bbox_top, bbox_left, bbox_top, obj_solidparent, false, true) < 0) // if you're trying to hold left, and a collision with a solid to your left is NOT detected
                {
                    x -= 3 // oops! we shouldn't have reset you. Even though you're stuck against a wall above you, you should still be able to slide left.
                    global.facing = 3
                }
                if (obj_time.right && collision_line((bbox_right + 3), bbox_top, bbox_right, bbox_top, obj_solidparent, false, true) < 0) // same thing for right
                {
                    x += 3
                    global.facing = 1
                }
            }
            else // this is where the magic happens. If a precise collision was not detected: you can go up!
            {
                y -= 3 // move you up
                global.facing = 2
            }
        }
        if obj_time.down // All of this is the same for down.
        {
            if (collision_rectangle((x + 2), (y + 30), (x + 18), (y + 33), obj_solidparent, 0, 1) > 0)
            {
                if (obj_time.left && collision_line((bbox_left - 3), bbox_bottom, bbox_left, bbox_bottom, obj_solidparent, false, true) < 0)
                {
                    x -= 3
                    global.facing = 3
                }
                if (obj_time.right && collision_line((bbox_right + 3), bbox_bottom, bbox_right, bbox_bottom, obj_solidparent, false, true) < 0)
                {
                    x += 3
                    global.facing = 1
                }
            }
            else
            {
                y += 3
                global.facing = 0
            }
        }
    }
    moving = false
}

















