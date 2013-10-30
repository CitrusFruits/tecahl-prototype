var xPos = argument0;
var yPos = argument1;
var ratio = argument2;

draw_sprite(health_bg, -10, xPos, yPos);
draw_sprite_part(health_fg, -11, 0, 0, 48*ratio, 10, xPos, yPos);
