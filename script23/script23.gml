if(place_meeting(x + hspd, y, obj_block)){
 var block = instance_place(x + hspd, y, obj_block);
 with(block){
  script22(obj_player.hspd/2, 0);
 }
 hspd /= 2;
}



if(place_meeting(x, y + vspd, obj_block)){
 var block = instance_place(x, y + vspd, obj_block);
 with(block){
  script22(0, obj_player.vspd/2);
 }
 vspd /= 2;
}
