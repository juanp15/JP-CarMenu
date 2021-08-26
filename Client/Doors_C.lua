----------------------- [ JP_CarMenu ] -----------------------
-- GitHub: https://github.com/juanp15
-- License:
-- url
-- Author: Juanp
-- Discord: https://discord.gg/Mm5YWy7BqY
-- Name: JP_CarMenu
-- Version: 1.0.0
-- Description: JP Car Menu
----------------------- [ JP_CarMenu ] -----------------------

function AllDoors()

    local Player = GetPlayerPed(PlayerId())
    local PlayerServerId = GetPlayerServerId(PlayerId())
    local Vehicle = GetVehiclePedIsIn(Player, false)

    if IsPedInAnyVehicle(Player, 0) then

        if GetVehicleDoorAngleRatio(Vehicle, 1) > 0.0 then 

            SetVehicleDoorShut(Vehicle, 0, false)
            SetVehicleDoorShut(Vehicle, 1, false)
            SetVehicleDoorShut(Vehicle, 2, false)
            SetVehicleDoorShut(Vehicle, 3, false)

          else

            SetVehicleDoorOpen(Vehicle, 0, false)
            SetVehicleDoorOpen(Vehicle, 1, false)
            SetVehicleDoorOpen(Vehicle, 2, false)
            SetVehicleDoorOpen(Vehicle, 3, false)

        end

    else

        TriggerServerEvent('JP_CarMenu:ChatMessage', PlayerServerId, _'Not_Vehicle')

    end
end

function Door(Door)

    local Player = GetPlayerPed(PlayerId())
    local PlayerServerId = GetPlayerServerId(PlayerId())
    local Vehicle = GetVehiclePedIsIn(Player, false)

    if IsPedInAnyVehicle(Player, 0) then

        if GetVehicleDoorAngleRatio(Vehicle, Door) > 0.0 then 

            SetVehicleDoorShut(Vehicle, Door, false)

          else

            SetVehicleDoorOpen(Vehicle, Door, false) 

        end

    else

        TriggerServerEvent('JP_CarMenu:ChatMessage', PlayerServerId, _'Not_Vehicle')

    end
end