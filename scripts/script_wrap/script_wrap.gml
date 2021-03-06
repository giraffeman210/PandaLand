///@description string_wrap
///@arg string
///@arg max_width
function script_wrap(argument0, argument1) {
	var str = argument0;
	var max_width = argument1;
	var str_len = string_length(str);
	var last_space = 1
	var count = 1;
	var substr = "";
	//show_debug_message();
	//show_debug_message(string(str) + " " + string(max_width) + " " + string(str_len) + " " + string(last_space) + " " + string(count) + " " + string(substr));
	repeat(str_len){
		substr = string_copy(str, 1, count);
		if(string_char_at(str, count) == " ") last_space = count;
		//show_debug_message(string_width(substr));
		if(string_width(substr) > max_width){
			str = string_delete(str, last_space, 1)
			str = string_insert("\n", str, last_space);
			count += 1;
		}
		count++
	}
	
	return str;
}