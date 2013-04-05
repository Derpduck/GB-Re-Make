/*
Not a huge bug, but an "exploit" of the executable is possible, 
by placing a file that will be loaded in a folder or directory
with a period in the directory itself.
*/

//Using code adapted from the Garrison Decompiler.
if(!directory_exists(program_directory + "\Decompiled")) directory_create(program_directory + "\Decompiled")
if(!directory_exists(program_directory + "\Decompiled\Background")) directory_create(program_directory + "\Decompiled\Background")
if(!directory_exists(program_directory + "\Decompiled\Walkmask")) directory_create(program_directory + "\Decompiled\Walkmask")
if(!directory_exists(program_directory + "\Decompiled\Entities")) directory_create(program_directory + "\Decompiled\Entities")

var currentC, fileNameCh, fileLen;

global.decompileFile = get_open_filename("PNG|*.png;*.PNG","")
    
if (global.decompileFile == ""){
    exit;
}
    
global.map = global.decompileFile
global.decompileFileDir = global.decompileFile

//This next block of code attempts to grab the true base name without the extension and directory.
while (string_count("\", global.map) != 0){ //This part grabs the base name without the directory
    global.map = string_delete(global.map,1,1)
}
    
fileNameCh = string_pos(".png",global.map)
if (fileNameCh == 0){
    fileNameCh = string_pos(".PNG",global.map)
}
fileLen = string_length(global.map)
global.map = string_copy(global.map,0,fileLen - (fileLen - fileNameCh) - 1)

custom_map_init(global.decompileFile)
    
global.bgName = global.map
