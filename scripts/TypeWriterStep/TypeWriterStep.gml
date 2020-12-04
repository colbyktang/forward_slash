// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/* CREATE VARIABLES
start_dialogue = false;
dialogue = ["Test Dialogue 1"];
dialogue_index = 0;
text_hud = "";
is_typing = false;
char_index = 1;
end_of_dialogue = false;

typing_cooldown = 3;
typing_cooldown_timer = typing_cooldown;
*/

function TypeWriterStep(){
	if (start_dialogue) {
		// Print out dialogue
		if (char_index <= string_length(dialogue[dialogue_index]) and typing_cooldown_timer <= 0) {
			is_typing = true;
			text_hud += string_char_at (dialogue[dialogue_index], char_index);
			char_index++;
			typing_cooldown_timer = typing_cooldown;
		}
	
		// Dialogue is done
		if (char_index > string_length(dialogue[dialogue_index])) {
			start_dialogue = false;
			is_typing = false;
		
			// Is there more dialogue?
			if (dialogue_index+1 < array_length(dialogue)) {
				dialogue_index++;	
			}
			else {
				end_of_dialogue = true;	
			}
		}
	}

	// Adding a delay
	if (typing_cooldown_timer > 0) {
		typing_cooldown_timer--;	
	}
}