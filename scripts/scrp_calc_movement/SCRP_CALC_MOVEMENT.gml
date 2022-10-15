//En este script se encuentra la lógica de los cálculos del movimiento, aquí puedes encontrar desde el momentium hasta saltos
 function SCRP_CALC_MOVEMENT(){
	
	 if(isUsing == "Jonathan" or isUsing == "Charlotte"){
	 #region  //Acceso a controles
     SCRP_TAKINGCONTROLS()
     #endregion
	  
	 #region
	 if(place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  can_double_jump = false;
	 
	 #endregion
	 	 
	 
	 #region //Attacking
	 if( isHurt == false and key_attack and (isAttack2 == false) and !(key_downreal) ){
	 audio_play_sound(SND_JONATHAN_ATTACK, 1, false);
	 isAttacking = true;
	 isAttack1   = true;
	 }
	 
	 
	 if( isHurt == false and key_attack and (isAttack1 == false) and (key_downreal) ){
	 isAttacking = true;
	 isAttack2   = true;
	 }
	 
	 #endregion

     #region  //Si presiona saltar este código asigna el salto
	 if( (place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) || (place_meeting(x, y + 1, OBJ_COLLIDER_PLATFORM)) ) and (Key_jumpreal) and (!key_downreal) and (isHurt == false) and (SlideLock == false) and (isAttacking == false) and (global.hp !=0) {
          vsp      = -7;
		  if(can_double_jump == false) can_double_jump = true;
		  
		  	  
      }
     #endregion
      
	 if(!( (place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) || (place_meeting(x, y + 1, OBJ_COLLIDER_PLATFORM)) )  and (!key_downreal) and (can_double_jump == true) and (isUsing == "Charlotte") and (isHurt == false) and (SlideLock == false) and (isAttacking == false) and (global.hp !=0) ){
	      if(Key_jumpreal_pressed and can_double_jump) vsp = -7; 
		  if(Key_jumpreal_pressed and can_double_jump) can_double_jump = false;
	 }
		   
		   
	 #region  //Actualizan la vsp
	    vsp      = vsp + grv;
	 #endregion
	  
	 #region  //Si se presiona abajo mas salto ella bajara de un platform
	 if( place_meeting(x, y + 1, OBJ_COLLIDER_PLATFORM) and (key_downreal and Key_jumpreal) ){
	 y = y + 2;
	 }
	 #endregion
	 
	 #region //hit
	 
	 if( (isHurt == true) ){
	 
	 switch(global.val){
	 
	 case 0:
	 hsp = 2;
	 break;
	 
	 case 1:
	 hsp = -2;
	 break;
	 
	 
	 }
	 
	 }
	
	 
	 
	
	 #endregion
     
     #region  //Cálculo de movimiento 
     if(SlideLock == false and isHurt == false){	 
		
     var move = Key_rightreal - Key_leftreal; //Se decide donde está mirando
     
     switch(move){
        case 1:
               global.val = 1;
               SofannaSlide = 3;
        break;
        case -1:
               global.val = 0;
               SofannaSlide = -3;
       break;
     }
	  
	if(isAttacking == false and global.hp != 0){
	hsp   = move * walksp
	}
	 
    if( isAttacking == true and isHurt == false and place_meeting(x, y + 1, OBJ_COLLIDER_FATHER) and global.hp != 0){
	hsp = 0;
	}
	
	 if( place_meeting(x, y + 1, OBJ_COLLIDER_FATHER) and global.hp == 0){
	hsp = 0;
	}
	
	

   }
   #endregion
	 

     
}
 }