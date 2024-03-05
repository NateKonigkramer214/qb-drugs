local QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand('prescriptionpad', function()
if QBCore.Functions.GetPlayerData().job.name == Config.PharmaJob then 
   lib.registerContext({
   id = 'prescriptionpad',
   title = "Prescription Pad",
   options = {
        {
            title  = 'Give Vicodin',
            description  = 'Give Vicodin ',
            icon = 'fa-solid fa-file-prescription',
            event = 'qb-drugs:client:givevicodinprescription',
        },  
        {
            title  = 'Give Adderal',
            description  = 'Give Adderal ',
            icon = 'fa-solid fa-file-prescription',
            event = 'qb-drugs:client:giveadderalprescription',
        },  
		{
            title  = 'Give Morphine',
            description  = 'Give Morphine ',
            icon = 'fa-solid fa-file-prescription',
            event = 'qb-drugs:client:givemorphineprescription',
               
        },  
        {
            title  = 'Give Xanax',
            description  = 'Give Vicodin ',
            icon = 'fa-solid fa-file-prescription',
			event = 'qb-drugs:client:givexanaxprescription',
        },
	}
    })
lib.showContext('prescriptionpad')	
else
QBCore.Functions.Notify("Youre Not A Medical Person", "error")
end
end)


RegisterNetEvent("qb-drugs:client:givevicodinprescription")
AddEventHandler("qb-drugs:client:givevicodinprescription", function() 
 TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Getting The Prescription Written", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	    TriggerServerEvent("qb-drugs:server:givevicodinprescription")
        ClearPedTasks(PlayerPedId())
    end)
end)
RegisterNetEvent("qb-drugs:client:giveadderalprescription")
AddEventHandler("qb-drugs:client:giveadderalprescription", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Getting The Prescription Written", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	    TriggerServerEvent("qb-drugs:server:giveadderalprescription")
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent("qb-drugs:client:givemorphineprescription")
AddEventHandler("qb-drugs:client:givemorphineprescription", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Getting The Prescription Written", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	    TriggerServerEvent("qb-drugs:server:givemorphineprescription")
        ClearPedTasks(PlayerPedId())
    end)
end)
RegisterNetEvent("qb-drugs:client:givexanaxprescription")
AddEventHandler("qb-drugs:client:givexanaxprescription", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Getting The Prescription Written", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	    TriggerServerEvent("qb-drugs:server:givexanaxprescription")
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent("qb-drugs:client:fillprescription")
AddEventHandler("qb-drugs:client:fillprescription", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Picking Up Your Prescription", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
	    TriggerServerEvent("qb-drugs:server:fillprescription")
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent("qb-drugs:client:openingvicodin")
AddEventHandler("qb-drugs:client:openingvicodin", function() 
TriggerEvent('animations:client:EmoteCommandStart', {'uncuff'}) 
    QBCore.Functions.Progressbar("drink_something", "Opening Bottle", 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
        ClearPedTasks(PlayerPedId())
    end)
end)


RegisterNetEvent('qb-drugs:client:takepharma', function(itemName)
	    QBCore.Functions.Progressbar("use_lsd", "Get Pain Relief!", 1750, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {
		animDict = "mp_suicide",
		anim = "pill",
		flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        
		if itemName == "vicodin" then
			exports['ps-buffs']:AddHealthBuff(10000, 20)
		elseif itemName == "adderal" then
			exports['ps-buffs']:StaminaBuffEffect(5000, 1.3)
		elseif itemName == "xanax" then 
			exports['ps-buffs']:AddStressBuff(10000, 25)
		else 
			exports['ps-buffs']:AddHealthBuff(10000, 40)
		end
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify("Canceled", "error")
    end)
end)
