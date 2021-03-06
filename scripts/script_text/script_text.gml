// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_text(){
	if argument_count = 1 {
		var xoffset = 80
	} else { var xoffset = argument[1]
	}
		if (mytextbox == noone) {
			obj_ph.stopcontrols = true;
			obj_ph.invincible = true;
			obj_ph.image_speed = 0;
			obj_ph.image_index = 0;
			obj_ph.lastkeydown = "";
	        mytextbox = instance_create_layer(x - xoffset, y - 192, "layer_text", obj_textbox);
	        mytextbox.text = argument[0];
	        mytextbox.creator = self;
			check = 0;
}
//} else {
//    if(mytextbox != noone){
//		obj_ph.stopcontrols = false;
//		obj_ph.invincible = false;
//        instance_destroy(mytextbox);
//        mytextbox = noone;
//    }
//}
}
