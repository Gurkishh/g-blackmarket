ESX = nil

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(playerData)
	ESX.PlayerData = playerData
end)


Citizen.CreateThread(function() 
	local locations = {
		vector3(368.37, 332.8, 103.46)
	}
	Citizen.Wait(100);
	while true do
		local player, sleepThread = PlayerPedId(), 750; 
  
		for i = 1, #locations do
			local distance = #(GetEntityCoords(player) - locations[i]);
  
			if distance < 2.0 then
				sleepThread = 5;
				exports['g-stuff']:DrawText3D(locations[i], '[~b~E~w~] - Butik')
  
				if distance < 2.0 then 
					if IsControlJustReleased(0, 38) then
						GurkishBlackmarket()
                    end
                end
            end
        end
        Citizen.Wait(sleepThread)
    end
end)
				
function GurkishBlackmarket() 
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'menu', {
        title = "Mat",
        align = Config.AlignMenu,
        elements = Config.Blackmarket["Items"]
    }, function(data, menu)
        menu.close()
        local action = data.current.action
        local playerPed = GetPlayerPed(-1)

        if data.current.value == 'tramadol' then
            menu.close()
            ESX.TriggerServerCallback('g-blackmarket:BetalaBank', function(Response)
                if Response then
                    TriggerServerEvent('g-blackmarket:Buy', data.current)
                else
                    ESX.ShowNotification("Du har inte tillräckligt med pengar")
                end
                menu.close()
            end, data.current.price)
        end
        if data.current.value == 'sobril' then
            menu.close()
            ESX.TriggerServerCallback('g-blackmarket:BetalaBank', function(Response)
                if Response then
                    TriggerServerEvent('g-blackmarket:Buy', data.current)
                else
                    ESX.ShowNotification("Du har inte tillräckligt med pengar")
                end
                menu.close()
            end, data.current.price)

        end
        if data.current.value == 'morphine' then
            ESX.TriggerServerCallback('g-blackmarket:BetalaBank', function(Response)
                if Response then
                    TriggerServerEvent('g-blackmarket:Buy',  data.current)
                else
                    ESX.ShowNotification("Du har inte tillräckligt med pengar")
                end
            end, data.current.price)
        end
        if data.current.value == 'adrenaline' then
            ESX.TriggerServerCallback('g-blackmarket:BetalaBank', function(Response)
                if Response then
                    TriggerServerEvent('g-blackmarket:Buy', data.current)
                else
                    ESX.ShowNotification("Du har inte tillräckligt med pengar")
                end
            end, data.current.price)
        end
        if data.current.value == 'hb' then
            ESX.TriggerServerCallback('g-blackmarket:BetalaBank', function(Response)
                if Response then
                    TriggerServerEvent('g-blackmarket:Buy',  data.current)
                else
                    ESX.ShowNotification("Du har inte tillräckligt med pengar")
                end
            end, data.current.price)
        end
        if data.current.value == 'torch' then
            ESX.TriggerServerCallback('g-blackmarket:BetalaBank', function(Response)
                if Response then
                    TriggerServerEvent('g-blackmarket:Buy',  data.current)
                else
                    ESX.ShowNotification("Du har inte tillräckligt med pengar")
                end
            end, data.current.price)
        end
        if data.current.value == 'spray' then
            ESX.TriggerServerCallback('g-blackmarket:BetalaBank', function(Response)
                if Response then
                    TriggerServerEvent('g-blackmarket:Buy',  data.current)
                else
                    ESX.ShowNotification("Du har inte tillräckligt med pengar")
                end
            end, data.current.price)
        
        end
    end, function(data, menu)
        menu.close()
    end)
   
end
                
           

    
    
                
                            
                       