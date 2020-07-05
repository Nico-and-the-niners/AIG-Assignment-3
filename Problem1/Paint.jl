WaterBased = [string("Interior"),string("Livingroom"), string("Bathroom"), string("Bedroom")]
OilBased = [string("Exterior"), string("Patio")]

############################ CONTSTRAINTS ######################################

# WaterBased !== Exterior
# WaterBased !== Patio
# WaterBased !== WallTile
# WaterBased ! == FloorTiles

# OilBased !== Interior
# OilBased !== Livingroom
# OilBased !== Bathroom
# OilBased !== Bedroom
# OilBased !== WallTile
# OilBased !== FloorTile
