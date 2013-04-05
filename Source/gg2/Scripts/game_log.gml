/* Log/Rules:
Garrison Builder Re-Make, by Derpduck
Started on 12th April 2012

This will be made on Game Maker 8. Until a better system is implemented into GG2 the same map compiling and decompiling
scripts will be used, with some adjustments of course.

Unfortunatly, because of the way GG2 read entities from map data, the naming within the code will have to be kept the same, or
it would make loading old maps impossible, if it is changed in GG2 (CustomMapCreateEntitiesFromEntityData script) it would make
EVERY old map incompatable with the game.

Sprite names should NOT begin with a capital letter but every separate word that follows it should start with a captial letter.
E.G. "dragCursorS"
Every sprite, except the ones being used for the placed entities and the GUI, should be followed by a capital S.
The ones being used for entities should be followed by a capital E.
Backgrounds/Rooms should follow this, they should have a suffix: B and R respectivly.
Object names should start with a capital letter for every word.
Words in script names should be separated by underscores and should not have capitals in them.
Global and non-global variable names should follow the same capitalisation rules as sprites but without the suffix.

Keep the code style consitent: put { and } on the same line as the if or else statement E.G.
if variable==1{
    code
}else{
    code
}

It doesn't really matter too much but it would be preferable to not put spaces inbetween things like else and the { and } like
the example above.
When indenting use 4 spaces.
Avoid putting semi-colons after a line of code unless it is after one of the following: var, break, return, exit, continue,
do, while.
Do not use ||/&&, use or/and.

Use the provided bases for sprites, if a base does not exist for the sprite you are making, make one, and make sure it follows the
colour scheme.
GUI sprites will be 50x50 and should use "GUIButtonBaseS" as the base.
The font on sprites should be the Gang Garrison Font in bold, white and size 10. If it's on a button or something that changes to
a darker colour in certain situations the font colour should be change to black. Red and blue can be used to make team oriented
things stand out.
The menu back-ground uses font size 30.
Entity sprites that require text should use black unless it is unclear or team oriented, CP based entities use green text to show
what type of CP they are, use the SAME green for anything of a similar purpose.

The previous area entity isn't propely implemented into previous version of GB and is not used on any maps; it will not be added
here, it can easily be added anyway.

When using a comment block (/*) put the open and closing parts on a separate line.

tl;dr
Try to keep everything mostly consistent.

Since the multi-stage CP mode has been merged with the other one, some changes can be made to things concerning the CP game-mode.
Maps can now no longer be downloaded from a URL within Garrison Builder.
For now the extra tabs will not be used.
Loading image font is Segoe UI, size 9, semibold.
*/
