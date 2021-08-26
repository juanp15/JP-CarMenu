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

fx_version  'cerulean'
games       { 'gta5' }

author      'Juanp'
description 'JP Car Menu'
version     '1.0.0'

locale      'en' 

client_scripts {
  'Config/Config_JP.lua',
  'Client/Engine_C.lua',
  'Client/Doors_C.lua',
  '@menuv/menuv.lua',
  'Menu/JP-CarMenu.lua'
}

server_scripts {
  'Config/Config_JP.lua',
  'Utils/Utils_S.lua'
}

shared_scripts {
  'Locales/common.lua',
  'Locales/*.locale.lua'
}

dependencies {
  'menuv'
}