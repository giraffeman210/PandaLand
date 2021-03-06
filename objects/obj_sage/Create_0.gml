/// @description Insert description here
event_inherited();

myname = ""

tutorial1[0] = "We don't have much time to turn you into a hero, so listen well to my instructions!"
tutorial1[1] = "Press 'Spacebar' to jump and the 'A' and 'D' keys to get moving!"
tutorial1[2] = "You're our only hope!           (Oh dear...)" 

tutorial2 [0] = "Look some fruit! Each fruit you collect will increase a different stat!"
tutorial2 [1] = "Fill up a bar and that stat will level up, making you stronger."
tutorial2 [2] = "You could use a few powerups! You won't be much of a hero the way you are now."

tutorial3 [0] = "You know how to read don't you?"
tutorial3 [1] = "Use the 'W' key to interact with objects and people." 

tutorial4 [0] = "Oh dear, an enemy monster!"
tutorial4 [1] = "Don't just stand there! Attack with 'Enter'!" 

tutorial5 [0] = "Be careful! Those enemies throw projectiles!"
tutorial5 [1] = "Repeatedly press '\\' to hide behind that oversized stick of yours!" 

tutorial6[0]= "You might not be so useless after all!"
tutorial6[1] = "Let's go find those golden fruits!"

xcheck = [64, 1088, 2144, 2784, 3296, 12128];
mytext = ds_list_create();
ds_list_add(mytext, tutorial1);
ds_list_add(mytext, tutorial2);
ds_list_add(mytext, tutorial3);
ds_list_add(mytext, tutorial4);
ds_list_add(mytext, tutorial5);
ds_list_add(mytext, tutorial6);