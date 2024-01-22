/// @description Insert description here
// You can write your code in this editor

// You can write your code in this editor
//outline
draw_set_color(#bc9072)
draw_rectangle(xval-outline,yval-outline,xval+xsize+outline,yval+ysize+outline,false)
//box
draw_set_color(#856048)
draw_rectangle(xval,yval,xval+xsize,yval+ysize,false)
//text box
draw_set_color(c_black)
draw_rectangle(room_width/2-350,160,room_width/2+350,340,false)
//Big font
draw_set_color(c_white)
draw_set_font(Font2_big)
draw_text(room_width/2,room_height/2-220,"Oh NO!")
//main text
draw_set_color(c_white)
draw_set_font(Font2)
draw_text(room_width/2,room_height/2-120,"The ghost took the report button!")
//main text 2
draw_set_color(c_white)
draw_set_font(Font2)
draw_text(room_width/2,room_height/2-80,"Sorry!")








