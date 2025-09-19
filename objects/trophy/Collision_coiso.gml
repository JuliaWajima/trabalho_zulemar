if keyboard_check(ord("E")){
	array_push(global.arrayTotem, trophy)
	global.totemDest=true
    instance_destroy(self)
}