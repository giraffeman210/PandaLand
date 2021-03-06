/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
//event_inherited();

//follow panda
	y = (obj_ph.y - 32);
	
	

image_xscale = obj_ph.image_xscale;
x = (obj_ph.x - (sign(image_xscale) * 64));

//if (obj_ph.lastkeydown = "left") {
//	image_xscale = -1;
//	x = (obj_ph.x + 64);
//}

//if (obj_ph.lastkeydown = "right") {
//	image_xscale = 1;
//	x = (obj_ph.x - 64);
//}
//and tutorialnum < array_length(xcheck)
if global.tutorial = 1  {
	if(obj_ph.x > xcheck[global.tutorialnum]) {
		if global.tutorialnum > 0 script_text(ds_list_find_value(mytext,global.tutorialnum));
	else script_text(ds_list_find_value(mytext,global.tutorialnum),20);
			global.tutorialnum ++;
		}
} 
if global.tutorialnum == array_length(xcheck) - 1 { 
	if(obj_ph.x > xcheck[global.tutorialnum]) {
			script_text(ds_list_find_value(mytext,global.tutorialnum));
			global.tutorialnum = 0;
		}
}