/*
 * Marks all available spaces with the given indicator type;
 */

var availableSpaces = argument0;    //a 2d array retrieved from getAvailableSpaces
var indicatorType = argument1;      //an Indicator type
for(var i = 0; i < global.mapWidth; i++){
    for(var j = 0; j < global.mapHeight; j++){
        if(availableSpaces[i, j] == -1){
            instance_create(i*global.gridSize, j*global.gridSize, indicatorType);
        }
    }
}
