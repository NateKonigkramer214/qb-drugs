local QBCore = exports['qb-core']:GetCoreObject()

local deliveryBlip = nil
function PoliceCallWholesale()
print " tell your devs they didnt do something"
end

RegisterNetEvent("qb-drugs:client:getloccoke")
AddEventHandler("qb-drugs:client:getloccoke", function() 
	local unlucky = math.random(1,100)
    local CurrentLocation = Config.oxylocations[math.random(#Config.oxylocations)]
	local unluck =  math.random(1,100)
    if deliveryBlip ~= nil then
        RemoveBlip(deliveryBlip)
    end
	if unlucky <= Config.AlertPoliceWholesale then 
       PoliceCallWholesale()
    end
    deliveryBlip = AddBlipForCoord(CurrentLocation)
    SetBlipSprite(deliveryBlip, 1)
    SetBlipDisplay(deliveryBlip, 2)
    SetBlipScale(deliveryBlip, 1.0)
    SetBlipAsShortRange(deliveryBlip, false)
    SetBlipColour(deliveryBlip, 27)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("drug Meet")
    EndTextCommandSetBlipName(deliveryBlip)
    SetBlipRoute(deliveryBlip, true)
	druglocation = CircleZone:Create(CurrentLocation, 5,{ name = "cokesell", debugPoly = false })
	druglocation:onPlayerInOut(function(isPointInside) if isPointInside then  RemoveBlip(deliveryBlip) end end)
    lib.requestModel("g_m_y_famdnf_01", 500)
	local current = "g_m_y_famdnf_01"
    drugdealer = CreatePed(0, current,CurrentLocation.x,CurrentLocation.y,CurrentLocation.z-1, 90.0, false, false)
    FreezeEntityPosition(drugdealer, true)
    SetEntityInvincible(drugdealer, true)
	exports['qb-target']:AddTargetEntity(drugdealer, {
                options = {
                    {
                        type = "client",
                        label = "Talk To Buyer",
                        icon = "fas fa-eye",
                        action = function()
							local luck = math.random(1,100)
							local ped = GetEntityCoords(PlayerPedId())
							if luck <= Config.SuccessfulChance then
								TriggerEvent("qb-drugs:client:successsalecoke")
							else
								
								TriggerEvent("qb-drugs:client:setupcoke")
								Wait(3000)
								SetUpPeds()

							end
						end,	
                    },
                },
                distance = 2.0
            })
	 
	
end)



RegisterNetEvent("qb-drugs:client:successsalecoke")
AddEventHandler("qb-drugs:client:successsalecoke", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
QBCore.Functions.Progressbar("drink_something", "Wholesaling Drugs", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
       TriggerServerEvent("qb-drugs:server:wholesalecoke")
	   Citizen.Wait(4000)
		
        DeleteEntity(drugdealer)
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent("qb-drugs:client:setupcoke")
AddEventHandler("qb-drugs:client:setupcoke", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
QBCore.Functions.Progressbar("drink_something", "YOU FUCKED NOW", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
        Citizen.Wait(4000)
        DeleteEntity(drugdealer)
        ClearPedTasks(PlayerPedId())
    end)
end)
----------heroin
RegisterNetEvent("qb-drugs:client:getloccrack")
AddEventHandler("qb-drugs:client:getloccrack", function() 
	local unlucky = math.random(1,100)
    local CurrentLocation = Config.oxylocations[math.random(#Config.oxylocations)]
	local unluck =  math.random(1,100)
    if deliveryBlip ~= nil then
        RemoveBlip(deliveryBlip)
    end
	if unlucky <= Config.AlertPoliceWholesale then 
       PoliceCallWholesale()
    end
    deliveryBlip = AddBlipForCoord(CurrentLocation)
    SetBlipSprite(deliveryBlip, 1)
    SetBlipDisplay(deliveryBlip, 2)
    SetBlipScale(deliveryBlip, 1.0)
    SetBlipAsShortRange(deliveryBlip, false)
    SetBlipColour(deliveryBlip, 27)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("drug Meet")
    EndTextCommandSetBlipName(deliveryBlip)
    SetBlipRoute(deliveryBlip, true)
	druglocation = CircleZone:Create(CurrentLocation, 5,{ name = "cracksell", debugPoly = false })
	druglocation:onPlayerInOut(function(isPointInside) if isPointInside then  RemoveBlip(deliveryBlip) end end)
	lib.requestModel("g_m_y_famdnf_01", 500)
	local current = "g_m_y_famdnf_01"
    drugdealer = CreatePed(0, current,CurrentLocation.x,CurrentLocation.y,CurrentLocation.z-1, 90.0, false, false)
    FreezeEntityPosition(drugdealer, true)
    SetEntityInvincible(drugdealer, true)
	exports['qb-target']:AddTargetEntity(drugdealer, {
                options = {
                    {
                        type = "client",
                        label = "Talk To Buyer",
                        icon = "fas fa-eye",
                        action = function()
							local luck = math.random(1,100)
							local ped = GetEntityCoords(PlayerPedId())
							if luck <= Config.SuccessfulChance then
								TriggerEvent("qb-drugs:client:successsalecrack")
							else
								
								TriggerEvent("qb-drugs:client:setupcrack")
								Wait(3000)
								SetUpPeds()

							end
						end,	
                    },
                },
                distance = 2.0
            })
	 
	
end)



RegisterNetEvent("qb-drugs:client:successsalecrack")
AddEventHandler("qb-drugs:client:successsalecrack", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
QBCore.Functions.Progressbar("drink_something", "Wholesaling Drugs", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
       TriggerServerEvent("qb-drugs:server:wholesalecrack")
	   Citizen.Wait(4000)
		
        DeleteEntity(drugdealer)
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent("qb-drugs:client:setupcrack")
AddEventHandler("qb-drugs:client:setupcrack", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
QBCore.Functions.Progressbar("drink_something", "YOU FUCKED NOW", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
        Citizen.Wait(4000)
        DeleteEntity(drugdealer)
        ClearPedTasks(PlayerPedId())
    end)
end)
----------------------------- heroin
RegisterNetEvent("qb-drugs:client:getlocheroin")
AddEventHandler("qb-drugs:client:getlocheroin", function() 
	local unlucky = math.random(1,100)
    local CurrentLocation = Config.oxylocations[math.random(#Config.oxylocations)]
	local unluck =  math.random(1,100)
    if deliveryBlip ~= nil then
        RemoveBlip(deliveryBlip)
    end
	if unlucky <= Config.AlertPoliceWholesale then 
       PoliceCallWholesale()
    end
    deliveryBlip = AddBlipForCoord(CurrentLocation)
    SetBlipSprite(deliveryBlip, 1)
    SetBlipDisplay(deliveryBlip, 2)
    SetBlipScale(deliveryBlip, 1.0)
    SetBlipAsShortRange(deliveryBlip, false)
    SetBlipColour(deliveryBlip, 27)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("drug Meet")
    EndTextCommandSetBlipName(deliveryBlip)
    SetBlipRoute(deliveryBlip, true)
	druglocation = CircleZone:Create(CurrentLocation, 5,{ name = "heroinsell", debugPoly = false })
	druglocation:onPlayerInOut(function(isPointInside) if isPointInside then  RemoveBlip(deliveryBlip) end end)
	lib.requestModel("g_m_y_famdnf_01", 500)
	local current = "g_m_y_famdnf_01"
    drugdealer = CreatePed(0, current,CurrentLocation.x,CurrentLocation.y,CurrentLocation.z-1, 90.0, false, false)
    FreezeEntityPosition(drugdealer, true)
    SetEntityInvincible(drugdealer, true)
	exports['qb-target']:AddTargetEntity(drugdealer, {
                options = {
                    {
                        type = "client",
                        label = "Talk To Buyer",
                        icon = "fas fa-eye",
                        action = function()
							local luck = math.random(1,100)
							local ped = GetEntityCoords(PlayerPedId())
							if luck <= Config.SuccessfulChance then
								TriggerEvent("qb-drugs:client:successsaleheroin")
							else
								
								TriggerEvent("qb-drugs:client:setupheroin")
								Wait(3000)
								SetUpPeds()

							end
						end,	
                    },
                },
                distance = 2.0
            })
	 
	
	
end)



RegisterNetEvent("qb-drugs:client:successsaleheroin")
AddEventHandler("qb-drugs:client:successsaleheroin", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
QBCore.Functions.Progressbar("drink_something", "Wholesaling Drugs", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
       TriggerServerEvent("qb-drugs:server:wholesaleheroin")
        DeleteEntity(drugdealer)
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent("qb-drugs:client:setupheroin")
AddEventHandler("qb-drugs:client:setupheroin", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
QBCore.Functions.Progressbar("drink_something", "YOU FUCKED NOW", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
        DeleteEntity(drugdealer)
        ClearPedTasks(PlayerPedId())
    end)
end)
---------------------------  lsd
RegisterNetEvent("qb-drugs:client:getloclsd")
AddEventHandler("qb-drugs:client:getloclsd", function() 
	local unlucky = math.random(1,100)
    local CurrentLocation = Config.oxylocations[math.random(#Config.oxylocations)]
	local unluck =  math.random(1,100)
    if deliveryBlip ~= nil then
        RemoveBlip(deliveryBlip)
    end
	if unlucky <= Config.AlertPoliceWholesale then 
       PoliceCallWholesale()
    end
    deliveryBlip = AddBlipForCoord(CurrentLocation)
    SetBlipSprite(deliveryBlip, 1)
    SetBlipDisplay(deliveryBlip, 2)
    SetBlipScale(deliveryBlip, 1.0)
    SetBlipAsShortRange(deliveryBlip, false)
    SetBlipColour(deliveryBlip, 27)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("drug Meet")
    EndTextCommandSetBlipName(deliveryBlip)
    SetBlipRoute(deliveryBlip, true)
	druglocation = CircleZone:Create(CurrentLocation, 5,{ name = "lsdsell", debugPoly = false })
	druglocation:onPlayerInOut(function(isPointInside) if isPointInside then  RemoveBlip(deliveryBlip) end end)
	lib.requestModel("g_m_y_famdnf_01", 500)
	local current = "g_m_y_famdnf_01"
    drugdealer = CreatePed(0, current,CurrentLocation.x,CurrentLocation.y,CurrentLocation.z-1, 90.0, false, false)
    FreezeEntityPosition(drugdealer, true)
    SetEntityInvincible(drugdealer, true)
	exports['qb-target']:AddTargetEntity(drugdealer, {
                options = {
                    {
                        type = "client",
                        label = "Talk To Buyer",
                        icon = "fas fa-eye",
                        action = function()
							local luck = math.random(1,100)
							local ped = GetEntityCoords(PlayerPedId())
							if luck <= Config.SuccessfulChance then
								TriggerEvent("qb-drugs:client:successsalelsd")
							else
								
								TriggerEvent("qb-drugs:client:setuplsd")
								Wait(3000)
								SetUpPeds()
							end
						end,	
                    },
                },
                distance = 2.0
            })
	 
	
	
end)


RegisterNetEvent("qb-drugs:client:successsalelsd")
AddEventHandler("qb-drugs:client:successsalelsd", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
QBCore.Functions.Progressbar("drink_something", "Wholesaling Drugs", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
       TriggerServerEvent("qb-drugs:server:wholesalelsd")
        DeleteEntity(drugdealer)
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent("qb-drugs:client:setuplsd")
AddEventHandler("qb-drugs:client:setuplsd", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
QBCore.Functions.Progressbar("drink_something", "YOU FUCKED NOW", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
		
        DeleteEntity(drugdealer)
        ClearPedTasks(PlayerPedId())
    end)
end)
------------------------- xtc
RegisterNetEvent("qb-drugs:client:getlocxtc")
AddEventHandler("qb-drugs:client:getlocxtc", function() 
	local unlucky = math.random(1,100)
    local CurrentLocation = Config.oxylocations[math.random(#Config.oxylocations)]
	local unluck =  math.random(1,100)
    if deliveryBlip ~= nil then
        RemoveBlip(deliveryBlip)
    end
	if unlucky <= Config.AlertPoliceWholesale then 
       PoliceCallWholesale()
    end
    deliveryBlip = AddBlipForCoord(CurrentLocation)
    SetBlipSprite(deliveryBlip, 1)
    SetBlipDisplay(deliveryBlip, 2)
    SetBlipScale(deliveryBlip, 1.0)
    SetBlipAsShortRange(deliveryBlip, false)
    SetBlipColour(deliveryBlip, 27)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("drug Meet")
    EndTextCommandSetBlipName(deliveryBlip)
    SetBlipRoute(deliveryBlip, true)
	druglocation = CircleZone:Create(CurrentLocation, 5,{ name = "xtcsell", debugPoly = false })
	druglocation:onPlayerInOut(function(isPointInside) if isPointInside then  RemoveBlip(deliveryBlip) end end)
	lib.requestModel("g_m_y_famdnf_01", 500)
	local current = "g_m_y_famdnf_01"
     drugdealer = CreatePed(0, current,CurrentLocation.x,CurrentLocation.y,CurrentLocation.z-1, 90.0, false, false)
      FreezeEntityPosition(drugdealer, true)
     SetEntityInvincible(drugdealer, true)
	exports['qb-target']:AddTargetEntity(drugdealer, {
                options = {
                    {
                        type = "client",
                        label = "Talk To Buyer",
                        icon = "fas fa-eye",
                        action = function()
							local luck = math.random(1,100)
							local ped = GetEntityCoords(PlayerPedId())
							if luck <= Config.SuccessfulChance then
								TriggerEvent("qb-drugs:client:successsalextc")
							else
								
								TriggerEvent("qb-drugs:client:setupxtc")
								Wait(3000)
								SetUpPeds()

							end
						end,	
                    },
                },
                distance = 2.0
            })
	 
	
	
end)


RegisterNetEvent("qb-drugs:client:successsalextc")
AddEventHandler("qb-drugs:client:successsalextc", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
QBCore.Functions.Progressbar("drink_something", "Wholesaling Drugs", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
		ClearPedTasks(PlayerPedId())
       TriggerServerEvent("qb-drugs:server:wholesalextc")
        DeleteEntity(drugdealer)
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent("qb-drugs:client:setupxtc")
AddEventHandler("qb-drugs:client:setupxtc", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
QBCore.Functions.Progressbar("drink_something", "YOU FUCKED NOW", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
		ClearPedTasks(PlayerPedId())
       
        DeleteEntity(drugdealer)
        ClearPedTasks(PlayerPedId())
    end)
end)
