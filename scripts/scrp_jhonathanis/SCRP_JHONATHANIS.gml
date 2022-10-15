//Aquí encontrarás los sprites de Sofanna

function SCRP_JHONATHANIS(){

   switch(JonathanStatus){
   
   case SCRP_IDLES:
   SCRP_IDLES(OBJ_PLAYER, SPRITES_JONATHAN_IDLE);
   break;
   
   case SCRP_WALK:
   SCRP_WALK(OBJ_PLAYER, SPRITES_JONATHAN_WALK);
   break;
   
   case SCRP_JUMP:
   SCRP_JUMP(OBJ_PLAYER, SPRITES_JONATHAN_JUMP);
   break;
   
   case SCRP_STOP:
   SCRP_STOP(OBJ_PLAYER, SPRITES_JONATHAN_STOP);
   break;
   
   case SCRP_FALLING:
   SCRP_FALLING(OBJ_PLAYER, SPRITES_JONATHAN_FALL);
   break;
   
   case SCRP_INIT_WALK:
   SCRP_INIT_WALK(OBJ_PLAYER, SPRITES_JONATHAN_WALK_INIT);
   break;
   
   case SCRP_HURT:
   SCRP_HURT(OBJ_PLAYER, SPRITES_JONATHAN_HURT);
   break; 
   
   case SCRP_DEATH_NATURAL:
   SCRP_DEATH_NATURAL();
   break;
   
   case SCRP_ATTACKING:
   SCRP_ATTACKING();
   break;
    
   //case SCRP_CROUCH:
  // SCRP_CROUCH();
  // break;
   
  // case SCRP_CROUCH_WALK:
  // SCRP_CROUCH_WALK();
  // break;
   
   
   
   
  
   
   //case scrp_Attack:
   //scrp_Attack();
   //break;
   
 
    
   
   }
	   
   

















}