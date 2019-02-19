/// @description Insert description here
// You can write your code in this editor

event_inherited();

hp = 3;
maxHp = 3;

name = "None";

p = instance_create_layer(x,y,layer,subsystem_obj);
e = instance_create_layer(x,y,layer,subsystem_obj);
c = instance_create_layer(x,y,layer,subsystem_obj);

p.name = "Physical";
e.name = "Electrical";
c.name = "Computerized";