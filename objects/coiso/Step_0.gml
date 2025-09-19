function shift(){
	if(keyboard_check(vk_shift)){
		spd=5
	}
	else{
		spd=3
	}
}

#region movimentacao
shift()
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
#region dialogo	
if (distance_to_object(obj_par_npcs) <= 10) {
    if (keyboard_check_pressed(ord("E")) && !global.dialogo) {
        
        var _npc = instance_nearest(x, y, obj_par_npcs);
        if (instance_exists(_npc)) {
            var _dialogo = instance_create_layer(x, y, "dialogo", obj_dialogo);
            if (variable_instance_exists(_npc, "nome")) {
                _dialogo.npc_nome = _npc.nome;
            } else {
                _dialogo.npc_nome = "???";
            }
        }
    }
}
#endregion
