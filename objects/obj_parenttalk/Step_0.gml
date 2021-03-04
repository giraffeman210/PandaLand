/// Text
if(place_meeting(x, y, obj_ph) and place_meeting(obj_ph.x,obj_ph.y+1,obj_basewall)) {
    if (keyboard_check_pressed(ord("W"))) {
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
			//with(mytextbox) {
			//	event_user(0);	
			//}
		}
    }
} else {
    if(mytextbox != noone){
		obj_ph.stopcontrols = false;
		obj_ph.invincible = false;
        instance_destroy(mytextbox);
        mytextbox = noone;
    }
}