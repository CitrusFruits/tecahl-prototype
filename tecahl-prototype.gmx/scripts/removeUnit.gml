/*
 * Destroys the given unit, and all indicators. Removes the unit
 * from the global.map grid. This is the only way a Unit should
 * be removed from play.
 */

/*
 * argument0: the given Unit
 */
 
with(argument0){
    global.team[self.teamNumber, self.indexOnTeam] = 0;
    global.map[floor(self.x/global.gridSize), floor(self.y/global.gridSize)] = 0;
    instance_destroy();
}
with(Indicator){
    instance_destroy();
}
