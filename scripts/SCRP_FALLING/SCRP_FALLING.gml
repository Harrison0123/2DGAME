
 function SCRP_FALLING(_OBJ, _SPRITE){
 
 
 with(_OBJ){
	
	 
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