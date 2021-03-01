/// @description Insert description here
// You can write your code in this editor
if (mytextbox == noone) {
			obj_ph.stopcontrols = true;
			obj_ph.invincible = true;
			obj_ph.image_speed = 0;
			obj_ph.image_index = 0;
			obj_ph.lastkeydown = "";
	        mytextbox = instance_create_layer(x - 64, y - 160, "layer_text", obj_textbox);
	        mytextbox.text = mytext;
	        mytextbox.creator = self;
	        mytextbox.name = myname;
			with(mytextbox) {
				event_user(0);	
			}
		}
else {
    if(mytextbox != noone){
		obj_ph.stopcontrols = false;
		obj_ph.invincible = false;
        instance_destroy(mytextbox);
        mytextbox = noone;
    }
}