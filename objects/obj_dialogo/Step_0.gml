	if inicializar==false{
	scr_textos()
	inicializar=true
}	
if keyboard_check_pressed(vk_space){
	if pagina < ds_grid_height(textos_grid) - 1{
		pagina++;
	}else{
		global.dialogo=false
		instance_destroy()
	}
}