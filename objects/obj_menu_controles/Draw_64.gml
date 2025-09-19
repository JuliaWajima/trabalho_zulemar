draw_set_font(Font1);
draw_set_color(c_white);
lalala=30
draw_text(lalala, 160, "CONTROLES");

var text = 
"Clique [ESPAÇO] para trocar de diálogo\n" +
"W, A, S, D para se movimentar\n" +
"Clique [ESC] para voltar ao menu inicial";
draw_text(lalala, room_height/2-40, text);

draw_set_color(c_teal);
draw_text(lalala, room_height/2 + 40, "Clique [E] para voltar para o menu");