draw_set_alpha(current_alpha);
scr_text_setup(global.font_small, fa_center, fa_middle, text_color);

draw_text(x_start, y_current, text_to_display);

draw_set_alpha(1.0);