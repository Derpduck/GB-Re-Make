{
    if file_exists("game_errors.log") file_delete("game_errors.log")
    global.gbFont = font_add_sprite(gbFontS,ord("!"),false,0)
    draw_set_font(global.gbFont)

    
    global.gamemode=0
    global.BG=""
    global.WM=""
    global.loadedBG=false
    global.loadedWM=false
    global.loadedEnt=false
    global.wkmskName=""
    global.bgName=""
    global.caughtError=0
    global.combo=0
    global.madeChange=false
    global.erasedOnce=true
    global.erasedOnce2=true
    global.notOnTools=true
    global.CustomMapCollisionSprite=-1
    global.loadedC=false
    global.tool=""
    global.width=-1
    global.makingNewMap=false
    global.defaults=true
    global.quickSave=true
    global.dragging=false
    global.enableGridSnap=true
    global.zoom2=1
    global.zoomJustChanged=false
    global.displayZoom=1
    global.limitView = true
    
    //Zoom bar things, unused.
    global.zoomBarMinYPos=7
    global.zoomBarStartYPos=25
    global.zoomBarMaxYPos=42
    
    global.currentCap=room_caption
    
    ini_open("gb.ini")
    //Read
    global.menubg = ini_read_real("Settings","MenuBackGround",1)
    global.fullscreen = ini_read_real("Settings","Fullscreen",0)
    global.specialE = ini_read_real("Settings","GraphicsEffects",1)//Toolbar transparency and what-not.
    global.width = ini_read_real("Settings","ToolbarWidth",14)
    global.resolution = ini_read_real("Settings","Resolution",0)
    global.gg2Directory = ini_read_string("Settings","GG2Directory","")
    global.limitView = ini_read_real("Settings","LimitView",0)
    
    //Write
    ini_write_real("Settings","MenuBackGround",global.menubg)
    ini_write_real("Settings","Fullscreen",global.fullscreen)
    ini_write_real("Settings","GraphicsEffects",global.specialE)
    ini_write_real("Settings","ToolbarWidth",global.width)
    ini_write_real("Settings","Resolution",global.resolution)
    ini_write_string("Settings","GG2Directory",global.gg2Directory)
    ini_write_real("Settings","LimitView",global.limitView)
    ini_close()
    
    //Action
    window_set_fullscreen(global.fullscreen)
    instance_create(0,0,SSControl)
}
