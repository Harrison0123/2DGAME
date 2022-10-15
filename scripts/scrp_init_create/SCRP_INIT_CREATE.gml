function SCRP_INIT_CREATE(){
  instance_create_depth(x, y, 1, OBJ_HUD_PLAYER);    //Will create a HUD of Sofanna
  instance_create_depth(x, y, 1, OBJ_CAMERA);       //Will create a camera that follow the player
  //instance_create_depth(x, y, 1, OBJ_WHIP_BELMONT); //Create the weapon    
 // aura_id = instance_create_depth(x, y, -100, OBJ_LIGHT_AURA);
  // with(aura_id){
	//color        = $00FFFFFF;
	//intensity    = 0;
	//wobble       = 0.3;
	//image_xscale = 3;
	//image_yscale = 3;
  //}
  //audio_group_load(AUDIO_FX);   
  //scrp_get_pad(); 
}