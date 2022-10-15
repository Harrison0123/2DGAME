/// @description Insert description here
// You can write your code in this editor


#region  //Initializer
draw_set_halign(fa_center);
var cam_x = camera_get_view_x(view_camera[0]),
    cam_y = camera_get_view_y(view_camera[0]),
#endregion

#region //HealthBar
    
	var temp = 35;
   for (var i = 1; i <= global.hp; i++){
   
   draw_sprite_ext(SPRITE_HUD_BAR_FORE, 0, cam_x + 19, cam_y + 140 - temp, 0.5, 0.5, 0, c_white, 1)
   temp = temp + 5;
}


draw_sprite_ext(SPRITE_HEALTH_BAR, 0, cam_x + 60, cam_y + 60, 0.5, 0.5, 0, c_white, 1)
//draw_sprite_ext(SPRITE_PORTRAIT_JONATHAN, 0, cam_x + 25, cam_y + 20, 0.05, 0.05, 0, c_white, 1)




draw_set_font(bitmap_font);
draw_set_halign(fa_left);
//draw_text(cam_x + 30, cam_y + 15, "SONIA")
//draw_text(cam_x + 30, cam_y + 25, "{ = " +string(global.heart_count))


var text = string_format(global.hp, 0, 0);
var formatted_score = string_replace_all(text, " ", "0");

draw_text(cam_x + 16, cam_y + 15, formatted_score);

   


#endregion


