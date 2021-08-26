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

function Engine()

    local Player = GetPlayerPed(PlayerId())
    local PlayerServerId = GetPlayerServerId(PlayerId())
    local Vehicle = GetVehiclePedIsIn(Player, false)

    if IsPedInAnyVehicle(Player, 0) then

        if GetIsVehicleEngineRunning(Vehicle) then

            SetVehicleEngineOn(Vehicle, false, false, false)
            SetVehicleUndriveable(Vehicle, true)

        else

            SetVehicleUndriveable(Vehicle, false)
            SetVehicleEngineOn(Vehicle, true, false, false)

        end

    else

        TriggerServerEvent('JP_CarMenu:ChatMessage', PlayerServerId, _'Not_Vehicle')

    end

end