var xPos = argument0;
var yPos = argument1;
var range = argument2;
self.ignoreCollision = argument3;
self.mapClone = 0;

//init the map
for(var i = 0; i < global.mapWidth; i++){
    for(var j = 0; j < global.mapHeight; j++){
        self.mapClone[i,j] = global.map[i,j];
    }
}

getAvailableSpacesHelper(xPos, yPos, range, id);

return self.mapClone;
