/// Text
if(place_meeting(x, y, obj_ph)) {
    if (keyboard_check_pressed(ord("W"))) {
    if (mytextbox == noone) {
        mytextbox = instance_create_layer(x - 64, y - 160, "layer_text", obj_textbox);
        mytextbox.text = mytext;
        mytextbox.creator = self;
        mytextbox.name = myname;
		with(mytextbox) {
			event_user(0);	
		}
}
    }
} else {
    if(mytextbox != noone){
        instance_destroy(mytextbox);
        mytextbox = noone;
    }
}