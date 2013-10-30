//init the map
for(var i = 0; i < global.mapWidth; i++){
    for(var j = 0; j < global.mapHeight; j++){
        global.map[i,j] = 0;
    }
}

//set up the teams
addUnit(Unit, 1, 0, 0, 0);
addUnit(Unit, 1, 1, 0, 1);
addUnit(Unit, 1, 2, 0, 2);
addUnit(Unit, 1, 0, 1, 3);
addUnit(Unit, 1, 1, 1, 4);
addUnit(Unit, 1, 2, 1, 5);
global.teamSizes[1] = 6;

addUnit(Enemy, 2, 13, 12, 0);
addUnit(Enemy, 2, 14, 12, 1);
addUnit(Enemy, 2, 15, 12, 2);
addUnit(Enemy, 2, 13, 13, 3);
addUnit(Enemy, 2, 14, 13, 4);
addUnit(Enemy, 2, 15, 13, 5);
global.teamSizes[2] = 6;
/*global.team1[0] = instance_create(0*global.gridSize, 0*global.gridSize, Unit);
global.team1[1] = instance_create(1*global.gridSize, 0*global.gridSize, Warrior);
global.team1[2] = instance_create(2*global.gridSize, 0*global.gridSize, Warrior);
global.team1[3] = instance_create(0*global.gridSize, 1*global.gridSize, Unit);
global.team1[4] = instance_create(1*global.gridSize, 1*global.gridSize, Warrior);
global.team1[5] = instance_create(2*global.gridSize, 1*global.gridSize, Warrior);

for(var i = 0; i < array_length_1d(global.team1); i++){
    global.team1[i].teamNumber = 1;
}*/

//the non playable team
/*global.team2[0] = instance_create(12*global.gridSize, 12*global.gridSize, Enemy);
global.team2[1] = instance_create(13*global.gridSize, 12*global.gridSize, Enemy);
global.team2[2] = instance_create(14*global.gridSize, 12*global.gridSize, Enemy);
global.team2[3] = instance_create(12*global.gridSize, 13*global.gridSize, Enemy);
global.team2[4] = instance_create(13*global.gridSize, 13*global.gridSize, Enemy);
global.team2[5] = instance_create(14*global.gridSize, 13*global.gridSize, Enemy);
*/
