/*
 * Returns a 2d clone of global.map, but adds -1 to
 * whatever space is available.
 */
var xIndex = argument0;               //the starting x Index
var yIndex = argument1;               //the starting y Index
var range = argument2;                //the max steps away from the unit
self.ignoreCollision = argument3;     //whether or not to take collision with other objects into account
self.mapClone = 0;

//init the map
for(var i = 0; i < global.mapWidth; i++){
    for(var j = 0; j < global.mapHeight; j++){
        self.mapClone[i,j] = global.map[i,j];
    }
}

getAvailableSpacesHelper(xIndex, yIndex, range, id);

return self.mapClone;
