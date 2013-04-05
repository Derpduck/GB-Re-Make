var ent_filename, ent_file, ent_name, ent_x, ent_y, temp;
ent_filename = program_directory + "\Decompiled\Entities\" + global.map + ".ent"
if(ent_filename == "") break;
with(LevelEntity){
    instance_destroy()
}
ent_file = file_text_open_read(ent_filename)
  
//Validity check - the first line should be "{ENTITIES}".
temp = file_text_read_string(ent_file)
file_text_readln(ent_file)
if(temp != "{ENTITIES}"){
    show_message("Error: Invalid entity data")
    break;
}

while(!file_text_eof(ent_file)){
    ent_name = file_text_read_string(ent_file)
    file_text_readln(ent_file)

    //Check for end of entities.
if(ent_name == "{END ENTITIES}") break;

    ent_x = file_text_read_string(ent_file)
    file_text_readln(ent_file)
    ent_y = file_text_read_string(ent_file)
    file_text_readln(ent_file)

//Create the entity.
    create_entities(real(ent_x), real(ent_y), ent_name)
}
file_text_close(ent_file)

global.loadedEnt = true
