{
    switch(argument0){
        case "loadEntities":
            load_entities()
            break;
        case "selectNewBackground":
            unload_BG()
            load_BG()
            break;
        case "selectNewWalkmask":
            unload_WM()
            load_WM()
            break;
        case "clearEntities":
            unload_entities()
            break;
        case "saveEntities":
            save_entities();
            break;
        case "showBG":
            background_visible[0] = argument1
            break;
        case "showWM":
            background_visible[1] = argument1
            break;
        case "showGrid":
            background_visible[2] = argument1
            break;
        case "snapToGrid":
            mc.enableGridSnap = argument1
            break;
        case "zoomIn":
            set_zoom_amount(1)
            break;
        case "zoomOut":
            set_zoom_amount(0)
            break;
        case "resetZoom":
            reset_zoom()
            break;
        case "compileMap":
            embed_level_data_to_png()
            break;
        case "testMap":
            test_map()
            break;
        case "mainMenu":
            switch (show_question("Are you sure you want to go to the Main Menu?")){
                case 1:
                    auto_unload_BG()
                    global.makingNewMap=false
                    room_goto_fix(MainMenuR)
                break;
            }
            break;
    }
}
