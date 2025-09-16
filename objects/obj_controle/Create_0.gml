global.dialogo=false
global.currentFont = fonte_beteve
global.falou_um_vez=false
global.arrayTotem=[]
global.totemNoLocal=false

#region verifica verdadeiro ou falso
function sincronizar_totens() {
    if array_contains(global.arrayTotem, trophy) {
        with (trophy) global.totemDest = true;
		with (trophy) global.totemNoLocal = true;
    }
    if array_contains(global.arrayTotem, obj_totem_2) {
        with (trophy) global.totemDest_2 = true;
		with (trophy) global.totemNoLocal_2 = true;
    }
    if array_contains(global.arrayTotem, obj_totem_3) {
        with (obj_totem_3) minha_variavel = true;
    }
    if array_contains(global.arrayTotem, obj_totem_4) {
        with (obj_totem_4) minha_variavel = true;
    }
}


#endregion