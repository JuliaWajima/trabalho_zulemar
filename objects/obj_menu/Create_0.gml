opcao1= { texto : "Jogar" , 
	funcao : function(){ 
		room_goto_next() 
			},
		} 
opcao3= { texto : "Sair" ,
	funcao : function(){
		game_end() 
		},
	}
opcao2= { texto : "Controles" ,
	funcao : function(){
		room_goto(room_controles); 
		},
	} 
	
menu=[opcao1,opcao2,opcao3]
atual=0 
margem=0

