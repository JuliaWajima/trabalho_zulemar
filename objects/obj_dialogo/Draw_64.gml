var _guil=display_get_gui_width()	
var _guia=display_get_gui_height()

var _xx=0
var _yy=_guia-130
var _c=c_black
draw_set_font(global.currentFont)
draw_rectangle_color(_xx,_yy,_guil,_guia,_c,_c,_c,_c,false)
draw_text_ext(_xx+15,_yy+32,texto[pagina],32,_guil-36)
draw_text_ext(_xx+730,_yy+105,npc_nome,32,_guil-36)