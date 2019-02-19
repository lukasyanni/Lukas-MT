var system = instance_create_layer(argument0,argument1,"Instances_MECS",system_obj);

with system {
	name = argument2;
	sid = string_char_at(argument2, 0);
	
	var system = instance_create_layer(argument0,argument1,"Instances_MECS",system_obj);
	
	p = instance_create_layer(argument0,argument1,"Instances_PECs",subsystem_obj);
	e = instance_create_layer(argument0,argument1,"Instances_PECs",subsystem_obj);
	c = instance_create_layer(argument0,argument1,"Instances_PECs",subsystem_obj);

}


return system;