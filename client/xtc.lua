local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("qb-drugs:client:setpressquad")
AddEventHandler("qb-drugs:client:setpressquad", function() 
local PedCoords = GetEntityCoords(PlayerPedId())
	TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
	Wait(4000)
	ClearPedTasks(PlayerPedId())
	quadpress = CreateObject("bkr_prop_coke_press_01b", PedCoords.x+1, PedCoords.y+1, PedCoords.z-1, true, false)
	PlaceObjectOnGroundProperly(quadpress)
	exports['qb-target']:AddTargetEntity(quadpress, {
    options = {
        {
			event = "qb-drugs:client:makextcquad",
			icon = 'fas fa-eye',
			label = 'Make White quad Stack', 
			
		},
		{
			event = "qb-drugs:client:makeredxtcquad",
			icon = 'fas fa-eye',
			label = 'Make Red quad Stack', 
			
		},
		{ 
			event = "qb-drugs:client:makeorangextcquad",
			icon = 'fas fa-eye',
			label = 'Make orange quad Stack',
		},
		{ 
			event = "qb-drugs:client:makebluextcquad",
			icon = 'fas fa-eye',
			label = 'Make blue quad Stack',
		},
		{
            event = "qb-drugs:client:getquadpressback",
            icon = "fas fa-eye",
            label = "Pick Up",
        },
    }
  })
end)

RegisterNetEvent("qb-drugs:client:setpresstriple")
AddEventHandler("qb-drugs:client:setpresstriple", function() 
local PedCoords = GetEntityCoords(PlayerPedId())
	TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
	Wait(4000)
	ClearPedTasks(PlayerPedId())
	triplepress = CreateObject("bkr_prop_coke_press_01b", PedCoords.x+1, PedCoords.y+1, PedCoords.z-1, true, false)
	PlaceObjectOnGroundProperly(triplepress)
	exports['qb-target']:AddTargetEntity(triplepress, {
    options = {
        {
			event = "qb-drugs:client:makextctriple",
			icon = 'fas fa-eye',
			label = 'Make White triple Stack',
		},
		{
			event = "qb-drugs:client:makeredxtctriple",
			icon = 'fas fa-eye',
			label = 'Make Red triple Stack',
		},
		{
			event = "qb-drugs:client:makeorangextctriple",
			icon = 'fas fa-eye',
			label = 'Make orange triple Stack',
		},
		{ 
			event = "qb-drugs:client:makebluextctriple",
			icon = 'fas fa-eye',
			label = 'Make blue triple Stack',
		},
		{
            event = "qb-drugs:client:gettriplepressback",
            icon = "fas fa-eye",
            label = "Pick Up",
        },
    }
     })
end)

RegisterNetEvent("qb-drugs:client:setpressdual")
AddEventHandler("qb-drugs:client:setpressdual", function() 
local PedCoords = GetEntityCoords(PlayerPedId())
	TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
	Wait(4000)
	ClearPedTasks(PlayerPedId())
	dualpress = CreateObject("bkr_prop_coke_press_01b", PedCoords.x+1, PedCoords.y+1, PedCoords.z-1, true, false)
	PlaceObjectOnGroundProperly(dualpress)
	exports['qb-target']:AddTargetEntity(dualpress, {
    options = {
        {
			event = "qb-drugs:client:makextcdual",
			icon = 'fas fa-eye',
			label = 'Make White dual Stack',

		},
		{
			event = "qb-drugs:client:makeredxtcdual",
			icon = 'fas fa-eye',
			label = 'Make Red dual Stack',

		},
		{ 
			event = "qb-drugs:client:makeorangextcdual",
			icon = 'fas fa-eye',
			label = 'Make orange dual Stack',

		},
		{ 
			event = "qb-drugs:client:makebluextcdual",
			icon = 'fas fa-eye',
			label = 'Make blue dual Stack',
		},
		{
            event = "qb-drugs:client:getdualpressback",
            icon = "fas fa-eye",
            label = "Pick Up",
        },
    }
	})
end)

