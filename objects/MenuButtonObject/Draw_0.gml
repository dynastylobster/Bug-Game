/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(Font1);

var text;

if use = "start" text = "Start Game"
if use = "exit" text = "Quit Game"

draw_set_color(c_black)
draw_text(x+5,y+5,string(text))
draw_set_color(c_white)
draw_text(x+4,y+4,string(text))