function SCRP_DECISION(){


   if(isUsing == "Jonathan"){
   if( (hsp == 0) and (vsp == 0) and (!( key_attack || key_downreal || Key_jumpreal)) and (SlideLock == false) and (isHurt == false) and ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) or (place_meeting(x, y + 1, OBJ_COLLIDER_PLATFORM)) ) ){
      
	  if(JonathanStatus == SCRP_WALK) JonathanStatus = SCRP_STOP;
	  if(JonathanStatus == SCRP_INIT_WALK) JonathanStatus = SCRP_STOP;
	  if(JonathanStatus == SCRP_FALLING) JonathanStatus = SCRP_IDLES;
      
   
   }
  
   if( (hsp != 0) and (vsp == 0) and (SlideLock == false) and (Key_leftreal || Key_rightreal) and ( !(key_downreal) ) and (isHurt == false) and   ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) or (place_meeting(x, y + 1, OBJ_COLLIDER_PLATFORM)) )){	  
	  if(JonathanStatus == SCRP_IDLES) JonathanStatus = SCRP_INIT_WALK;
	  if(JonathanStatus == SCRP_FALLING) JonathanStatus = SCRP_WALK;     
	  
   }
   
   if( ((floor(vsp)) < 0) and (SlideLock == false) and (isHurt == false) and (!((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  )) ){ 
   JonathanStatus = SCRP_JUMP;
   }
   
   if( ((floor(vsp)) > 0) and (SlideLock == false) and (isHurt == false) and (!((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  )) ){ 
   JonathanStatus = SCRP_FALLING;
   }

   if(isHurt == true){    
   JonathanStatus = SCRP_HURT;   
   }
   
   if ( (isHurt == true) and ( place_meeting(x, y + 1, OBJ_COLLIDER_FATHER) or place_meeting(x, y + 1, OBJ_COLLIDER_FATHER) ) and ( sprite_index == SPRITES_JONATHAN_HURT or sprite_index == SPRITES_CHARLOTTE_HURT) ) {	 
	    isHurt = false;		
	    if(isUsing == "Jonathan")  JonathanStatus  = SCRP_IDLES; 
	 }

   if(global.hp == 0){
   JonathanStatus  = SCRP_DEATH_NATURAL;
   CharlotteStatus = SCRP_DEATH_NATURAL;
   }

   if( (hsp == 0) and (vsp == 0) and (!( key_attack ||  Key_jumpreal)) and (key_downreal) and (isHurt == false) and ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) or (place_meeting(x, y + 1, OBJ_COLLIDER_PLATFORM))  )  ){   
   JonathanStatus = SCRP_CROUCH;
   }
   
   
   
   //if( (hsp == 0) and (vsp == 0) and (SlideLock == false) and (!( key_downreal ||  Key_jumpreal)) and (key_attack) and(isHurt == false) and ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) or (place_meeting(x, y + 1, OBJ_COLLIDER_PLATFORM)) )  ){
   //JonathanStatus = scrp_Attack;
   //}
   if( (vsp == 0) and ( key_downreal and (Key_leftreal or Key_rightreal) ) and (!( Key_leftreal and Key_rightreal )) and ( place_meeting(x, y + 1, OBJ_COLLIDER_FATHER) )  ) {
   JonathanStatus = SCRP_CROUCH_WALK;
   }
   
   

   if(isAttacking == true){
   JonathanStatus = SCRP_ATTACKING;
   }
   
   
   }
   
   
   
   
   if(isUsing == "Charlotte"){
	   
   if ( (isHurt == true) and ( place_meeting(x, y + 1, OBJ_COLLIDER_FATHER) or place_meeting(x, y + 1, OBJ_COLLIDER_FATHER) ) and ( sprite_index == SPRITES_JONATHAN_HURT or sprite_index == SPRITES_CHARLOTTE_HURT) ) {	 
	    isHurt = false;
		if(isUsing == "Charlotte") CharlotteStatus = SCRP_IDLES;	 
	 }
	   
   if(isHurt == true){     
   CharlotteStatus= SCRP_HURT;
   }
   
   if( (hsp == 0) and (vsp == 0) and (!( key_attack || key_downreal || Key_jumpreal)) and (SlideLock == false) and (isHurt == false) and ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) or (place_meeting(x, y + 1, OBJ_COLLIDER_PLATFORM)) ) ){
      
	  if(CharlotteStatus == SCRP_WALK) CharlotteStatus = SCRP_STOP;
	  if(CharlotteStatus == SCRP_INIT_WALK) CharlotteStatus = SCRP_STOP;
	  if(CharlotteStatus == SCRP_FALLING) CharlotteStatus = SCRP_IDLES;
      
   
   }
  
   if( (hsp != 0) and (vsp == 0) and (SlideLock == false) and (Key_leftreal || Key_rightreal) and ( !(key_downreal) ) and (isHurt == false) and   ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) or (place_meeting(x, y + 1, OBJ_COLLIDER_PLATFORM)) )){	  
	  //if(CharlotteStatus == SCRP_IDLES) CharlotteStatus = SCRP_INIT_WALK;
	  CharlotteStatus = SCRP_WALK;     
	  
   }
   
   if( ((floor(vsp)) < 0) and (SlideLock == false) and (isHurt == false) and (!((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  )) ){ 
   CharlotteStatus = SCRP_JUMP;
   }
   
   if( ((floor(vsp)) > 0) and (SlideLock == false) and (isHurt == false) and (!((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  )) ){ 
   CharlotteStatus = SCRP_FALLING;
   }

   if( (hsp == 0) and (vsp == 0) and (!( key_attack ||  Key_jumpreal)) and (key_downreal) and (isHurt == false) and ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) or (place_meeting(x, y + 1, OBJ_COLLIDER_PLATFORM))  )  ){   
   CharlotteStatus = SCRP_CROUCH;
   }
   
   
   
   //if( (hsp == 0) and (vsp == 0) and (SlideLock == false) and (!( key_downreal ||  Key_jumpreal)) and (key_attack) and(isHurt == false) and ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) or (place_meeting(x, y + 1, OBJ_COLLIDER_PLATFORM)) )  ){
   //JonathanStatus = scrp_Attack;
   //}
   if( (vsp == 0) and ( key_downreal and (Key_leftreal or Key_rightreal) ) and (!( Key_leftreal and Key_rightreal )) and ( place_meeting(x, y + 1, OBJ_COLLIDER_FATHER) )  ) {
   CharlotteStatus = SCRP_CROUCH_WALK;
   }
   
   if(isHurt == true){
   CharlotteStatus = SCRP_HURT;
   }

   if(isAttacking == true){
   CharlotteStatus = SCRP_ATTACKING;
   }
   
   if(global.hp == 0){
   CharlotteStatus = SCRP_DEATH_NATURAL;
   }
   }
   
   



}
