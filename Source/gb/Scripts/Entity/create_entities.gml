/*
argument0 - x-coordinate
argument1 - y-coordinate
argument2 - tool name
*/

{
    new_ent_x = argument0
    new_ent_y = argument1
    if(mc.enableGridSnap = true){
        new_ent_x = round(round(new_ent_x / 6) * 6)
        new_ent_y = round(round(new_ent_y / 6) * 6)
    }
    if (mc.currentTool != "moveTool"){
        with(LevelEntity){
            if(x = other.new_ent_x and y = other.new_ent_y) instance_destroy()
        }
    }
    new_ent = instance_create(new_ent_x, new_ent_y, LevelEntity)
    new_ent.type = argument2
    switch(argument2){
        case "redintel":
            new_ent.sprite_index = intelRedE
            break;
        case "blueintel":
            new_ent.sprite_index = intelBlueE
            break;
        case "redintelgate2":
            new_ent.sprite_index = intelDoorHorzRedE
            break;
        case "redintelgate":
            new_ent.sprite_index = intelDoorVertRedE
            break;
        case "blueintelgate2":
            new_ent.sprite_index = intelDoorHorzBlueE
            break;
        case "blueintelgate":
            new_ent.sprite_index = intelDoorVertBlueE
            break;
        case "redteamgate2":
            new_ent.sprite_index = spawnDoorHorzRedE
            break;
        case "redteamgate":
            new_ent.sprite_index = spawnDoorVertRedE
            break;
        case "blueteamgate2":
            new_ent.sprite_index = spawnDoorHorzBlueE
            break;
        case "blueteamgate":
            new_ent.sprite_index = spawnDoorVertBlueE
            break;
        case "killbox":
            new_ent.sprite_index = killBoxE
            break;
        case "pitfall":
            new_ent.sprite_index = pitFallE
            break;
        case "spawnroom":
            new_ent.sprite_index = spawnRoomE
            break;
        case "medCabinet":
            new_ent.sprite_index = medCabinetE
            break;
        case "fragbox":
            new_ent.sprite_index = fragBoxE
            break;
        case "playerwall_horizontal":
            new_ent.sprite_index = playerWallHorzE
            break;
        case "playerwall":
            new_ent.sprite_index = playerWallVertE
            break;
        case "bulletwall_horizontal":
            new_ent.sprite_index = bulletWallHorzE
            break;
        case "bulletwall":
            new_ent.sprite_index = bulletWallVertE
            break;
        case "controlPoint1":
            new_ent.sprite_index = controlPoint1E
            break;
        case "controlPoint2":
            new_ent.sprite_index = controlPoint2E
            break;
        case "controlPoint3":
            new_ent.sprite_index = controlPoint3E
            break;
        case "controlPoint4":
            new_ent.sprite_index = controlPoint4E
            break;
        case "controlPoint5":
            new_ent.sprite_index = controlPoint5E
            break;
        case "NextAreaO":
            new_ent.sprite_index = nextAreaE
            break;
        case "CapturePoint":
            new_ent.sprite_index = captureZoneE
            break;
        case "SetupGate":
            new_ent.sprite_index = setupGateE
            break;
        case "ArenaControlPoint":
            new_ent.sprite_index = arenaControlPointE
            break;
        case "GeneratorRed":
            new_ent.sprite_index = generatorRedE
            break;
        case "GeneratorBlue":
            new_ent.sprite_index = generatorBlueE
            break; 
        case "redspawn":
            new_ent.sprite_index = spawner1RedE
            break;
        case "redspawn1":
            new_ent.sprite_index = spawner2RedE
            break;
        case "redspawn2":
            new_ent.sprite_index = spawner3RedE
            break;
        case "redspawn3":
            new_ent.sprite_index = spawner4RedE
            break;
        case "redspawn4":
            new_ent.sprite_index = spawner5RedE
            break;
        case "bluespawn":
            new_ent.sprite_index = spawner1BlueE
            break;
        case "bluespawn1":
            new_ent.sprite_index = spawner2BlueE
            break;
        case "bluespawn2":
            new_ent.sprite_index = spawner3BlueE
            break;
        case "bluespawn3":
            new_ent.sprite_index = spawner4BlueE
            break;
        case "bluespawn4":
            new_ent.sprite_index = spawner5BlueE
            break;
        case "KothControlPoint":
            new_ent.sprite_index = kothControlPointE
            break;
        case "KothRedControlPoint":
            new_ent.sprite_index = dkothControlPointRedE
            break;
        case "KothBlueControlPoint":
            new_ent.sprite_index = dkothControlPointBlueE
            break;
        case "MoveBoxUp":
            new_ent.sprite_index = moveBoxUpE
            break;
        case "MoveBoxDown":
            new_ent.sprite_index = moveBoxDownE
            break;
        case "MoveBoxLeft":
            new_ent.sprite_index = moveBoxLeftE
            break;
        case "MoveBoxRight":
            new_ent.sprite_index = moveBoxRightE
            break;
        case "leftdoor":
            new_ent.sprite_index = leftDoorE
            break;
        case "rightdoor":
            new_ent.sprite_index = rightDoorE
            break;
        default:
            new_ent.sprite_index = noEntE
            break;
    }
}
