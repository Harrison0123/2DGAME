 function SCRP_DEATH_NATURAL(){
  
    if(isUsing == "Jonathan")  sprite_index = SPRITES_JONATHAN_DIE;
	if(isUsing == "Charlotte") sprite_index = SPRITES_CHARLOTTE_DIE;
    
	    
		var tempa;
		if(isUsing == "Jonathan")  tempa = "Jonathan"
	    if(isUsing == "Charlotte") tempa = "Charlotte"
		
		isUsing = "DEAD"
	    hsp = 0;
	    vsp = -0.1;
  
  if(Dead_start == false){
	 Dead_start = true;
     audio_stop_all();
     if(tempa == "Jonathan")  audio_play_sound(SND_JONATHAN_DIE, 1, false);
	 if(tempa == "Charlotte") audio_play_sound(SND_CHARLOTTE_DIE, 1, false);
	 audio_play_sound(SND_PLAYERMISS, 1, false);
  
  }
  
  
}