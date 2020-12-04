/// @description Insert description here
// You can write your code in this editor
if (start_dialogue) {
	// Print out dialogue
	if (char_index <= string_length(dialogue[dialogue_index]) and typing_cooldown_timer <= 0) {
		is_typing = true;
		text_hud += string_char_at (dialogue[dialogue_index], char_index);
		char_index++;
		typing_cooldown_timer = typing_cooldown;
		audio_play_sound(snd_sine,50, false);
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