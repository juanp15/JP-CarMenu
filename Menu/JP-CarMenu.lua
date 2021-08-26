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