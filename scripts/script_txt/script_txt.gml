function scr_textos(){
	switch npc_nome{
		case "Bem-te-vi":
			ds_grid_add_text("SANGUE DE CRISTO TEM PODER...UM FANTASMA! QUEM É VOCÊ???",spr_btv,"Bem-te-vi")
			ds_grid_add_text("Sinceramente, não sei te dizer quem eu sou, já fazem muitos anos desde que morri.",imgDir,"Fantasma")
			ds_grid_add_text("Mas se tem algo que posso lhe dizer, é que minha história foi esquecida com o passar do tempo, a falta de preservação e escrituras sobre, fez com que a verdade se esvaísse ao longo dos anos e hoje, não resta algo para se lembrar.",imgDir,"Fantasma")
			ds_grid_add_text("Sinceramente, não sei te dizer quem eu sou, já fazem muitos anos desde que morri.",imgDir,"Fantasma")
		break;
	}
}	

function ds_grid_add_row() {
	var _grid = argument[0];
	ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid) + 1);
	return ds_grid_height(_grid) - 1;
}

function ds_grid_add_text() {
	var _grid = textos_grid;
	var _y = ds_grid_add_row(_grid);
	
	_grid[# Infos.Texto, _y] = argument[0];
	_grid[# Infos.Retrato, _y] = argument[1];
	_grid[# Infos.Nome, _y]   = argument[2];
}