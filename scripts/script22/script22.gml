var hspd = argument[0];
var vspd = argument[1];

if(place_meeting(x + hspd, y, obj_tangible)){
 while(!place_meeting(x + sign(hspd), y, obj_tangible)){
  x += sign(hspd);
 }
 hspd = 0;
}
x += hspd;

if(place_meeting(x, y + vspd, obj_tangible)){
 while(!place_meeting(x, y + sign(vspd), obj_tangible)){
  y += sign(vspd);
 }
 vspd = 0;
}
y += vspd;
