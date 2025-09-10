function scr_textos(){
	switch npc_nome{
		case "Bem-te-vi":
			global.currentFont=fonte_beteve
			texto[0]="SANGUE DE CRISTO TEM PODER...UM FANTASMA! QUEM É VOCÊ???";
			global.currentFont=Font1
			texto[1]="Sinceramente, não sei te dizer quem eu sou, já fazem muitos anos desde que morri."
			texto[2]="Mas se tem algo que posso lhe dizer, é que minha história foi esquecida com o passar do tempo"
			texto[3]="a falta de preservação e escrituras sobre, fez com que a verdade se esvaísse ao longo dos anos e hoje, não resta algo para se lembrar."
		break;
		case "nome_japonesa":
			global.currentFont=fonte_beteve
			texto[0]="que confusao que confusao"
		break;
		
		case "nome_historiador":
			global.currentFont=fonte_beteve
			texto[0]="Os primeiros italianos chegaram no final do seculo XIX. Vieram por causa da terra fertil, do trabalho e da fe."
		break;
		
		case "nome_francisco":
			global.currentFont=fonte_beteve
			texto[0]="Esta igreja foi erguida com esforco e fe. Cada pedra tem uma historia. Ajude a preservar essa memoria"
		break;
		
		case "nome_dolores":
			global.currentFont=fonte_beteve
			texto[0]="A polenta e a fortaia nao sao so comidas, sao tradicoes passadas de geracao em geracao. Sao parte da nossa memoria."
		break;
		
		case "nome_padre":
			global.currentFont=fonte_beteve
			texto[0]="Muitos visitantes vem ate aqui para rezar e celebrar. E nossa missao cuidar da fe e da memoria desta comunidade."
		break;
		
		case "nome_irma":
			global.currentFont=fonte_beteve
			texto[0]="A memoria de um povo vive nos seus espacos e tradicoes. Se nao preservarmos isso, perdemos quem somos."
		break;
	
	}
}	


