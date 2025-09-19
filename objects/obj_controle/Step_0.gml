if instance_exists(obj_dialogo){
	global.dialogo=true	
}

if keyboard_check(vk_escape){
	room_goto(room_menu)
}