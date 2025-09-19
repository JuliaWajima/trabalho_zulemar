facing="down"
spd=3
function fac(){
switch (facing) {
	        case "up": sprite_index=imgPr;image_index=0; break;
	        case "down":sprite_index=imgPr;image_index=1; break;
	        case "left":sprite_index=imgPr;image_index=2; break;
	        case "right":sprite_index=imgPr;image_index=3; break;
	    }	
}

