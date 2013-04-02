if (global.erasedOnce == false){
stray_entity_fix()

    switch (show_question("Are you sure you want to unload the back-ground?")){
        case 0:
            exit; //If yes was pressed, end the routine .
            break;
    }
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
}
