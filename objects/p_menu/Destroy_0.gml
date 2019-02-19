ds_list_destroy(list);
if (!instance_exists(parent)) { parent = noone; }
if (parent != noone) { parent.child = noone; }

