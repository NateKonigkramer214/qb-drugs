local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("qb-drugs:client:makecrackone")
AddEventHandler("qb-drugs:client:makecrackone", function() 
	TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Cooking Crack", 1000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makecrackone")       
        ClearPedTasks(PlayerPedId())
	else
		TriggerServerEvent("qb-drugs:server:failcrackone")
        ClearPedTasks(PlayerPedId())
	end
end, 3, 8) -- NumberOfCircles, 
    end)
end)


RegisterNetEvent("qb-drugs:client:bagcrack")
AddEventHandler("qb-drugs:client:bagcrack", function() 
	TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "bagging some good good", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	    TriggerServerEvent("qb-drugs:server:bagcrack")
        ClearPedTasks(PlayerPedId())
    end)
end)

