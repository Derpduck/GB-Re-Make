/*
Makes it so that, for a frame afterwards we can't place entities.
For some reason, if this isn't done, after clicking OK in a file dialog an entity will get placed in the room.
*/
{
    mc.addingEntitiesAllowed = false
    mc.alarm[0] = 1
}
