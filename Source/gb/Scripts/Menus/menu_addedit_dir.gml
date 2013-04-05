//argument0 - name
//argument1 - name of the variable this setting is bound to
//argument2 - GML code to execute

item_name[items] = argument0
item_type[items] = "editdir"
item_var[items] = argument1
item_value[items] = menu_get_var(items)
item_script[items] = argument2
items += 1
