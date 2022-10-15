/// @description Stop Animation



       switch(sprite_index){
	   
	        case SPRITES_JONATHAN_WALK_INIT:
			JonathanStatus = SCRP_WALK;
			break;
			
			case SPRITES_JONATHAN_STOP:
			JonathanStatus = SCRP_IDLES;
			break;
			
			case SPRITES_JONATHAN_FALL:
			image_index = 6;
			break;
			
			case SPRITES_CHARLOTTE_WALK_INIT:
			CharlotteStatus = SCRP_WALK;
			break;
			
			case SPRITES_CHARLOTTE_STOP:
			CharlotteStatus = SCRP_IDLES;
			break;
			
			case SPRITES_CHARLOTTE_FALL:
			image_index = 6;
			break;
			
			case SPRITES_CHARLOTTE_DIE:
			image_index = 15;
			break;
			
			case SPRITES_JONATHAN_DIE:
			image_index = 29;
			break;
			
			case SPRITES_JONATHAN_ATTACK_WHIP:
			isAttacking   = false;
			JonathanStatus= SCRP_IDLES;
			break;
			
			
 
	   
	   }

