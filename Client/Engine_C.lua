----------------------- [ JP_CarMenu ] -----------------------
-- GitHub: https://github.com/juanp15
-- License:
-- url
-- Author: Juanp
-- Name: JP_CarMenu
-- Version: 1.0.0
-- Description: JP Car Menu
----------------------- [ JP_CarMenu ] -----------------------

function Engine()

    local Player = GetPlayerPed(PlayerId())
    local PlayerServerId = GetPlayerServerId(PlayerId())
    local Vehicle = GetVehiclePedIsIn(Player, false)

    if IsPedInAnyVehicle(Player, 0) then

        if GetIsVehicleEngineRunning(Vehicle) then

            SetVehicleEngineOn(Vehicle, false, false, false)
            SetVehicleUndriveable(Vehicle, true)
            TriggerServerEvent('JP_CarMenu:ChatMessage', PlayerServerId, _'Engine_Off')

        else

            SetVehicleUndriveable(Vehicle, false)
            SetVehicleEngineOn(Vehicle, true, false, false)
            TriggerServerEvent('JP_CarMenu:ChatMessage', PlayerServerId, _'Engine_On')

        end

    else

        TriggerServerEvent('JP_CarMenu:ChatMessage', PlayerServerId, _'Not_Vehicle')

    end

end