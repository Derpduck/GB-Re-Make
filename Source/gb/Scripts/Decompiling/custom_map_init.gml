//Initializes a custom level.
//argument0: filename
  
//Load the background.
global.background = argument0
if (global.loadedC == false){
    file_copy(argument0, program_directory + "\Decompiled\Background\" + global.map + ".png")
}
global.BG = chr(34) + program_directory + "\Decompiled\Background\" + global.map + ".png" + chr(34) //We add the quotes, just in case the file/the directory it is located in has spaces in it.

//Reset this value, just in case the user wants to load another pre-made map.
global.loadedC = false;

//Get the leveldata.
var leveldata;
leveldata = GG2DLL_extract_PNG_leveldata(argument0) //No tempfile here because this uses the old GG2DLL.
if(leveldata == ""){
    show_message("This map does not contain level data.#Exiting from the current process.")
    exit;
}
//Handle the leveldata.
custom_map_process_level_data(leveldata)