RegisterNetEvent("qb-drugs:client:setpresssingle")
AddEventHandler("qb-drugs:client:setpresssingle", function() 
local PedCoords = GetEntityCoords(PlayerPedId())
	TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
	Wait(4000)
	ClearPedTasks(PlayerPedId())
	singlepress = CreateObject("bkr_prop_coke_press_01aa", PedCoords.x+1, PedCoords.y+1, PedCoords.z-1, true, false)
	PlaceObjectOnGroundProperly(singlepress)
	exports['qb-target']:AddTargetEntity(singlepress, {
    options = {
        {
			event = "qb-drugs:client:makextcsingle",
			icon = 'fas fa-eye',
			label = 'Make White Single Stack', 
			
		},
		{
			event = "qb-drugs:client:makeredxtcsingle",
			icon = 'fas fa-eye',
			label = 'Make Red Single Stack', 
			
		},
		{ 
			event = "qb-drugs:client:makeorangextcsingle",
			icon = 'fas fa-eye',
			label = 'Make orange Single Stack', 
			
		},
		{ 
			event = "qb-drugs:client:makebluextcsingle",
			icon = 'fas fa-eye',
			label = 'Make blue Single Stack', 
			
		},
		{
            event = "qb-drugs:client:getsinglepressback",
            icon = "fas fa-eye",
            label = "Pick Up",
        },
    }
 })
end)

RegisterNetEvent("qb-drugs:client:getsinglepressback")
AddEventHandler("qb-drugs:client:getsinglepressback", function() 
DeleteObject(singlepress)
TriggerServerEvent("qb-drugs:server:getsinglepressback")
ClearPedTasks(PlayerPedId())
end)

RegisterNetEvent("qb-drugs:client:getdualpressback")
AddEventHandler("qb-drugs:client:getdualpressback", function() 
DeleteObject(dualpress)
TriggerServerEvent("qb-drugs:server:getdualpressback")
ClearPedTasks(PlayerPedId())
end)

RegisterNetEvent("qb-drugs:client:gettriplepressback")
AddEventHandler("qb-drugs:client:gettriplepressback", function() 
DeleteObject(triplepress)
TriggerServerEvent("qb-drugs:server:gettriplepressback")
ClearPedTasks(PlayerPedId())
end)

RegisterNetEvent("qb-drugs:client:getquadpressback")
AddEventHandler("qb-drugs:client:getquadpressback", function() 
DeleteObject(quadpress)
TriggerServerEvent("qb-drugs:server:getquadpressback")
ClearPedTasks(PlayerPedId())
end)

RegisterNetEvent("qb-drugs:client:stealisosafrole")
AddEventHandler("qb-drugs:client:stealisosafrole", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Stealing Isosafrole", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:stealisosafrole")
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        ClearPedTasks(PlayerPedId())
	end
end, 1, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:stealmdp2p")
AddEventHandler("qb-drugs:client:stealmdp2p", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Stealing MDP2P", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	    exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:stealmdp2p")
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        ClearPedTasks(PlayerPedId())
	end
end, 1, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makingrawxtc")
AddEventHandler("qb-drugs:client:makingrawxtc", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Raw Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makingrawxtc")
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        ClearPedTasks(PlayerPedId())
	end
end, 1, 8) -- NumberOfCircles, MS
    end)
end)
---------------------------- unstamped just xtc
RegisterNetEvent("qb-drugs:client:makextcsingle")
AddEventHandler("qb-drugs:client:makextcsingle", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Single Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makextcsingle")
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        ClearPedTasks(PlayerPedId())
	end
end, 4, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makextcdual")
AddEventHandler("qb-drugs:client:makextcdual", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Dual Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makextcdual")
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 3, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makextctriple")
AddEventHandler("qb-drugs:client:makextctriple", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Triple Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makextctriple")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 2, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makextcquad")
AddEventHandler("qb-drugs:client:makextcquad", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Quad Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makextcquad")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 1, 8) -- NumberOfCircles, MS
    end)
end)
------------------------------------------------- 
RegisterNetEvent("qb-drugs:client:makeredxtcsingle")
AddEventHandler("qb-drugs:client:makeredxtcsingle", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Red Single Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makeredxtcsingle")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 4, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makeredxtcdual")
AddEventHandler("qb-drugs:client:makeredxtcdual", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Red Dual Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makeredxtcdual")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 3, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makeredxtctriple")
AddEventHandler("qb-drugs:client:makeredxtctriple", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Red Triple Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makeredxtctriple")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 2, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makeredxtcquad")
AddEventHandler("qb-drugs:client:makeredxtcquad", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Red Quad Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makeredxtcquad")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 1, 8) -- NumberOfCircles, MS
    end)
end)
--------------------------------------------------------------- making orange unstamped
RegisterNetEvent("qb-drugs:client:makeorangextcsingle")
AddEventHandler("qb-drugs:client:makeorangextcsingle", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Orange Single Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makeorangextcsingle")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 4, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makeorangextcdual")
AddEventHandler("qb-drugs:client:makeorangextcdual", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Orange Dual Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makeorangextcdual")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 3, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makeorangextctriple")
AddEventHandler("qb-drugs:client:makeorangextctriple", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Orange Triple Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makeorangextctriple")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 2, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makeorangextcquad")
AddEventHandler("qb-drugs:client:makeorangextcquad", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Orange Quad Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makeorangextcquad")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 1, 8) -- NumberOfCircles, MS
    end)
