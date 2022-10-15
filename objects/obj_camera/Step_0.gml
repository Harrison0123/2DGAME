/// @description Inserte aquí la descripción


/// @description Void de la camara


cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);

switch(mode){
      case cammode.follow_object:
	  
	  if(!instance_exists(following)) break;
	  
	  cx = following.x - (view_w/2);
	  cy = following.y - (view_h/2.5);
 
	  
	  break;


}


cx = clamp(cx, min_view_x, max_view_x);
cy = clamp(cy, min_view_y, max_view_y);

camera_set_view_pos(view_camera[0], cx, cy);






