scr_new_text_box("EZEKIEL", "Anyways, I know it's been a long trip but we've got one more \nplace to go before you settle in for the night.", 2);
scr_new_text_box("EZEKIEL", "I told the mayor you were coming, and he'd like to give you a \nrun-down on the case before you go to sleep.", 2);
scr_new_text_box("EZEKIEL", "He'll be in his office, in the town hall. It's the big building \nwith the clock on it.", 2)
scr_new_text_box("EZEKIEL", "Feel free to get your bearings around town before you meet me \nin the town hall.", 2);

with instance_nearest(x, y, obj_ezekiel) {leave_station = true;}