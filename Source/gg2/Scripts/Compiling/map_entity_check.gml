stray_entity_fix()

//Preliminary check to see if the user placed the correct entities or the correct combination of entities.
var capsExist, cap1Exists, cap2Exists, cap3Exists, cap4Exists, cap5Exists, blueIntelExists, redIntelExists, sufficientCapMats, arenaCPExists, genBlueExists, genRedExists, kothCPExists, dkothCPRedExists, dkothCPBlueExists, multiStage;
blueIntelExists = false
redIntelExists = false
sufficientCapMats = false
cap1Exists = false
cap2Exists = false
cap3Exists = false
cap4Exists = false
cap5Exists = false
capsExist = false
multiStage = false
arenaCPExists = false
genRedExists = false
genBlueExists = false
kothCPExists = false
dkothCPRedExists = false
dkothCPBlueExists = false
with (LevelEntity){
    //CTF
    //For some reason we don't check for multiple intels.
    if (type == "redintel"){
        redIntelExists = true
    }else if (type == "blueintel"){
        blueIntelExists = true
    //Arena
    }else if (type == "ArenaControlPoint"){
        if instance_number(ArenaControlPoint)>1{
            show_message("Only one Arena Control Point is possible.")
            exit;
        }
        arenaCPExists = true
    //KoTH
    }else if (type == "KothControlPoint"){
        if instance_number(KothControlPoint)>1{
            show_message("Only one KoTH Control Point is possible.")
            exit;
        }
        kothCPExists = true
    //DKoTH
    }else if (type == "KothRedControlPoint"){
        if instance_number(KothRedControlPoint)>1{
            show_message("Only one DKoTH Control Point for each team is possible.")
            exit;
        }
        dkothCPRedExists = true
    }else if (type == "KothBlueControlPoint"){
        if instance_number(KothBlueControlPoint)>1{
            show_message("Only one DKoTH Control Point for each team is possible.")
            exit;
        }
        dkothCPBlueExists = true
    //Generator
    }else if (type == "GeneratorRed"){
        GenRedExists = true
        if instance_number(GeneratorRed)>1{
            show_message("Only one Generator per team.")
            exit; 
        }
    }else if (type == "GeneratorBlue"){
        GenBlueExists = true
        if instance_number(GeneratorBlue)>1{
            show_message("Only one Generator per team.")
            exit;
        }
    //CP
    }else if (type == "CapturePoint"){
        sufficientCapMats = true
    }else if (type == "NextAreaO"){
        multiStage = true
    }else if (global.gamemode == 3){
        if (type == "controlPoint1"){
            if (cap1Exists == true) and !(multiStage){
                show_message("Please do not place more than one instance of a unique control point.")
                exit;
            }else{
                cap1Exists = true
            }
        }else if (type == "controlPoint2"){
            if (cap2Exists == true) and !(multiStage){
                show_message("Please do not place more than one instance of a unique control point.")
                exit;
            }else{
                cap2Exists = true
            } 
        }else if (type == "controlPoint3"){
            if (cap3Exists == true) and !(multiStage){
                show_message("Please do not place more than one instance of a unique control point.")
                exit;
            }else{
                cap3Exists = true
            }
        }else if (type == "controlPoint4") and !(multiStage){
            if (cap4Exists == true){
                show_message("Please do not place more than one instance of a unique control point.")
                exit;
            }else{
                cap4Exists = true
            }
        }else if (type == "controlPoint5") and !(multiStage){
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
