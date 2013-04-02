//argument0 = zooming in or out

var zoomType;
zoomType=argument0

//Zooming out, making the view larger.
if zoomType=0{
    view_hview*=2
    view_wview*=2
    global.zoom2*=2
    global.displayZoom/=2 //Because zooming in does not half your zoom.
}else if zoomType=1{ //Zooming in, make view smaller
    view_hview/=2
    view_wview/=2
    global.zoom2/=2
    global.displayZoom*=2 //Because zooming out does not double your zoom.
}

mc.zoomDisplayAlpha=1
global.zoomJustChanged=true
