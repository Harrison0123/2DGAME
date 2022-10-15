	function SCRIPTS_FADE(){
    
	var _room = argument[0];
	var _dur  = argument[1];
	var _color= argument[2];
	
	
	var _inst   = instance_create_depth(0, 0, -1000, OBJ_FADE);
	
	with (_inst){
	targetRoom = _room;
	duration   = _dur;
	color      = _color;
	
	}

	}