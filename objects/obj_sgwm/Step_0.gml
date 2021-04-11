/// Text
    if (keyboard_check_pressed(vk_anykey)) {
	    if (mytextbox == noone) {	
	        mytextbox = instance_create_layer(x - 80, y - 192, "layer_text", obj_wmtextbox);
	        mytextbox.text = mytext;
	        mytextbox.creator = self;
	        mytextbox.name = myname;
			//with(mytextbox) {
			//	event_user(0);	
			//}
		}
} else {
	if (keyboard_check_pressed(vk_anykey)) {
		if(mytextbox != noone){
			instance_destroy(mytextbox);
			mytextbox = noone;
		}
	}
}
//x - 80, y - 192