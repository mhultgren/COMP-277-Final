current_enemy_health = 100;
enemy_health = 100;
attack_power = 10;
max_width = 64;

zone = 1;
zone_color_weakest = make_color_rgb(238, 142, 177);
zone_color_weak = make_color_rgb(238, 119, 142);
zone_color_normal = make_color_rgb(238, 71, 77);
zone_color_strong = make_color_rgb(238, 28, 36);
zone_color_strongest = make_color_rgb(158, 11, 15);

enemy_hit_chance = 5;

damaged = false;

hit = false;
hit_counter = 0;
miss = false;
miss_counter = 0;

attacking = false;
attacking_strings = ["yu realy suckk, man", "*BELCH*", "yu messed wit the wrong guy, pal"];
attacking_counter = 0;
phrase_picked = false;

image_xscale = 0;
image_yscale = 0;

appearing = true;
decreasing = false;

image_maxscale = 1.25;
image_minscale = .85;