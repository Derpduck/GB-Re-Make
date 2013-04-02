//This is for when you select new map, because of the way it works the WM, BG and entities stay the same for when you go
//back in the room.
if (global.erasedOnce2 == false){
    stray_entity_fix()

    instance_create(0,0,whiteWM)

    global.WM = ""
    background_xscale[0] = 6
    background_yscale[0] = 6

    if (global.combo == 2){
        global.madeChange = false
    }else{
        global.combo+=1
    }

    global.erasedOnce2 = true
    global.loadedWM = false

    if (global.loadedBG == false){
        global.currentCap = "Garrison Builder - Editor"
        room_caption = global.currentCap
    }else if (global.loadedBG == true){
        global.currentCap = global.bgName + " - BG";
        room_caption = global.currentCap;
    }
    global.wkmskName = ""
    
    auto_unload_entities()
}
