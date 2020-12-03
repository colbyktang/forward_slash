/// @description Insert description here
// You can write your code in this editor

if (irandom(1)) {
	instance_create_layer(x,y, "Instances", o_heart);
}
else {
	instance_create_layer(x,y, "Instances", o_bomb);	
}