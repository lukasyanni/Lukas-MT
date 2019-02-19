/// @description Insert description here
// You can write your code in this editor

//Trigger repair

//repair subsystem
repairSubsystem.hp = repairSubsystem.maxHp;

create_textevent(["Captain, I've finished repairing the "+repairSubsystem.name+" Subsystems!"],[id])

// Reset repair values
repairDate = noone;
repairSubsystem = noone;
state = "Active";


