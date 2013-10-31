with(argument0){
    global.team[self.teamNumber, self.indexOnTeam] = 0;
    global.map[floor(self.x/global.gridSize), floor(self.y/global.gridSize)] = 0;
    instance_destroy();
}
with(Indicator){
    instance_destroy();
}
