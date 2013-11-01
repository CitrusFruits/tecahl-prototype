/*
 * A recursive helper function for getAvailableSpaces. Wish I
 * could make it private. Don't call this one.
 */

var xPos = argument0;
var yPos = argument1;
var range = argument2;
var parent = argument3;

if(range == 0)
    return 0;
if(xPos-1 >= 0){
    if(parent.mapClone[xPos-1, yPos] == 0 || id.ignoreCollision){
        parent.mapClone[xPos-1, yPos] = -1;
        getAvailableSpacesHelper(xPos-1, yPos, range-1, parent);
    }
}
if(yPos-1 >= 0){
    if(parent.mapClone[xPos, yPos-1] == 0 || id.ignoreCollision){
        parent.mapClone[xPos, yPos-1] = -1;
        getAvailableSpacesHelper(xPos, yPos-1, range-1, parent);
    }
}
if(xPos+1 < global.mapWidth && (parent.mapClone[xPos+1, yPos] == 0 || id.ignoreCollision)){
    parent.mapClone[xPos+1, yPos] = -1;
    getAvailableSpacesHelper(xPos+1, yPos, range-1, parent);
}
if(yPos+1 <global.mapHeight && (parent.mapClone[xPos, yPos+1] == 0 || id.ignoreCollision)){
    parent.mapClone[xPos, yPos+1] = -1;
    getAvailableSpacesHelper(xPos, yPos+1, range-1, parent);
}
