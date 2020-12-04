/// @description Insert description here
// You can write your code in this editor

start_dialogue = false;
dialogue = ["J1-N is a cybernetically enhanced lone wolf mercenary.", "Test Dialogue 2", "Test Dialogue 3", "Test Dialogue 4"];
dialogue_index = 0;
text_hud = "";
is_typing = false;
char_index = 1;
end_of_dialogue = false;

typing_cooldown = 3;
typing_cooldown_timer = typing_cooldown;

alarm[0] = 30;