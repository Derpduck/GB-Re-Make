//This is for when you select main menu, because of the way it works the WM, BG and entities stay
//when you go back in the room.
stray_entity_fix()
if (global.erasedOnce == false){
    instance_create(0,0,whiteBG)

    global.BG = ""
    background_xscale[0] = 6
    background_yscale[0] = 6

    if (global.combo == 2){
        global.madeChange = false
    }else{
        global.combo+=1
    }

    global.erasedOnce = true
    global.loadedBG = false

    if (global.loadedWM == false){
        global.currentCap = "Garrison Builder - Editor"
        room_caption = global.currentCap
    }else if (global.loadedWM == true){
        global.currentCap = global.wkmskName + " - WM"
        room_caption = global.currentCap
    }
    global.bgName = ""

    auto_unload_WM()
}
