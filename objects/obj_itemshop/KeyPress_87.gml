/// @description enter building
if place_meeting(x, y, obj_ph) {
	instance_create_layer(camera_get_view_x(view_camera[0]) + 512, camera_get_view_y(view_camera[0]) + 266, "layer_text", obj_insideitem);
	instance_create_layer(camera_get_view_x(view_camera[0]) + 512, camera_get_view_y(view_camera[0]) + 528, "layer_text", obj_shopscreen);
}
