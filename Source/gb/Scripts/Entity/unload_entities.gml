{
    stray_entity_fix()

    switch (show_question("Are you sure you want to scrap your entities?")){
        case 0:
            //If yes was pressed, end the routine.
            with (LevelEntity){
                instance_destroy()
            }
        break;
    }

    if (global.combo = 2){
        global.madeChange = false
    }else{
        global.combo += 1
    }
    global.loadedEnt = false
}
