ESX = nil

local Webhook = Config.WebHook

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 



RegisterServerEvent('g-blackmarket:Buy')
AddEventHandler('g-blackmarket:Buy', function(data)
    local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.addInventoryItem({
            item = data.item,
            count = data.amount
        })
        TriggerClientEvent('esx:showNotification', source, 'Du köpte ' .. data.count .. ' ' .. data.item .. ' för ' .. data.price .. 'kr')
end)

ESX.RegisterServerCallback("g-blackmarket:BetalaBank", function(source, callback, price)
    local player = ESX.GetPlayerFromId(source);

    if player then
        if player.getBank() >= tonumber(price) then
            player.removeBank(tonumber(price))
            callback(true)
        else
            callback(false)
        end
    end
end)


	

