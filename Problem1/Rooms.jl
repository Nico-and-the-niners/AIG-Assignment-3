Livingroom = [string("Interior"), string("WaterBased"), string("FloorTile")]
Bathroom = [string("Interior"), string("WaterBased"), string("WallTile"), string("FloorTile")]
Bedroom = [string("Interior"), string("WaterBased"), string("FloorTile")]
Patio = [string("Exterior"), string("OilBased"), string("WallTile"), string("FloorTile")]

############################ CONTSTRAINTS ######################################

# Livingroom !== OilBased
# LivingRoom !== WallTile

# Bathroom !== Exterior
# Bathroom !== OilBased

# Bedroom !== Exterior
# Bedroom !== OilBased
# Bedroom !== WallTile

# Patio !== Interior
# Patio !== WaterBased
