vx = camera_get_view_x(view_camera[0]) + sprite_get_width(sprite_stage_background) / 2;
vy = camera_get_view_y(view_camera[0]) + sprite_get_height(sprite_stage_background) / 2;

draw_sprite(sprite_stage_background,0,vx,vy);
