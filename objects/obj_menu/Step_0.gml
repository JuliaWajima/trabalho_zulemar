if keyboard_check_pressed(ord("S")){
	atual++; 
	margem=0; 
	} 
if keyboard_check_pressed(ord("W")){ 
	atual--; 
	margem=0; 
	} 
	
	atual=clamp(atual,0,array_length(menu) -1) 
	margem=lerp(margem,20,.2) 
	
if keyboard_check_pressed(vk_space){ 
	menu[atual].funcao() }
