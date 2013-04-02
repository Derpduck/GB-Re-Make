map_entity_check()
  
var target_PNG, c, loadWM, loadBGs;
  
c = 0
if (global.quickSave == 0){
    target_PNG = get_open_filename("PNG|*.png","")
    if (target_PNG == ""){
        break;
    }
}else{
    target_PNG = global.rawBG
    if (target_PNG == ""){
        target_PNG = global.rawWM
    }
    if (target_PNG == ""){
        show_message("Autosave Failed.")
        break;
    }
}

//If we haven't done so already, compress the walkmask to a string.
mc.compressedWalkmaskString = compress_walkmask_to_string()

//Get entity data and compressed walkmask data, and put them together.
var leveldata;
leveldata = write_entities_to_string() + chr(10) + mc.compressedWalkmaskString

GG2DLL_embed_PNG_leveldata(target_PNG, leveldata)
