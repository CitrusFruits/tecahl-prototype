/*
 * Creates an instance of the given Unit, and adds the unit
 * to the global.map. Sets the unit's stats as well.
 */

var unit = argument0;           //the Unit to add
var teamNumber = argument1      //the Unit's team number
var xIndex = argument2;         //the x index on the global.map grid to place the unit
var yIndex = argument3;         //the y index on the global.map grid to place the unit
var indexOnTeam = argument4;    //the place on the team's array to put this unit 
                                    //^^(it's a stupid, but currently necessary) parameter that I'll get rid of later)

global.map[xIndex, yIndex] = unit;

//push the new unit onto the team
var newUnit = instance_create(xIndex*global.gridSize, yIndex*global.gridSize, unit);
newUnit.teamNumber = teamNumber;
newUnit.indexOnTeam = indexOnTeam;
global.team[teamNumber, indexOnTeam] = newUnit;
global.team[teamNumber, indexOnTeam].canMove = true;
//newUnit.healthPoints = 2;

return newUnit.id;
