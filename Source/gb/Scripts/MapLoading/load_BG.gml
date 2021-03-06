{
    stray_entity_fix()

    var new_BG, new_BGBG;
    new_BG = get_open_filename("PNG|*.png","")
    if(new_BG == "") break;
    global.rawBG = new_BG
    global.BG = chr(34) + new_BG + chr(34); //We add the quotes, just in case the file/the directory it is located in has spaces in it.
    background_replace(LevelBGB,new_BG,false,false)
    room_set_background(EditorR,0,true,false,LevelBGB,0,0,false,false,0,0,1)
    background_xscale[0] = 6
    background_yscale[0] = 6

    global.madeChange = true
    global.erasedOnce = false
    global.loadedBG = true
    global.currentCap = global.rawBG

    //This next block of code attempts to grab the true base name without the extension and directory.
    while (string_count("\", global.currentCap) != 0){ //This part grabs the base name without the directory
        global.currentCap = string_delete(global.currentCap, 1, 1)
    }

    fileNameCh = string_pos(".png", global.currentCap)
    if (fileNameCh == 0){
        fileNameCh = string_pos(".PNG", global.currentCap)
    }
    fileLen = string_length(global.currentCap)
    global.currentCap = string_copy(global.currentCap, 0, fileLen - (fileLen - fileNameCh) - 1)
    global.bgName = global.currentCap
    if (global.defaults == true){
        global.currentCap+=" - BG"
    }else if (global.defaults == false){
        global.currentCap += " - BG & WM"
    }
    room_caption = global.currentCap
}
