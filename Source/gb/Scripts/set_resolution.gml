//Anything larger than 1024*768 will be bigger than the room.
//There are quite a few here, but it needs to account for many sizes.
//Testing can be done to remove some of the un-neccesary ones.
if global.resolution==1{ //This is the default and original.
    view_wview[0]=1024
    view_wport[0]=1024
    view_hview[0]=768
    view_hport[0]=768
}else if global.resolution==2{ 
    view_hview[0]=1024
    view_hport[0]=1024
    view_hview[0]=576
    view_hport[0]=576
}else if global.resolution==3{
    view_hview[0]=1024
    view_hport[0]=1024
    view_hview[0]=600
    view_hport[0]=600
}else if global.resolution==4{
    view_hview[0]=1024
    view_hport[0]=1024
    view_hview[0]=640
    view_hport[0]=640
}else if global.resolution==5{
    view_hview[0]=1024
    view_hport[0]=1024
    view_hview[0]=800
    view_hport[0]=800
}else if global.resolution==6{
    view_hview[0]=1280
    view_hport[0]=1280
    view_hview[0]=720
    view_hport[0]=720
}else if global.resolution==7{
    view_hview[0]=1280
    view_hport[0]=1280
    view_hview[0]=768
    view_hport[0]=768
}else if global.resolution==8{
    view_hview[0]=1280
    view_hport[0]=1280
    view_hview[0]=800
    view_hport[0]=800
}else if global.resolution==9{
    view_hview[0]=1366
    view_hport[0]=1366
    view_hview[0]=768
    view_hport[0]=768
}else if global.resolution==10{
    view_hview[0]=800
    view_hport[0]=800
    view_hview[0]=600
    view_hport[0]=600
}
