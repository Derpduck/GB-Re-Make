{
    create_button(mainMenu)
    create_button(zoomIn)
    create_button(zoomOut)
    create_button(resetZoom)
    create_button(selectNewBackground)
    create_button(selectNewWalkmask)
    create_button(compileMap)
    create_button(saveEntities)
    create_button(loadEntities)
    create_button(clearEntities)
    create_toggle_button(showBG, true)
    create_toggle_button(showWM, false)
    create_toggle_button(snapToGrid, false)
    create_toggle_button(showGrid, false)
    create_button(testMap)
    create_tool_button(redspawn)
    create_tool_button(redspawn1)
    create_tool_button(redspawn2)
    create_tool_button(redspawn3)
    create_tool_button(redspawn4)
    create_tool_button(bluespawn)
    create_tool_button(bluespawn1)
    create_tool_button(bluespawn2)
    create_tool_button(bluespawn3)
    create_tool_button(bluespawn4)
    create_tool_button(medCabinet)
    create_tool_button(redteamgate)
    create_tool_button(redteamgate2)
    create_tool_button(blueteamgate)
    create_tool_button(blueteamgate2)
    create_tool_button(spawnroom)
    create_tool_button(bulletwall)
    create_tool_button(bulletwall_horizontal)
    create_tool_button(playerwall)
    create_tool_button(playerwall_horizontal)
    create_tool_button(killbox)
    create_tool_button(fragbox)
    create_tool_button(pitfall)
    create_tool_button(MoveBoxUp)
    create_tool_button(MoveBoxDown)
    create_tool_button(MoveBoxLeft)
    create_tool_button(MoveBoxRight)
    create_tool_button(leftdoor)
    create_tool_button(rightdoor)
    
    if global.gamemode==2{
        create_tool_button(redintel)
        create_tool_button(blueintel)
        create_tool_button(redintelgate)
        create_tool_button(redintelgate2)
        create_tool_button(blueintelgate)
        create_tool_button(blueintelgate2)
    }else if global.gamemode==3{
        create_tool_button(controlPoint1)
        create_tool_button(controlPoint2)
        create_tool_button(controlPoint3)
        create_tool_button(controlPoint4)
        create_tool_button(controlPoint5)
        create_tool_button(CapturePoint)
        create_tool_button(SetupGate)
        create_tool_button(NextAreaO)
    }else if global.gamemode==4{
        create_tool_button(ArenaControlPoint)
        create_tool_button(CapturePoint)
        create_tool_button(SetupGate)
    }else if global.gamemode==5{
        create_tool_button(GeneratorRed)
        create_tool_button(GeneratorBlue)
    }else if global.gamemode==6{
        create_tool_button(KothControlPoint)
        create_tool_button(CapturePoint)
        create_tool_button(SetupGate)
    }else if global.gamemode==7{
        create_tool_button(KothRedControlPoint)
        create_tool_button(KothBlueControlPoint)
        create_tool_button(CapturePoint)
        create_tool_button(SetupGate)
    }else{
        create_tool_button(redintel)
        create_tool_button(blueintel)
        create_tool_button(redintelgate)
        create_tool_button(redintelgate2)
        create_tool_button(blueintelgate)
        create_tool_button(blueintelgate2)
        create_tool_button(controlPoint1)
        create_tool_button(controlPoint2)
        create_tool_button(controlPoint3)
        create_tool_button(controlPoint4)
        create_tool_button(controlPoint5)
        create_tool_button(NextAreaO)
        create_tool_button(ArenaControlPoint)
        create_tool_button(KothControlPoint)
        create_tool_button(KothRedControlPoint)
        create_tool_button(KothBlueControlPoint)
        create_tool_button(CapturePoint)
        create_tool_button(SetupGate)
        create_tool_button(GeneratorRed)
        create_tool_button(GeneratorBlue)
    }
    
    _buttony = 0
    _buttonx = 0
    _toolbarWidth = global.width

    with(Button){
        relative_y = other._buttony
        relative_x = other._buttonx
        other._buttonx += 50
        if(other._buttonx >= 50 * other._toolbarWidth){
            other._buttonx = 0
            other._buttony += 50
        }
    }
}
