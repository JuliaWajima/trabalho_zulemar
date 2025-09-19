function scr_textos() {
	switch (npc_nome) {
		case "Bem-te-vi": {
			var _fala = [];

			if (global.totemDest) {
				_fala = [
					["Você conseguiu o tótem! Ele representa as dezenas de famílias cruzaram o oceano em busca de uma vida melhor no final do século XIX,", spr_btv, "Bem-te-vi"],
					["Vindos principalmente do norte da Itália, enfrentaram uma viagem longa, cheia de incertezas, tudo para encontrar um novo lar aqui, em meio à mata fechada de Santa Catarina.", spr_btv, "Bem-te-vi"],
					["Esta igreja, por exemplo, guarda não só sua fé, mas também histórias de superação, união e coragem. Mas com o tempo, esses relatos começaram a se apagar da memória de muitos...", spr_btv, "Bem-te-vi"],
					["Por isso, este tótem é mais do que uma peça de pedra ou madeira, ele é um lembrete. Um pedido silencioso para que ninguém esqueça de onde viemos.", spr_btv, "Bem-te-vi"],
					["Para isso, pegue este ítem e coloque-o em seu devido pedestal, após isso, vá em busca da tradição.", spr_btv, "Bem-te-vi"]
				];
			} else {
				_fala = [
					["SANGUE DE CRISTO TEM PODER...UM FANTASMA! QUEM É VOCÊ???", spr_btv, "Bem-te-vi"],
					["Sinceramente, não sei te dizer quem eu sou, já fazem muitos anos desde que morri.", imgDir, "Fantasma"],
					["Mas se tem algo que posso lhe dizer, é que minha história foi esquecida com o passar do tempo...", imgDir, "Fantasma"],
					["Imagino como isso deve ser difícil, mas é estranho ver como a história se repete.", spr_btv, "Bem-te-vi"],
					["Nesta igreja ao lado, os integrantes têm se esquecido de preservar os ocorridos...", spr_btv, "Bem-te-vi"],
					["Talvez você possa, o que me diz?", spr_btv, "Bem-te-vi"],
					["Está vendo este tótem? Ele representa a imigração dos italianos para estas terras, muitos anos atrás. Traga-o para mim.", spr_btv, "Bem-te-vi"]
				];
				global.falou_um_vez = true;
			}

			for (var i = 0; i < array_length(_fala); i++) {
				ds_grid_add_text(_fala[i][0], _fala[i][1], _fala[i][2]);
			}
		} break;
		
		case "nome_japonesa":
			ds_grid_add_text("Fui visitar a dona Dolores hoje, ela me mostrou uma pérola muito bonita, cheia de coisas escritas! Me pergunto para que ela serve.", spr_japonesa, "Japonesa");
		break;
		case "nome_francisco":
			ds_grid_add_text("O que você tá fazendo aqui, hein? Essa cafeteria já não é nem sombra do que foi um dia... Antes o café era café de verdade, forte, feito no fogão a lenha, e não essas coisas aguadas de hoje.", spr_francisco, "Sr. Francisco");
			ds_grid_add_text("Não sei o que a Dolores enxerga nesse lugar, bah! Eu só lembro das longas filas e do cheiro de fumaça impregnando a roupa.", spr_francisco, "Sr. Francisco");
			ds_grid_add_text("Mas, vai lá, confesso... tinha o seu valor. No fim das contas, a gente se reunia, mesmo que fosse só pra reclamar da vida.", spr_francisco, "Sr. Francisco");
		break;
		case "nome_dolores":
			ds_grid_add_text("Olá, fantasma! Veio até a cafeteria? Antigamente, esse lugar era ponto de encontro da comunidade. As pessoas passavam para tomar um café forte, trocar novidades e descansar depois de um longo dia de trabalho.", spr_dolores, "Sra. Dolores");
			ds_grid_add_text("Era mais do que uma simples bebida, era convivência, amizade e calor humano.", spr_dolores, "Sra. Dolores");
			ds_grid_add_text("Pegue este objeto com a história da cafeteria, ele parece importante para você. Lembro que havia outro igual, de cor dourada... me pergunto quem será que o guarda agora?", spr_dolores, "Sra. Dolores");
			totemDest_3=true
		break;

		case "empty":
			if global.totemDest{
			ds_grid_add_text("A nevoa abaixou com o totem em seu lugar, novos locais foram relembrados no mapa", nospr, "Mundo");
			}else{
				ds_grid_add_text("Me pergunto para que isso serve...", imgDir, "Fantasma");
			}
		break;
		
		case "cafeteria":
	    if global.totemDest_2{
	        ds_grid_add_text("O aroma do café fresco voltou a se espalhar, a cafeteria foi lembrada no mapa.", nospr, "Mundo");
	    } else {
	        ds_grid_add_text("Estranho... essa cafeteria parece estar se apagando. As mesas, o cheiro do café, até as vozes que enchiam o lugar... tudo parece se esvaindo. Se ninguém lembrar, será como se nunca tivesse existido.",imgDir, "Fantasma");
	    }
		break;
		
		

		case "igreja":
	    if global.totemDest_3 {
	        ds_grid_add_text("Os sinos voltaram a soar, a igreja foi lembrada no mapa.", nospr, "Mundo");
	    } else {
	        ds_grid_add_text("", nospr, "");
	    }
		break;

		case "capela":
	    if global.totemDest_4 {
	        ds_grid_add_text("Um canto suave ecoou, a capela foi lembrada no mapa.", nospr, "Mundo");
	    } else {
	        ds_grid_add_text("", nospr, "");
	    }
		break;
			
		case "aindNao":
			ds_grid_add_text("A nevoa está muito densa para passar agora...",imgDir, "Fantasma");
		break;

		case "???":
			ds_grid_add_text("Ninguem por perto...", imgDir, "Fantasma");
		break;
	}
}


function ds_grid_add_row(_grid) {
	ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid) + 1);
	return ds_grid_height(_grid) - 1;
}

function ds_grid_add_text(_texto, _retrato, _nome) {
	var _grid = textos_grid;
	var _y = ds_grid_add_row(_grid);

	_grid[# Infos.Texto,   _y] = _texto;
	_grid[# Infos.Retrato, _y] = _retrato;
	_grid[# Infos.Nome,    _y] = _nome;
}