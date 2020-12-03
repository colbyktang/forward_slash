/// @description Insert description here
// You can write your code in this editor

menu_selection = 0;
menu_buttons = array_create(2);
menu_buttons[0] = inst_410760DC;
menu_buttons[1] = inst_2DCA8E5F;

x_padding = 16;
arrow_select = instance_create_layer(menu_buttons[0].x - (menu_buttons[0].sprite_width / 2) - x_padding, menu_buttons[0].y, "Instances", o_menu_select);