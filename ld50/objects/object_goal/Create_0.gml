/// @description Insert description here
// You can write your code in this edito
ps = part_system_create();
pe = part_emitter_create(ps);
part_emitter_region(ps, pe, bbox_left - 20, bbox_right + 20, bbox_top - 20, bbox_bottom + 20, ps_shape_ellipse, ps_distr_invgaussian);
pt = part_type_create();
part_type_color1(pt, c_white);
part_emitter_stream(ps, pe, pt, 1);
