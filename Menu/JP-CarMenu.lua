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

-- Menus
local menu = MenuV:CreateMenu(false, _'PrinMenu_Title', Config_JP.MenusPosition, 255, 0, 0, 'size-125', 'example', 'menuv', 'JP-CarMenuPrincipal')
local menu2 = MenuV:CreateMenu(_'PrinMenu_DoorsBtn', _'PrinMenu_DoorsBtnDesc', Config_JP.MenusPosition, 255, 0, 0)
local menu3 = MenuV:CreateMenu(_'PrinMenu_WindowsBtn', _'PrinMenu_WindowsBtnDesc', Config_JP.MenusPosition, 255, 0, 0)
local menu4 = MenuV:CreateMenu(_'PrinMenu_ExtrasBtn', _'PrinMenu_ExtrasBtnDesc', Config_JP.MenusPosition, 255, 0, 0)
local menu5 = MenuV:CreateMenu(_'PrinMenu_LiveriesBtn', _'PrinMenu_LiveriesBtnDesc', Config_JP.MenusPosition, 255, 0, 0)
local menu6 = MenuV:CreateMenu(_'DoorsMenu_FrontDoors', _'DoorsMenu_FrontDoorsDesc', Config_JP.MenusPosition, 255, 0, 0)
local menu7 = MenuV:CreateMenu(_'DoorsMenu_RearDoors', _'DoorsMenu_RearDoorsDesc', Config_JP.MenusPosition, 255, 0, 0)
local menu8 = MenuV:CreateMenu(_'WindowsMenu_FrontWindows', _'WindowsMenu_FrontWindowsDesc', Config_JP.MenusPosition, 255, 0, 0)
local menu9 = MenuV:CreateMenu(_'WindowsMenu_RearWindows', _'WindowsMenu_RearWindowsDesc', Config_JP.MenusPosition, 255, 0, 0)

--- Buttons
-- Princ. Menu
local engine_button = menu:AddButton({ icon = '🛫', label = _'PrinMenu_EngineBtn', description = _'PrinMenu_EngineBtnDesc'})
local princ_to_doors_button = menu:AddButton({ icon = '🚪', label = _'PrinMenu_DoorsBtn', value = menu2, description = _'PrinMenu_DoorsBtnDesc' })
local princ_to_windows_button = menu:AddButton({ icon = '👫', label = _'PrinMenu_WindowsBtn', value = menu3, description = _'PrinMenu_WindowsBtnDesc' })
local princ_to_extras_button = menu:AddButton({ icon = '🔧', label = _'PrinMenu_ExtrasBtn', value = menu4, description = _'PrinMenu_ExtrasBtnDesc' })
local princ_to_liveries_button = menu:AddButton({ icon = '🔧', label = _'PrinMenu_LiveriesBtn', value = menu5, description = _'PrinMenu_LiveriesBtnDesc' })

-- Doors Menu
local alldoors_button = menu2:AddButton({ icon = '🚪', label = _'DoorsMenu_AllDoorsBtn', description = _'DoorsMenu_AllDoorsBtnDesc'})
local doors_to_frontdoors_button = menu2:AddButton({ icon = '🚪', label = _'DoorsMenu_FrontDoors', value = menu6, description = _'DoorsMenu_FrontDoorsDesc' })
local frontleftdoor_button = menu6:AddButton({ icon = '🚪', label = _'DoorsMenu_FrontLeftDoorBtn', description = _'DoorsMenu_FrontLeftDoorBtnDesc'})
local frontrightdoor_button = menu6:AddButton({ icon = '🚪', label = _'DoorsMenu_FrontRightDoorBtn', description = _'DoorsMenu_FrontRightDoorBtnDesc'})
local doors_to_reardoors_button = menu2:AddButton({ icon = '🚪', label = _'DoorsMenu_RearDoors', value = menu7, description = _'DoorsMenu_RearDoorsDesc' })
local rearleftdoor_button = menu7:AddButton({ icon = '🚪', label = _'DoorsMenu_RearLeftDoorBtn', description = _'DoorsMenu_RearLeftDoorBtnDesc'})
local rearrightdoor_button = menu7:AddButton({ icon = '🚪', label = _'DoorsMenu_RearRightDoorBtn', description = _'DoorsMenu_RearRightDoorBtnDesc'})
local hood_button = menu2:AddButton({ icon = '🚪', label = _'DoorsMenu_HoodBtn', description = _'DoorsMenu_HoodBtnDesc'})
local trunk_button = menu2:AddButton({ icon = '🚪', label = _'DoorsMenu_TrunkBtn', description = _'DoorsMenu_TrunkBtnDesc'})

