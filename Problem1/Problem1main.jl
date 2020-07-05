include("House.jl")
include("Rooms.jl")
include("Paint.jl")
include("Tile.jl")

# Displays domains as a list
using TerminalMenus

# Declaring attributes within the network
House = [string("Interior"), string("Exterior")]
Rooms = [string("Livingroom"), string("Bathroom"), string("Bedroom"), string("Patio")]
Paint = [string("WaterBased"), string("OilBased")]
Tile = [string("WallTile"), string("FloorTile")]

################################ MAIN MENU #####################################
println("********************************")
println("**** LET'S MODIFY YOUR HOME ****")
println("********************************")
println("")

options = ["Interior", "Exterior"]
menu = RadioMenu(options, pagesize=2)
choice = request("Choose to modify inside or outside:", menu)
if choice != -1
    println("You chose ", options[choice])
else
    println("Menu canceled.")
end

############################## ***INTERIOR*** ##################################

#                               INTERIOR MENU
if choice == 1
    println("********************************")
    println("****** INSIDE MODIFICATONS *****")
    println("********************************")
    println("")

    options = ["Livingroom", "Bathroom", "Bedroom", "Patio", "WaterBased", "OilBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=9)
    choice = request("Choose modification:", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

############################# LIVINGROOM #######################################
if choice == 1
    options = ["WaterBased", "OilBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=5)
    choice = request("Choose modification", menu)
    if choice != -1
        println("You chose: ", options[choice])
    else
        println("Menu canceled.")
    end

#                           WATERBASED
if choice == 1
    options = ["WaterBased", "OilBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=5)
    choice = request("Water Based Paint is only used indoors... ROOM PAINTED", menu)
    if choice != -1
        println("You chose: ", options[choice])
    else
        println("Menu canceled.")
    end

#                             OILBASED
if choice == 2
    options = ["WaterBased", "WallTile", "FloorTile", "Back To Main"] # REDUCED DOMAIN
    menu = RadioMenu(options, pagesize=4)
    choice = request("OIL PAINT IS ONLY USED OUTDOORS", menu)
    if choice != -1
        println("You chose: ", options[choice])
    else
        println("Menu canceled.")
    end

#                             WALLTILE
if choice == 2
    options = ["WaterBased", "FloorTile", "Back To Main"] # REDUCED DOMAIN
    menu = RadioMenu(options, pagesize=3)
    choice = request("WALL TILES CANNOT BE ADDED TO LIVINGROOMS", menu)
    if choice != -1
        println("You chose: ", options[choice])
    else
        println("Menu canceled.")
    end

#                             FLOORTILE
if choice == 2
    options = ["WaterBased", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=3)
    choice = request("Floor tiles inserted", menu)
    if choice != -1
        println("You chose: ", options[choice])
    else
        println("Menu canceled.")
    end

#                             INTERIOR MENU
if choice == 3
    println("********************************")
    println("****** INSIDE MODIFICATONS *****")
    println("********************************")
    println("")

#FORWARD-CHECKING OUT OILBASED
    options = ["Livingroom", "Bathroom", "Bedroom", "Patio", "WaterBased", "WallTile", "FloorTile", "Back To Main"] # REDUCED DOMAIN
    menu = RadioMenu(options, pagesize=8)
    choice = request("Choose modification:", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end
end
end
end
end
end
end

############################# BATHROOM #########################################
if choice == 2
    options = ["WaterBased", "WallTile", "FloorTile", "Back To Main"] #REDUCED DOMAIN
    menu = RadioMenu(options, pagesize=4)
    choice = request("Choose modification:", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

#                               WATERBASED
if choice == 1
    options = ["WaterBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=4)
    choice = request("Bathroom painted", menu)
    if choice != -1
            println("Modifying ", options[choice])
        else
            println("Menu canceled.")
        end

#                             WALLTILE
if choice == 2
    options = ["WaterBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=4)
    choice = request("Wall tiles added", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

#                             FLOORTILE
if choice == 3
    options = ["WaterBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=4)
    choice = request("Floor tiles installed", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

#                           INTERIOR MENU
if choice == 4
    println("********************************")
    println("****** INSIDE MODIFICATONS *****")
    println("********************************")
    println("")

    options = ["Livingroom", "Bathroom", "Bedroom", "Patio", "WaterBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=8)
    choice = request("Choose modification:", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end
end
end
end
end
end
############################# BEDROOM ##########################################
if choice == 3
    options = ["WaterBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=4)
    choice = request("Choose modification:", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

#                            WATERBASED
if choice == 1
        options = ["WaterBased", "WallTile", "FloorTile", "Back To Main"]
        menu = RadioMenu(options, pagesize=4)
        choice = request("Bedroom painted", menu)
        if choice != -1
            println("Modifying ", options[choice])
        else
            println("Menu canceled.")
        end

#                             WALLTILE
if choice == 2
    options = ["WaterBased", "FloorTile", "Back To Main"] # REDUCED DOMAIN
    menu = RadioMenu(options, pagesize=3)
    choice = request("WALL TILES CANNOT BE ADDED TO BEDROOMS", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

#                             FLOORTILE
if choice == 2
    options = ["WaterBased", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=3)
    choice = request("Floor tiles inserted", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

#                              INTERIOR MENU
if choice == 3
    println("********************************")
    println("****** INSIDE MODIFICATONS *****")
    println("********************************")
    println("")

options = ["Livingroom", "Bathroom", "Bedroom", "Patio", "WaterBased", "WallTile", "FloorTile", "Back To Main"]
menu = RadioMenu(options, pagesize=8)
choice = request("Choose modification:", menu)
if choice != -1
    println("Modifying ", options[choice])
else
    println("Menu canceled.")
end
end
end
end
end
end
end

############################# PATIO ############################################
if choice == 4

    options = ["Livingroom", "Bathroom", "Bedroom", "WaterBased", "WallTile", "FloorTile", "Back To Main"] # REDUCED DOMAIN
    menu = RadioMenu(options, pagesize=7)
    choice = request("THE PATIO IS OUTSIDE!", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

############################# WATERBASED #######################################
if choice == 4
    #FORWARD-CHECKING OUT PATIO
    options = ["Livingroom", "Bathroom", "Bedroom", "WaterBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=7)
    choice = request("Livingroom, Bathroom & Bedroom painted with Water Based paint", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

############################# WALLTILE #########################################
if choice == 5
    options = ["Livingroom", "Bathroom", "Bedroom", "WaterBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=7)
    choice = request("Bathroom installed with Wall Tiles", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

############################# FLOORTILE ########################################
if choice == 6
    options = ["Livingroom", "Bathroom", "Bedroom", "WaterBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=7)
    choice = request("Livingroom, Bathroom & Bedroom installed with Floor Tiles", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

################################ MAIN MENU #####################################
if choice == 7
    println("********************************")
    println("**** LET'S MODIFY YOUR HOME ****")
    println("********************************")
    println("")

    options = ["Interior", "Exterior"]
    menu = RadioMenu(options, pagesize=2)
    choice = request("Choose to modify inside or outside:", menu)
    if choice != -1
        println("You chose ", options[choice])
    else
        println("Menu canceled.")
    end
end
end
end
end
end

################################ ***EXTERIOR*** ################################

#                                EXTERIOR MENU
if choice == 2
    println("*********************************")
    println("****** OUTSIDE MODIFICATONS *****")
    println("*********************************")
    println("")

    options = ["Livingroom", "Bathroom", "Bedroom", "Patio", "WaterBased", "OilBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=9)
    choice = request("Choose modification:", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

################ FORWARD-CHECK OUT INDOORS AND INDOOR VALUES ###################
if choice == 1
    options = ["Patio", "OilBased", "WallTile", "FloorTile", "Back To Main"] # REDUCED DOMAIN
    menu = RadioMenu(options, pagesize=5)
    choice = request("OUTDOOR MODIFICATIONS DO NOT APPLY TO INDOOR ROOMS!", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

################################ PATIO #########################################
if choice == 1
    options = ["OilBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=4)
    choice = request("Choose modification", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

#                                OILBASED
if choice == 1
    options = ["OilBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=4)
    choice = request("Patio is painted", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

#                                WALLTILE
if choice == 2
    options = ["OilBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=4)
    choice = request("Wall tiles added", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

#                                FLOORTILE
if choice == 3
    options = ["OilBased", "WallTile", "FloorTile", "Back To Main"]
    menu = RadioMenu(options, pagesize=4)
    choice = request("Floor tiles added", menu)
    if choice != -1
        println("Modifying ", options[choice])
    else
        println("Menu canceled.")
    end

########################### REDUCED DOMAIN LIST ################################
if choice == 4

    println("*****************************************************************")
    println("************ HOUSE MODIFICATION COMPLETE!!! *********************")
    println("-----------------------------------------------------------------")
    println("")
    println("- Livingroom painted with floor tiles installed")
    println("- Bathroom painted with floor & wall tiles installed")
    println("- Bedroom painted with floor tiles installed")
    println("- Patio painted with floor & wall tiles installed.")
    println("")
    println("-----------------------------------------------------------------")
    println("*****************************************************************")

    println("")
    println("********************************")
    println("**** LET'S MODIFY YOUR HOME ****")
    println("********************************")
    println("")

    options = ["Interior", "Exterior"]
    menu = RadioMenu(options, pagesize=2)
    choice = request("Choose to modify inside or outside:", menu)
    if choice != -1
        println("You chose ", options[choice])
    else
        println("Menu canceled.")
    end
end
end
end
end
end
end
end
