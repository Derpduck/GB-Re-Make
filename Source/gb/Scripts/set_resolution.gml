//4:3
//1024*768

//16:9
//1024*576

//Being in 16:9 mode will mean you will have an ugly black bar that the bottom
//so you can't see as much and cut off the menu BG.
if global.resolution==1{
    view_hview[0]=768
    view_hport[0]=768
}else{
    view_hview[0]=576
    view_hport[0]=576
}
