var unit = argument0;
var xIndex = argument1;
var yIndex = argument2;

//update the map
var oldIndexX = floor(x/global.gridSize);
var oldIndexY = floor(y/global.gridSize);

//set it so there is nothing at the old spot
global.map[oldIndexX, oldIndexY] = 0;

global.map[xIndex, yIndex] = unit;
   
//move
argument0.targetX = argument1;
argument0.targetY = argument2;

//set it so the unit can no longer move
argument0.canMove = false;
