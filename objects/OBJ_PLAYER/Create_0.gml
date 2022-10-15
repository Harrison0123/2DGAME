/// @description Inicialización de Jonathan

#region //DATA BASE DE SOFANNA

hsp                   = 0;           //Horizontal movement 
vsp                   = 0;           //Vertical movement
grv                   = 0.4;         //Gravity Value (Affects vsp indirfectly)
walksp                = 1.2           //Velocity (How fast hsp will move and affects hsp indirectly)

JonathanStatus        = SCRP_IDLES;  //State (When the game runs this state will execute)
CharlotteStatus       = SCRP_IDLES
isUsing               = "Jonathan";
isHurt                = false;       //If she get hurt
isInmune              = false;       //If she is inmune to damage
isAttacking           = false;       //If she is attacking
isAttack1             = false;
isAttack2             = false;
SofannaSlide          = 3;           //How long she will slide
SlideLock             = false;       //Check if she can slide
Dead_start            = false;       //start dead
aura_id               = noone;
can_double_jump       = false;


global.hp             = 15;         //How much hp she will have
global.val            = 1;           //Where is she looking. 1-Right and 0-Left
global.Global_Score   = 0000000;     //Basic score of Sofanna 
global.DebugSearch    = true;        //Active the debug mode (noramlly to check hitboxes and stuff, check draw event)
global.control_name   = "NOT_INPUT"; //Name of the control, only works for Xbox gamepads (gamepad support)
global.gamepad_actual = noone;       //This value will contain the gamepad inserted (gamepad support)
global.whip_mode      = 2;           //whip mdoes
global.heart_count    = 0;
global.isUpgrading    = false;
global.pauser         = false;
con                   = 0;

depth                 = 0;       //At which position she will displayed on the screen

#endregion

#region //Init HUD
SCRP_INIT_CREATE();                  //Will create things like HUD, GamePads check and other stuff
#endregion







