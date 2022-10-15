/// @description Insert description here
// You can write your code in this editor


isHurt = true;
global.hp -= 1;
vsp = -4.5;

switch(isUsing){

  case "Jonathan":
  audio_play_sound(SND_JONATHAN_HURT, 1, false);
  break;
  
  case "Charlotte":
  audio_play_sound(SND_CHARLOTTE_HURT, 1, false);
  break;

}