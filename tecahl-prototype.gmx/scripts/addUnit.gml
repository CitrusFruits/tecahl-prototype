var unit = argument0;
var teamNumber = argument1
var xIndex = argument2;
var yIndex = argument3;
var indexOnTeam = argument4;

global.map[xIndex, yIndex] = unit;

//push the new unit onto the team
var newUnit = instance_create(xIndex*global.gridSize, yIndex*global.gridSize, unit);
newUnit.teamNumber = teamNumber;
global.team[teamNumber, indexOnTeam] = newUnit;
global.team[teamNumber, indexOnTeam].canMove = true;
