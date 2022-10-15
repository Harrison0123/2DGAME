function SCRP_HURT(_OBJECT, _SPRITE){

 with(_OBJECT){
	 
  switch(global.val){
	  
	  case 1:
	  
	    image_speed  = 1;
        sprite_index = _SPRITE;
		image_xscale = 1;
		
		
  break;
      case 0:
	  
	    image_speed  = 1;
	    sprite_index = _SPRITE;
		image_xscale = -1;
		
  break;
  
  
  }
 
 }
 

}