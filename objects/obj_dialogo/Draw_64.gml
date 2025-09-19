if inicializar ==true{
	var _guil=display_get_gui_width()	
	var _guia=display_get_gui_height()

	var _xx=0
	var _yy=_guia-130
	var _c=c_black
    var _sprite = textos_grid[# Infos.Retrato, pagina];
   
	draw_set_font(Font1)
	var _stgw=string_width(textos_grid[#Infos.Nome,pagina])
	draw_rectangle_color(_xx,_yy,_guil,_guia,_c,_c,_c,_c,false)
	
	draw_text_ext(_xx+20,_yy+32,textos_grid[# Infos.Texto,pagina],32,_guil-70)
	draw_text_ext(_xx+_stgw,_yy+5,textos_grid[# Infos.Nome,pagina],32,_guil-36)
	draw_sprite_ext(_sprite,2,720,440,1.5,1.5,1,c_white,1)
}