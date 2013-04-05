//Given a string that contains custom leveldata, this will setup everything.
//argument0: the leveldata string.

var entityString, walkmaskString, walkmaskSurface;
var a, b;
var ENTITYTAG, ENDENTITYTAG, WALKMASKTAG, ENDWALKMASKTAG, DIVIDER;
ENTITYTAG = "{ENTITIES}"
ENDENTITYTAG = "{END ENTITIES}"
WALKMASKTAG = "{WALKMASK}"
ENDWALKMASKTAG = "{END WALKMASK}"
DIVIDER = chr(10)

//Grab the walkmask data.
a = string_pos(WALKMASKTAG, argument0)
b = string_pos(ENDWALKMASKTAG, argument0)
if(a == 0 or b == 0){
    show_message("Error: This map does not contain valid walkmask data.")
}
walkmaskString = string_copy(argument0, a + string_length(WALKMASKTAG) + string_length(DIVIDER), b - a - string_length(WALKMASKTAG) - string_length(DIVIDER) - 1)

//Decompile the walkmask surface.
walkmaskSurface = custom_map_decompress_walkmask_to_surface(walkmaskString)

//Convert it to a sprite, and delete the surface .
if(global.CustomMapCollisionSprite != -1){
    sprite_delete(global.CustomMapCollisionSprite)
}
global.CustomMapCollisionSprite = sprite_create_from_surface(walkmaskSurface, 0, 0, surface_get_width(walkmaskSurface), surface_get_height(walkmaskSurface), false, false, 0, 0)
instance_create(0,0,CustomMapW)

global.erasedOnce2 = false
surface_free(walkmaskSurface)

//Grab the entity data.
a = string_pos(ENTITYTAG, argument0)
b = string_pos(ENDENTITYTAG, argument0)
if(a == 0 or b == 0){
    show_message("Error: This map does not contain valid entity data.#Exiting from the current process.")
}
entityString = string_copy(argument0, a + string_length(ENTITYTAG) + string_length(DIVIDER), b - a - string_length(ENTITYTAG) - string_length(DIVIDER) - 1)

//Decompile entities.
custom_map_decomp_entities_from_entity_data(entityString)