end)
--------------------------------------- blue unstamped
RegisterNetEvent("qb-drugs:client:makebluextcsingle")
AddEventHandler("qb-drugs:client:makebluextcsingle", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Orange Single Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makebluextcsingle")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 4, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makebluextcdual")
AddEventHandler("qb-drugs:client:makebluextcdual", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Blue Dual Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makebluextcdual")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 3, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makebluextctriple")
AddEventHandler("qb-drugs:client:makebluextctriple", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Blue Triple Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makebluextctriple")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 2, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:makebluextcquad")
AddEventHandler("qb-drugs:client:makebluextcquad", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Unstamped Blue Quad Stack Ecstacy", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:makebluextcquad")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 1, 8) -- NumberOfCircles, MS
    end)
end)
------------------------------------------------------------------ Stamping
RegisterNetEvent("qb-drugs:client:stampwhite")
AddEventHandler("qb-drugs:client:stampwhite", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Stamped Pills", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:stampwhite")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 2, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:stampred")
AddEventHandler("qb-drugs:client:stampred", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Stamped Pills", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:stampred")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 2, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:stamporange")
AddEventHandler("qb-drugs:client:stamporange", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Stamped Pills", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:stamporange")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 2, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:stampblue")
AddEventHandler("qb-drugs:client:stampblue", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Making Stamped Pills", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   exports['ps-ui']:Circle(function(success)
    if success then
        TriggerServerEvent("qb-drugs:server:stampblue")
        
        ClearPedTasks(PlayerPedId())
	else
        QBCore.Functions.Notify("Its a circle. It Aint Hard", "error")    
        
        ClearPedTasks(PlayerPedId())
	end
end, 2, 8) -- NumberOfCircles, MS
    end)
end)

RegisterNetEvent("qb-drugs:client:getsinglepress")
AddEventHandler("qb-drugs:client:getsinglepress", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Buying Press", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   TriggerServerEvent("qb-drugs:server:buypress")
        ClearPedTasks(PlayerPedId())

    end)
end)
RegisterNetEvent("qb-drugs:client:exchangepresses")
AddEventHandler("qb-drugs:client:exchangepresses", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Buying Press", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	   TriggerServerEvent("qb-drugs:server:upgradepress")
        ClearPedTasks(PlayerPedId())

    end)
end)
RegisterNetEvent("qb-drugs:client:buypress")
AddEventHandler("qb-drugs:client:buypress", function() 
     lib.registerContext({
	 id = 'buypresses',
	 title = 'Purchase Presses',
	 options = {
       
        {
            title  = 'Single Press',
            description  = 'Buy a single press for 20k',
            icon = "fa-solid fa-wallet",
            event = 'qb-drugs:client:getsinglepress',
        },  
        {
            title  = 'Exchange Single For Dual',
            description  = '20 of each unstamped single stack pill and your single press ',
            icon = "fa-solid fa-wallet",
            event = 'qb-drugs:client:exchangepresses',
        },  
	    {
            title  = 'Exchange Dual For Triple',
            description  = '50 of each unstamped dual stack pill and your dual press ',
            icon = "fa-solid fa-wallet",
            event = 'qb-drugs:client:exchangepresses',
        },
        {
            title  = 'Exchange Triple For Quad',
            description  = '150 of each unstamped Triple stack pill and your triple press ',
            icon = "fa-solid fa-wallet",
            event = 'qb-drugs:client:exchangepresses',
        } 
	}	
    })
  lib.showContext('buypresses')	
end)


