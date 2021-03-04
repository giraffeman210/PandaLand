/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_sage) and place_meeting(obj_sage.x,obj_sage.y+1,obj_basewall)) {
	if global.tutorial = 1 {
		if check = 1 {
			if (mytextbox == noone) {
				obj_ph.stopcontrols = true;
				obj_ph.invincible = true;
				obj_ph.image_speed = 0;
				obj_ph.image_index = 0;
				obj_ph.lastkeydown = "";
				obj_sage.sprite_index = spr_sageghosttalk;
				mytextbox = instance_create_layer(x - 64, y - 160, "layer_text", obj_textbox);
				mytextbox.text = mytext;
				mytextbox.creator = self;
				mytextbox.name = myname;
				check = 0;
				//with(mytextbox) {
				//	event_user(0);	
				//}
			}
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

