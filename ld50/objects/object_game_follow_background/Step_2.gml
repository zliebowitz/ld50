/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var layer_id = layer_get_id("Background");
layer_x(layer_id, vx);
layer_y(layer_id, vy);

