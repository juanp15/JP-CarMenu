----------------------- [ JP_CarMenu ] -----------------------
-- GitHub: https://github.com/juanp15
-- License:
-- url
-- Author: Juanp
-- Name: JP_CarMenu
-- Version: 1.0.0
-- Description: JP Car Menu
----------------------- [ JP_CarMenu ] -----------------------

local Windows = true
local Window0 = true
local Window1 = true
local Window2 = true
local Window3 = true

function AllWindows()

    local Player = GetPlayerPed(PlayerId())
    local PlayerServerId = GetPlayerServerId(PlayerId())
    local Vehicle = GetVehiclePedIsIn(Player, false)

    if IsPedInAnyVehicle(Player, 0) then

        if Windows then 

            RollDownWindows(Vehicle) 
            Windows = false

        else

            RollUpWindow(Vehicle, 0)
            RollUpWindow(Vehicle, 1)
            RollUpWindow(Vehicle, 2)
            RollUpWindow(Vehicle, 3)
            Windows = true

        end

    else

        TriggerServerEvent('JP_CarMenu:ChatMessage', PlayerServerId, _'Not_Vehicle')

    end

end

function Window(Window)

    local Player = GetPlayerPed(PlayerId())
    local PlayerServerId = GetPlayerServerId(PlayerId())
    local Vehicle = GetVehiclePedIsIn(Player, false)

    if IsPedInAnyVehicle(Player, 0) then

        if Window == 0 then

            if Window0 then

                RollDownWindow(Vehicle, Window)
                Window0 = false

            else

                RollUpWindow(Vehicle, Window)
                Window0 = true

            end

        elseif Window == 1 then

            if Window1 then

                RollDownWindow(Vehicle, Window)
                Window1 = false

            else

                RollUpWindow(Vehicle, Window)
                Window1 = true

            end

        elseif Window == 2 then

            if Window2 then

                RollDownWindow(Vehicle, Window)
                Window2 = false

            else

                RollUpWindow(Vehicle, Window)
                Window2 = true

            end
            
        elseif Window == 3 then

            if Window3 then

                RollDownWindow(Vehicle, Window)
                Window3 = false

            else

                RollUpWindow(Vehicle, Window)
                Window3 = true

            end
            
        end

    else

        TriggerServerEvent('JP_CarMenu:ChatMessage', PlayerServerId, _'Not_Vehicle')

    end

end