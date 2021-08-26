----------------------- [ JP_CarMenu ] -----------------------
-- GitHub: https://github.com/juanp15
-- License:
-- url
-- Author: Juanp
-- Name: JP_CarMenu
-- Version: 1.0.0
-- Description: JP Car Menu
----------------------- [ JP_CarMenu ] -----------------------

-- Chat Message Function
RegisterServerEvent('JP_CarMenu:ChatMessage')
AddEventHandler('JP_CarMenu:ChatMessage', function(Id, Msg)
    TriggerClientEvent('chat:addMessage', Id, {args = {"^8JP-CarMenu^7", Msg}})
end)
--------------------------------------------------------------