//Incase you can't reach the buttons.

if global.zoom2>1{
    view_hview/=global.zoom2
    view_wview/=global.zoom2
}else if global.zoom2<1{
    view_hview/=global.zoom2
    view_wview/=global.zoom2
}
global.zoom2=1
global.displayZoom=1

mc.zoomDisplayAlpha=1
global.zoomJustChanged=true
