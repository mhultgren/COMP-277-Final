hspd = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * player_speed;
vspd = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * player_speed;

if (!global.textOnScreen && !global.gamePaused && !global.cutscene) script_execute(state_active(hspd, vspd));