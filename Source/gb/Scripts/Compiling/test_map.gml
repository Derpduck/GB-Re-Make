map_entity_check()

var target_PNG, c, loadWM, loadBGs;

if global.gg2Directory==""{
    show_message("Please select the directory of Gang Garrison 2 that you wish to test with (Must contain 'Gang Garrison 2.exe').")
    get_gg2_dir()
    ini_open("gb.ini")
    ini_write_string("Settings","GG2Directory",global.gg2Directory)
    ini_close()
}

c=0
if (global.quickSave==0){
    target_PNG=get_open_filename("PNG|*.png","")
    if (target_PNG==""){
        break;
    }
}else{
    target_PNG=global.rawBG
    if (target_PNG==""){
        target_PNG=global.rawWM
    }
    if (target_PNG==""){
        show_message("Autosave Failed.")
        break;
    }
}

//If we haven't done so already, compress the walkmask to a string
if(mc.compressedWalkmaskString=="")
    mc.compressedWalkmaskString=compress_walkmask_to_string()

//Get entity data and compressed walkmask data, and put them together
var leveldata;
leveldata=write_entities_to_string()+chr(10)+mc.compressedWalkmaskString

GG2DLL_embed_PNG_leveldata(target_PNG, leveldata)

if (!(directory_exists(program_directory+"\Maps\"))){
    directory_create(program_directory+"\Maps\")
}

//Let's make a copy of this map in the maps folder.
if (global.bgName=="") and (global.wkmskName!=""){
    if (file_exists("Maps\"+global.wkmskName+".png")){
        file_delete("Maps\"+global.wkmskName+".png")
    }
file_copy(target_PNG,"Maps\"+global.wksmkName+".png") //Let's make a copy of this map in the maps folder.
loadWM=true
loadBGs=false
}else if (global.bgName!="") and (global.wkmskName==""){
    if (file_exists("Maps\"+global.bgName+".png")){
        file_delete("Maps\"+global.bgName+".png")
    }
    file_copy(target_PNG,"Maps\"+global.bgName+".png") //Let's make a copy of this map in the maps folder.
    loadWM=false
    loadBGs=true
}else if (global.bgName!="") and (global.wkmskName!=""){
    if (file_exists("Maps\" + global.bgName + ".png")){
        file_delete("Maps\" + global.bgName + ".png")
    }
    file_copy(target_PNG,"Maps\"+global.bgName+".png") //Let's make a copy of this map in the maps folder.
    loadWM = false
    loadBGs = true
}

//Let's begin testing.
if (loadWM==true)and(loadBGs==false){
    execute_program(chr(34)+global.gg2Directory+"\Gang Garrison 2.exe"+chr(34),"-map"+" "+global.wkmskName,false)
}else if (loadBGs==true) and (loadWM==false){
    execute_program(chr(34)+global.gg2Directory+"\Gang Garrison 2.exe"+chr(34),"-map"+" "+global.bgName,false)
}
