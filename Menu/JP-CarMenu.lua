----------------------- [ JP_CarMenu ] -----------------------
-- GitHub: https://github.com/juanp15
-- License:
-- url
-- Author: Juanp
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

--- Buttons
-- Princ. Menu
local engine_button = menu:AddButton({ icon = '🛫', label = _'PrinMenu_EngineBtn', description = _'PrinMenu_EngineBtnDesc'})
local princ_to_doors_button = menu:AddButton({ icon = '🧰', label = _'PrinMenu_DoorsBtn', value = menu2, description = _'PrinMenu_DoorsBtnDesc' })
local princ_to_windows_button = menu:AddButton({ icon = '👫', label = _'PrinMenu_WindowsBtn', value = menu3, description = _'PrinMenu_WindowsBtnDesc' })
local princ_to_extras_button = menu:AddButton({ icon = '🔧', label = _'PrinMenu_ExtrasBtn', value = menu4, description = _'PrinMenu_ExtrasBtnDesc' })
local princ_to_liveries_button = menu:AddButton({ icon = '🔧', label = _'PrinMenu_LiveriesBtn', value = menu5, description = _'PrinMenu_LiveriesBtnDesc' })

-- Doors Menu

-- Windows Menu

-- Extras Menu

-- Liveries Menu




--- Events
-- Start/Stop Engine
engine_button:On('select', function(item)

    Engine()

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