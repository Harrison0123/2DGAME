function SCRP_TAKINGCONTROLS(){
	
#region //Toma de controles otorgados     KEYBOARD/GAMEPADS

Key_leftreal          = keyboard_check((ord("A")))            or   gamepad_button_check(global.gamepad_actual, gp_padl); 
Key_leftreal_released = keyboard_check_released((ord("A")))   ;   
Key_rightreal_released= keyboard_check_released((ord("D")))   ;
Key_attack_released   = keyboard_check_released((ord("K")))   ;
Key_rightreal         = keyboard_check((ord("D")))            or   gamepad_button_check(global.gamepad_actual, gp_padr);
key_downreal          = keyboard_check(ord("S"))              or   gamepad_button_check(global.gamepad_actual, gp_padd);
key_downrealrelease   = keyboard_check_released(ord("S"))     ;

Key_jumpreal          = keyboard_check_pressed((ord("L")))    or   gamepad_button_check(global.gamepad_actual, gp_face1);;
Key_jumpreal_release  = keyboard_check_released((ord("L")))    or   gamepad_button_check(global.gamepad_actual, gp_face1);;
Key_jumpreal_pressed  = keyboard_check_pressed((ord("L")))    or   gamepad_button_check(global.gamepad_actual, gp_face1);;
key_attack            = keyboard_check_pressed(ord("K"))      ;
key_attack_released   = keyboard_check_released((ord("K")))   ;
key_run               = keyboard_check((ord("J")))            ;
key_run_release       = keyboard_check_released((ord("J")))   ;
#endregion


}