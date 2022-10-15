/// @description Insert description here


//OBJ_SYSTEM_SOUND.music_volume =  fn;

											
if(state == 0){
   timer ++;
   tmr  --;
   
   
   if(timer >= duration){
   room_goto(targetRoom);
   //OBJ_SYSTEM_SOUND.music_changed  = noone;
   state = 1;
   }



}

else if(state == 1){

  timer--;
  tmr++;
  
  if(timer <= 0){
  //OBJ_SYSTEM_SOUND.music_volume =  1;
  instance_destroy();
  }
  
  
}

alpha = timer / duration;
fn    = tmr   / duration;