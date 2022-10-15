//Calculo de colisiones
function SCRP_COLLISIONS(){

#region //Horizontal Collision
if place_meeting(x+hsp,y,OBJ_COLLIDER_FATHER)
{
    yplus = 0;
    while (place_meeting(x+hsp,y-yplus,OBJ_COLLIDER_FATHER) && yplus <= abs(1*hsp)) yplus += 1;
    if place_meeting(x+hsp,y-yplus,OBJ_COLLIDER_FATHER)
    {
        while (!place_meeting(x+sign(hsp),y,OBJ_COLLIDER_FATHER)) x+=sign(hsp);
        hsp = 0;
    }
    else
    {
        y -= yplus
    }
}
x += hsp;
if !place_meeting(x,y,OBJ_COLLIDER_FATHER) && vsp >= 0 && place_meeting(x,y+2+abs(hsp),OBJ_COLLIDER_FATHER)
{while(!place_meeting(x,y+1,OBJ_COLLIDER_FATHER)) {y += 1;}}
#endregion

#region //Sistema de colisión vertical
if(place_meeting(x, y  + vsp, OBJ_COLLIDER_FATHER))         {
while(!place_meeting(x, y + sign(vsp), OBJ_COLLIDER_FATHER)){
y = y  + sign(vsp);
}
vsp = 0;
}
y  = y + vsp;
#endregion



}