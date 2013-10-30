var xPos = argument0;
var yPos = argument1;
var range = argument2;
var parent = argument3;

if(range == 0)
    return 0;
if(xPos-1 >= 0){
    if(parent.mapClone[xPos-1, yPos] == 0){
        parent.mapClone[xPos-1, yPos] = 2;
        getAvailableSpacesHelper(xPos-1, yPos, range-1, parent);
}
}
if(yPos-1 >= 0){
    if(parent.mapClone[xPos, yPos-1] == 0){
        parent.mapClone[xPos, yPos-1] = 2;
        getAvailableSpacesHelper(xPos, yPos-1, range-1, parent);
    }
}
if(xPos+1 < global.mapWidth && parent.mapClone[xPos+1, yPos] == 0){
    parent.mapClone[xPos+1, yPos] = 2;
    getAvailableSpacesHelper(xPos+1, yPos, range-1, parent);
}
if(yPos+1 <global.mapHeight && parent.mapClone[xPos, yPos+1] == 0){
    parent.mapClone[xPos, yPos+1] = 2;
    getAvailableSpacesHelper(xPos, yPos+1, range-1, parent);
}