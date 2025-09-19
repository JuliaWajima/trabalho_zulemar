for(var i = 0;i<array_length(menu);i++){
	var _cor=c_white 
	draw_set_font(FONTE)
	var _altura=string_height("I")*1.5
	
	var _margem=0

	if(i == atual){
		_cor=c_red
		_margem=margem
	}
	
	draw_set_color(_cor)
	draw_text(20+_margem,20+_altura*i,menu[i].texto);
}	
	
