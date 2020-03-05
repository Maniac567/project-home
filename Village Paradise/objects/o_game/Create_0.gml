global.one_second = game_get_speed(gamespeed_fps);
global.destroyed = [];
instance_create_layer(0, 0, "Instances", o_input);

var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
draw_set_font(global.font);

global.player_gems = 0;
//global.player_start_position = i_game_start;
//global.load = false;
global.start_x = noone;
global.start_y = noone;

//audio_play_sound(a_music, 10, true);
var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(_view_width, _view_height);

paused_ = false;
paused_sprite_ = noone;
paused_sprite_scale = display_get_gui_width()/view_wport[0];

//global.item[0] = noone;
//global.item[1] = noone;

item_index_ = 0;
inventory_create(10);
inventory_add_item(o_axe_item);
inventory_add_item(o_shovel_item);

inventory_create_2d(2, 10);