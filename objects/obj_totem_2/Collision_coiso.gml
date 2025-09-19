if keyboard_check(ord("E")){
	array_push(global.arrayTotem, obj_totem_2)
	global.totemDest_2=true
    instance_destroy(self)
}