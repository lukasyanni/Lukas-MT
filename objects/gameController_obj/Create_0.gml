/// @description Insert description here
// You can write your code in this editor
global.Medical = 0;
global.Physical = 0;
global.Electrical = 0;
global.Computerized = 0;
global.Credits = 0;
global.Objectives = [];
globalvar TIME;
globalvar PACE;
globalvar AUTOREPAIR;
globalvar PAUSED;

TIME = 0;
PACE = .1;
AUTOREPAIR = false;
PAUSED = true;

//local
objAlpha = 0;
t = 0;

//Pallet Swap
pal_swap_init_system(shd_pal_swapper);


//save and quit
quitPrompt = obj_textevent;

game_load("save.dat");