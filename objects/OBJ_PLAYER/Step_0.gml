/// @description void del programa
#region //Global pause
if(global.pauser)  exit;
#endregion

#region //Scripts (funciones) encargadas de manejar al personaje

if(global.isUpgrading == false){
SCRP_CALC_MOVEMENT          ();      //Assign the correspond values depending on situation      
SCRP_COLLISIONS             ();      //Core collision of the game
SCRP_DECISION               ();      //Change the state of the player to change the sprite

if(isUsing == "Jonathan")  SCRP_JHONATHANIS();      //Depending on the decision the sprite will change
if(isUsing == "Charlotte") SCRP_CHARLOTTEIS();


//scrp_blink                  ();      //Blink effect after taking a damage
//SCRP_JUMP_platform          ();      //How the player can jump trough platforms (obj_platforms)
//scrp_Debug                  ();      //Debug mode
//SCRP_UPGRADE_EFF();

}




#region
var BCK_2 = layer_get_id("BCK_2");
//var BCK_1 = layer_get_id("BCK_1");
//layer_x(BCK_1, x = x -0.1);
layer_x(BCK_2, lerp(0, camera_get_view_x(view_camera[0]), 0.1));

#endregion

#endregion
 if(Dead_start == false){
 if(room = RM_STG5_0){
 if(!audio_is_playing(SND_JAILS)){
 audio_play_sound(SND_JAILS, 1, 1);
 }}}
 
 
 if(Dead_start == true and !audio_is_playing(SND_PLAYERMISS)){
     SCRIPTS_FADE(RM_GAMEOVER, 60, c_black)
  }
