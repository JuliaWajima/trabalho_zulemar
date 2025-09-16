opcao1= { texto : "Jogar" , 
	funcao : function(){ 
		room_goto(room_cemiterio) 
			},
		} 
opcao2= { texto : "Sair" ,
	funcao : function(){
		game_end() 
		},
	} 
	
menu=[opcao1,opcao2]
atual=0 
margem=0

