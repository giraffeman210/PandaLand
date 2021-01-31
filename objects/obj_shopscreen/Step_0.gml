/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_ph)) {
    if (mytextbox == noone) {
        mytextbox = instance_create_layer(x - 24, y - 264, "layer_text", obj_textbox);
        mytextbox.text = mytext;
        mytextbox.creator = self;
        mytextbox.name = myname;
		with(mytextbox) {
			event_user(0);	
		}
}
} else {
    if(mytextbox != noone){
        instance_destroy(mytextbox);
        mytextbox = noone;
    }
}