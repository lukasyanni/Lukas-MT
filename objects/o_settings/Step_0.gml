/// @description Example of self-modifying menu strings
list[| 0] = "BGM: "
if (bgm) { list[| 0] += "ON "; } else { list[| 0] += "OFF"; }
list[| 1] = "SFX: "
if (sfx) { list[| 1] += "ON "; } else { list[| 1] += "OFF"; }
event_inherited();

