#region movimentacao
if(global.dialogo==false){
	if keyboard_check(ord("W")){
		    y-=spd    
			sprite_index=imgBack
			facing="up"
	}
	else if keyboard_check(ord("S")){
		    y+=spd    
			sprite_index=imgFront
			facing="down"
	}
	else if keyboard_check(ord("A")){
		    x-=spd  
			sprite_index=imgEsq
			facing="left"
	}
	else if keyboard_check(ord("D")){
		    x+=spd    
			sprite_index=imgDir
			facing="right"
	}
	else{
		fac()
	}
}else{
	fac()
}
	
#endregion
shift()
#region dialogo	
if distance_to_object(obj_par_npcs)<=10{
	if (keyboard_check_pressed(ord("E")) and global.dialogo==false){
		var _npc=instance_nearest(x,y,obj_par_npcs)
		var _dialogo=instance_create_layer(x,y,"dialogo",obj_dialogo)
		_dialogo.npc_nome=_npc.nome
	}
}
#endregion
#region sistema totem
if (global.totemDest == true and keyboard_check_pressed(ord("E"))) {
	a=15
    var _xx = x;
    var _yy = y;
    switch (facing) {
        case "up":    _yy -= sprite_height-45; break;
        case "down":  _yy += sprite_height-a; break;
        case "left":  _xx -= sprite_width-30;  break;
        case "right": _xx += sprite_width-30;  break;
    }
    instance_create_layer(_xx, _yy, "Instances", trophy);
    global.totemDest = false;
}
#endregion
