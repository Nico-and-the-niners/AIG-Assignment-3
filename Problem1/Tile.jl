WallTile = [string("Interior"), string("Exterior"), string("Bathroom"), string("Patio")]
FloorTile = [string("Interior"), string("Exterior"), string("Livingroom"), string("Bathroom"), string("Bedroom"), string("Patio")]

############################ CONTSTRAINTS ######################################

# WallTile !== Livingroom
# WallTile !== Bedroom
# WallTile !== WaterBased
# WallTile !== OilBased

# FloorTile !== WaterBased
# FloorTile !== OilBased