-- Windows Menu
local allwindows_button = menu3:AddButton({ icon = '🌁', label = _'WindowsMenu_AllWindowsBtn', description = _'WindowsMenu_AllWindowsBtnDesc'})
local windows_to_frontwindows_button = menu3:AddButton({ icon = '🌁', label = _'WindowsMenu_FrontWindows', value = menu8, description = _'WindowsMenu_FrontWindowsDesc' })
local frontleftwindow_button = menu8:AddButton({ icon = '🌁', label = _'WindowsMenu_FrontLeftWindowBtn', description = _'WindowsMenu_FrontLeftWindowBtnDesc'})
local frontrightwindow_button = menu8:AddButton({ icon = '🌁', label = _'WindowsMenu_FrontRightWindowBtn', description = _'WindowsMenu_FrontRightWindowBtnDesc'})
local windows_to_rearwindows_button = menu3:AddButton({ icon = '🌁', label = _'WindowsMenu_RearWindows', value = menu9, description = _'WindowsMenu_RearWindowsDesc' })
local rearleftwindow_button = menu9:AddButton({ icon = '🌁', label = _'WindowsMenu_RearLeftWindowBtn', description = _'WindowsMenu_RearLeftWindowBtnDesc'})
local rearrightwindow_button = menu9:AddButton({ icon = '🌁', label = _'WindowsMenu_RearRightWindowBtn', description = _'WindowsMenu_RearRightWindowBtnDesc'})

-- Extras Menu

-- Liveries Menu




--- Events
-- Start/Stop Engine
engine_button:On('select', function(item)

    Engine()

end)
--------------------------------------------

-- Open/Close All Doors
alldoors_button:On('select', function(item)

    AllDoors()

end)
--------------------------------------------

-- Open/Close Front Left Door
frontleftdoor_button:On('select', function(item)

    Door(0)

end)
--------------------------------------------

-- Open/Close Front Right Door
frontrightdoor_button:On('select', function(item)

    Door(1)

end)
--------------------------------------------

-- Open/Close Rear Left Door
rearleftdoor_button:On('select', function(item)

    Door(2)

end)
--------------------------------------------

-- Open/Close Rear Right Door
rearrightdoor_button:On('select', function(item)

    Door(3)

end)
--------------------------------------------

-- Open/Close Hood
hood_button:On('select', function(item)

    Door(4)

end)
--------------------------------------------

-- Open/Close Trunk
trunk_button:On('select', function(item)

    Door(5)

end)
--------------------------------------------

-- Up/Down All Windows
allwindows_button:On('select', function(item)

    AllWindows()

end)
--------------------------------------------

-- Up/Down Front Left Window
frontleftwindow_button:On('select', function(item)

    Window(0)

end)
--------------------------------------------

-- Up/Down Front Right Window
frontrightwindow_button:On('select', function(item)

    Window(1)

end)
--------------------------------------------

-- Up/Down Rear Left Window
rearleftwindow_button:On('select', function(item)

    Window(2)

end)
--------------------------------------------

-- Up/Down Rear Right Window
rearrightwindow_button:On('select', function(item)

    Window(3)

end)
--------------------------------------------

-- Extras Menu
menu4:On('open', function(m)

    m:ClearItems()
    local Player = GetPlayerPed(PlayerId())
    local PlayerServerId = GetPlayerServerId(PlayerId())
    local Vehicle = GetVehiclePedIsIn(Player, false)
    local C = 0

    if IsPedInAnyVehicle(Player, 0) then

        for i = 0, 15 do

            if DoesExtraExist(Vehicle, i) then

                C = C + 1

                if IsVehicleExtraTurnedOn(Vehicle, i) then
                    
                    m:AddButton({ icon = '✔️', label = ('Extra ' .. i), value = i, description = _'ExtrasMenu_ActivateBtn'
                    }):On('select', function(item)

                        if IsVehicleExtraTurnedOn(Vehicle, i) then

                            SetVehicleExtra(Vehicle, item.Value, 1)

                            if Config_JP.RepairAfterSetExtra then
                                
                                SetVehicleFixed(Vehicle)

                            end

                            item.Icon = '❌'

                        elseif not IsVehicleExtraTurnedOn(Vehicle, i) then

                            SetVehicleExtra(Vehicle, item.Value, 0)

                            if Config_JP.RepairAfterSetExtra then
                                
                                SetVehicleFixed(Vehicle)

                            end

                            item.Icon = '✔️'

                        end

                    end)

                elseif not IsVehicleExtraTurnedOn(Vehicle, i) then

                    m:AddButton({ icon = '❌', label = ('Extra ' .. i), value = i, description = _'ExtrasMenu_ActivateBtn'
                    }):On('select', function(item)

                        if IsVehicleExtraTurnedOn(Vehicle, i) then

                            SetVehicleExtra(Vehicle, item.Value, 1)

                            if Config_JP.RepairAfterSetExtra then
                                
                                SetVehicleFixed(Vehicle)

                            end

                            item.Icon = '❌'
                            
                        elseif not IsVehicleExtraTurnedOn(Vehicle, i) then

                            SetVehicleExtra(Vehicle, item.Value, 0)

                            if Config_JP.RepairAfterSetExtra then
                                
                                SetVehicleFixed(Vehicle)

                            end

                            item.Icon = '✔️'

                        end

                    end)

                end

            else
                
                if i > 14 and C < 1 then
                   
                    m:AddButton({ icon = '❌', label = (_'ExtrasMenu_DisabledBtnDesc'), description = _'ExtrasMenu_DisabledBtnDesc', disabled = true })

                end

            end

        end

    else

        TriggerServerEvent('JP_CarMenu:ChatMessage', PlayerServerId, _'Not_Vehicle')

    end
end)
--------------------------------------------

-- Open Menu With Key
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)

        if IsControlJustPressed(0, Config_JP.OpenKey) then

            menu:Open()
            
        end
    end
end)
--------------------------------------------