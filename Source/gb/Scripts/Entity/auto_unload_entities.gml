//This is for when you select new map, because of the way it works the WM, BG and entities stay the same for when you go
//back in the room.
{
    stray_entity_fix()
    
    with (LevelEntity){
        instance_destroy()
    }

    if (global.combo = 2){
        global.madeChange = false
    }else{
        global.combo += 1
    }
    global.loadedEnt = false
}
