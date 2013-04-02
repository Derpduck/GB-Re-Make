stray_entity_fix()

//Preliminary check to see if the user placed the correct entities or the correct combination of entities.
var capsExist, cap1Exists, cap2Exists, cap3Exists, cap4Exists, cap5Exists, blueIntelExists, redIntelExists, sufficientCapMats, arenaCPExists, genBlueExists, genRedExists, kothCPExists, dkothCPRedExists, dkothCPBlueExists;
blueIntelExists = false
redIntelExists = false
sufficientCapMats = false
cap1Exists = false
cap2Exists = false
cap3Exists = false
cap4Exists = false
cap5Exists = false
capsExists = false
arenaCPExists = false
genRedExists = false
genBlueExists = false
kothCPExists = false
dkothCPRedExists = false
dkothCPBlueExists = false
with (LevelEntity){
    //CTF
    //For some reason we don't check for multiple intels.
    if (type == "intelRed"){
        redIntelExists = true
    }else if (type == "intelBlue"){
        blueIntelExists = true
    //Arena
    }else if (type == "arenaCP"){
        if instance_number(arenaCP)>1{
            show_message("Only one Arena Control Point is possible.")
            exit;
        }
        arenaCPExists = true
    //KoTH
    }else if (type == "kothCP"){
        if instance_number(kothCP)>1{
            show_message("Only one KoTH Control Point is possible.")
            exit;
        }
        KothCPExists = true
    //DKoTH
    }else if (type == "dkothCPRed"){
        if instance_number(dkothCPRed)>1{
            show_message("Only one DKoTH Control Point for each team is possible.")
            exit;
        }
        DKothCPRedExists = true
    }else if (type == "dkothCPBlue"){
        if instance_number(dkothCPBlue)>1{
            show_message("Only one DKoTH Control Point for each team is possible.")
            exit;
        }
        DKothCPBlueExists = true
    //Generator
    }else if (type == "generatorRed"){
        GenRedExists = true
        if instance_number(generatorRed)>1{
            show_message("Only one Generator per team.")
            exit; 
        }
    }else if (type == "generatorBlue"){
        GenBlueExists = true
        if instance_number(generatorBlue)>1{
            show_message("Only one Generator per team.")
            exit;
        }
    //CP
    }else if (type == "captureZone"){
        sufficientCapMats = true
    }else if (global.gamemode == 3) {
        if (type == "controlPoint1"){
            if (cap1Exists == true){
                show_message("Please do not place more than one instance of a unique control point.")
                exit;
            }else{
                cap1Exists = true
            }
        }else if (type == "controlPoint2"){
            if (cap2Exists == true){
                show_message("Please do not place more than one instance of a unique control point.")
                exit;
            }else{
                cap2Exists = true
            } 
        }else if (type == "controlPoint3"){
            if (cap3Exists == true){
                show_message("Please do not place more than one instance of a unique control point.")
                exit;
            }else{
                cap3Exists = true
            }
        }else if (type == "controlPoint4"){
            if (cap4Exists == true){
                show_message("Please do not place more than one instance of a unique control point.")
                exit;
            }else{
                cap4Exists = true
            }
        }else if (type == "controlPoint5"){
            if (cap5Exists == true){
                show_message("Please do not place more than one instance of a unique control point.")
                exit
            }else{
                cap5Exists = true
            }
        }
    }
}

if (cap1Exists == true or cap2Exists == true or cap3Exists == true or cap4Exists == true or cap5Exists == true){
    capsExist = true
}
//Checking the entities based on the game-mode.
if global.gamemode == 2{
    if (((redIntelExists == true) and (blueIntelExists == false)) or ((redIntelExists == false) and (blueIntelExists == true)) or ((redIntelExists == false) and (blueIntelExists == false))){
        show_message("If you are making a traditional CTF map, you must place both the Red intelligence and the Blue intelligence somewhere on the map.")
        exit;
    }
}else if global.gamemode == 3{
    if (capsExist == true and sufficientCapMats == false or capsExist == false and sufficientCapMats == true){
        show_message("Please make sure you've placed all the Capture Points AND Capture Zones.")
        exit;
    }
}else if global.gamemode == 4{
    if (arenaCPExists == false or sufficientCapMats == false){
        show_message("Please make sure you've placed the Arena Capture Point and the necessary capture zones.")
        exit;
    }
}else if global.gamemode == 5{
    if (genRedExists = false and genBlueExists = true) or (genRedExists = true and genBlueExists= false){
        show_message("For generator maps you need both generators.")
        exit;
    }
}else if global.gamemode == 6{
    if (kothCPExists == false or sufficientCapMats == false){
        show_message("Please make sure you've placed the KoTH Capture Point and the necessary Capture Zones.")
        exit;
    }
}else if global.gamemode == 7{
    if (dkothCPRedExists == false and dkothCPBlueExists == true) or (dkothCPRedExists == true and dkothCPBlueExists == false){
        show_message("Please make sure you've placed the DKoTH Capture Point and the necessary Capture Zones.")
        exit;
    }
}
