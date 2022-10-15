 function SCRP_SPRITE_UPDATE(_sprite){
 
  switch(global.val){
	  
	  case 1:
	    
		 if (sprite_index != _sprite) {
         sprite_index = _sprite;
		 image_xscale = 1;
         image_index = 0;
         }
		 
  break;
  
      case 0:
	  
	   if (sprite_index != _sprite) {
         sprite_index = _sprite;
		 image_xscale = -1;
         image_index = 0;
         }

	    
  break;
  
  
  }
   

}