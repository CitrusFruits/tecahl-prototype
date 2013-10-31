var availableSpaces = argument0;
var indicatorType = argument1;
for(var i = 0; i < global.mapWidth; i++){
    for(var j = 0; j < global.mapHeight; j++){
        if(availableSpaces[i, j] == -1){
            instance_create(i*global.gridSize, j*global.gridSize, indicatorType);
        }
    }
}
