/// @description string_get_longest(list);
/// @param list
var list, i, str;
list = argument[0];
if (ds_exists(list, ds_type_list)) {
  str = list[| 0];
  for (i = 1; i < ds_list_size(list); i++) {
    if (string_length(list[| i]) > string_length(str)) {
      str = list[| i];
    }
  }
  return str;
}
return "";
