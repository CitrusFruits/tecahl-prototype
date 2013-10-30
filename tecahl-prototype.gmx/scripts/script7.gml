x = argument0;
y = argument1;
var range = argument2;
var mapClone;

//init the map
for(var i = 0; i < global.mapWidth; i++){
    for(var j = 0; j < global.mapHeight; j++){
        mapClone[i,j] = global.map[i,j];
    }
}

getAvailableSpacesHelper(x, y, range, mapClone);

for(var i = 0; i < mapClone; i++){
    for(var j = 0; j < mapClone; j++){
        if(mapClone[i, j] == 1){
            instance_create(x*global.gridSize, y*global.gridSize, BlueIndicator);
        }
    }
}
