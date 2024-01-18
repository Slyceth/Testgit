/// @description Insert description here
// You can write your code in this editor

if button_locked_value == false
{
	draw_self();
}
else
{
	draw_sprite_ext(spr_ui_button_locked, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
}

draw_set_font(Font2);
draw_set_halign(fa_center);
draw_text_transformed_color(x+(sprite_width*0.5),y+((sprite_height-36)*0.5),menu_button_text,1,1,0,1,1,1,1,1);






