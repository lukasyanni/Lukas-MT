/// @description checks if player can afford the item
/// @param cost
/// @param P/E/C
/// @param amount

if (global.Credits >= argument0) {
	global.Credits -= argument0;
	components_add(argument1, argument2);
	transaction = true;
} else {
	transaction = false;
}

return transaction;