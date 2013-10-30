var xPos = argument0;
var yPos = argument1;
var range = argument2;
self.mapClone = 0;

//init the map
for(var i = 0; i < global.mapWidth; i++){
    for(var j = 0; j < global.mapHeight; j++){
        self.mapClone[i,j] = global.map[i,j];
    }
}

getAvailableSpacesHelper(xPos, yPos, range, id);

for(var i = 0; i < global.mapWidth; i++){
    for(var j = 0; j < global.mapHeight; j++){
        if(self.mapClone[i, j] == 2){
            instance_create(i*global.gridSize, j*global.gridSize, BlueIndicator);
        }
    }
}

return self.mapClone;
