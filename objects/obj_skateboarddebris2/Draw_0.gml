var _doise = 2
if !obj_player1.ispeppino || global.swapmode
	_doise = 1
	
shader_set(global.Pal_Shader);
//pattern_set(global.Base_Pattern_Color, sprite, 0, 1, 1, global.palettetexture);
pal_swap_set(spr_noiseboss_palette, _doise, false);
draw_self();
pattern_reset();
reset_shader_fix();
