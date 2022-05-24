local QBCore = exports['qb-core']:GetCoreObject()
local Calledmixingpallet = false
local Calledmixingpallet2 = false
local Calleddrinkpallet = false
local Calledbentopallet = false
local Calledbothpallet2 = false
local Calledbothpallet = false
local JobBusy = false
local Tasks = false
local random = 0
local upalletPrice = Config.upalletPrice
local bothupalletPrice = Config.AllupalletPrice
local bothupalletPrice2 = upalletPrice + bothupalletPrice
local bentopalletPrice = Config.bentopalletPrice
local Working = false
local PlayerData = {}
local currentZone = nil
local holdingplush = false
local deliverynumber = 0
local uwuPeds = {} 
--Events--

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function(Player)
    PlayerData =  QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    PlayerJob = job
    onDuty = PlayerJob.onduty20
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

RegisterNetEvent('qb-uwu:DutyB', function()
    TriggerServerEvent('QBCore:ToggleDuty')
end)

RegisterNetEvent('qb-uwujob:uwucounter1', function()
	TriggerEvent('inventory:client:SetCurrentStash', 'uwucounter1')
	TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'uwucounter1', {
		maxweight = 100000,
		slots = 20,
	})
end)

RegisterNetEvent('qb-uwujob:uwucounter2', function()
	TriggerEvent('inventory:client:SetCurrentStash', 'uwucounter2')
	TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'uwucounter2', {
		maxweight = 100000,
		slots = 20,
	})
end)

RegisterNetEvent('qb-uwujob:kitchencounter', function()
    TriggerEvent('inventory:client:SetCurrentStash', 'kitchencounter')
    TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'kitchencounter', {
        maxweight = 100000,
        slots = 20,
    })
end)

RegisterNetEvent('qb-uwujob:Storage', function()
    TriggerEvent('inventory:client:SetCurrentStash', 'uwustorage')
    TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'uwustorage', {
        maxweight = 750000,
        slots = 80,
    })
end)

RegisterNetEvent('qb-uwujob:FoodStorage', function()
	TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'DoorOpen', 4)
    TriggerEvent('inventory:client:SetCurrentStash', 'uwucoldstorage')
    TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'uwucoldstorage', {
        maxweight = 750000,
        slots = 80,
    })
end)
------------------- Added by Mecho------------
RegisterNetEvent('qb-uwujob:uwuloadpallet', function()
    TriggerEvent('inventory:client:SetCurrentStash', 'uwuloadpallet')
    TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'uwuloadpallet', {
        maxweight = 750000,
        slots = 80,
    })
end)
--------- End added by mecho --------
--mixing
RegisterNetEvent('qb-uwujob:Mixinguwuchocsandy', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then   
    		QBCore.Functions.TriggerCallback('qb-uwujob:ingredients:uwuchocsandy', function(HasItems)  
    			if HasItems then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Mixing uWu Chocolate Marshmallows Sandy batter..', 3500, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mp_common',
						anim = 'givetake1_a',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						LocalPlayer.state:set("inv_busy", false, true)
    					TriggerServerEvent('QBCore:Server:AddItem', 'uwuchocsandybatter', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwuchocsandybatter'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
				end
			end)
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:Mixinguwuvanillasandy', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then   
    		QBCore.Functions.TriggerCallback('qb-uwujob:ingredients:uwuvanillasandy', function(HasItems)  
    			if HasItems then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Mixing uWu Vanilla Marshmallows Sandy batter..', 3500, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mp_common',
						anim = 'givetake1_a',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						LocalPlayer.state:set("inv_busy", false, true)
    					TriggerServerEvent('QBCore:Server:AddItem', 'uwuvanillasandybatter', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwuvanillasandybatter'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
				end
			end)
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:Mixinguwucupcake', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then   
    		QBCore.Functions.TriggerCallback('qb-uwujob:ingredients:uwucupcake', function(HasItems)  
    			if HasItems then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Mixing uWu Cupcake batter..', 3500, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mp_common',
						anim = 'givetake1_a',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						LocalPlayer.state:set("inv_busy", false, true)
						TriggerServerEvent('QBCore:Server:AddItem', 'uwucupcakebatter', 1)
						TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwucupcakebatter'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
				end
			end)
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:Mixinguwupancake', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then   
    		QBCore.Functions.TriggerCallback('qb-uwujob:ingredients:uwupancake', function(HasItems)  
    			if HasItems then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Mixing uWu Savory Pancake batter..', 3500, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mp_common',
						anim = 'givetake1_a',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						LocalPlayer.state:set("inv_busy", false, true)
						TriggerServerEvent('QBCore:Server:AddItem', 'uwupancakebatter', 1)
						TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwupancakebatter'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
				end
			end)
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

--baking
RegisterNetEvent('qb-uwujob:Bakinguwuchocsandy', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then 
			QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
				if HasItem then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Baking uWu Chocolate Marshmallows Sandy..', 3500, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mp_common',
						anim = 'givetake1_a',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						LocalPlayer.state:set("inv_busy", false, true)
						TriggerServerEvent('QBCore:Server:RemoveItem', 'uwuchocsandybatter', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwuchocsandybatter'], 'remove')
    					TriggerServerEvent('QBCore:Server:AddItem', 'uwuchocsandy', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwuchocsandy'], 'add')

					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the batter to bake this', 'error')
				end
			end, 'uwuchocsandybatter')
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:Bakinguwuvanillasandy', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then 
			QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
				if HasItem then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Baking uWu Vanilla Marshmallows Sandy..', 3500, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mp_common',
						anim = 'givetake1_a',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						LocalPlayer.state:set("inv_busy", false, true)
						TriggerServerEvent('QBCore:Server:RemoveItem', 'uwuvanillasandybatter', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwuvanillasandybatter'], 'remove')
    					TriggerServerEvent('QBCore:Server:AddItem', 'uwuvanillasandy', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwuvanillasandy'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the batter to bake this', 'error')
				end
			end, 'uwuvanillasandybatter')
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:Bakinguwucupcake', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then 
			QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
				if HasItem then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Baking uWu Cupcake..', 3500, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mp_common',
						anim = 'givetake1_a',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						LocalPlayer.state:set("inv_busy", false, true)
						TriggerServerEvent('QBCore:Server:RemoveItem', 'uwucupcakebatter', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwucupcakebatter'], 'remove')
    					TriggerServerEvent('QBCore:Server:AddItem', 'uwucupcake', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwucupcake'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the batter to bake this', 'error')
				end
			end, 'uwucupcakebatter')
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:Bakinguwupancake', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then 
			QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
				if HasItem then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Baking uWu Savory Pancake..', 3500, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mp_common',
						anim = 'givetake1_a',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						LocalPlayer.state:set("inv_busy", false, true)
						TriggerServerEvent('QBCore:Server:RemoveItem', 'uwupancakebatter', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwupancakebatter'], 'remove')
    					TriggerServerEvent('QBCore:Server:AddItem', 'uwupancake', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwupancake'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the batter to bake this', 'error')
				end
			end, 'uwupancakebatter')
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

--non mixing
RegisterNetEvent('qb-uwujob:Makinguwusushi', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then   
    		QBCore.Functions.TriggerCallback('qb-uwujob:ingredients:uwusushi', function(HasItems)  
    			if HasItems then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Making some uWu Shushi..', 3500, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mp_common',
						anim = 'givetake1_a',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
    					TriggerServerEvent('QBCore:Server:AddItem', 'uwusushi', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwusushi'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
				end
			end)
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:Makinguwubudhabowl', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then   
    		QBCore.Functions.TriggerCallback('qb-uwujob:ingredients:uwubudhabowl', function(HasItems)  
    			if HasItems then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Making a uWu Budha Bowl..', 3500, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mp_common',
						anim = 'givetake1_a',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						LocalPlayer.state:set("inv_busy", false, true)
						TriggerServerEvent('QBCore:Server:AddItem', 'uwubudhabowl', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwubudhabowl'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
				end
			end)
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:Makinguwumisosoup', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then   
    		QBCore.Functions.TriggerCallback('qb-uwujob:ingredients:uwumisosoup', function(HasItems)  
    			if HasItems then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Making some uWu Miso Soup..', 3500, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mp_common',
						anim = 'givetake1_a',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						LocalPlayer.state:set("inv_busy", false, true)
    					TriggerServerEvent('QBCore:Server:AddItem', 'uwumisosoup', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwumisosoup'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
				end
			end)
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

--drinks
RegisterNetEvent('qb-uwujob:Makinguwububbleteamint', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then   
    		QBCore.Functions.TriggerCallback('qb-uwujob:ingredients:uwububbleteamint', function(HasItems)  
    			if HasItems then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Mixing a Matcha Tea with Mint Boba.', 5000, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mini@drinking',
						anim = 'shots_barman_b',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						StopAnimTask(PlayerPedId(), 'mini@drinking', 'shots_barman_b', 1.0)
						LocalPlayer.state:set("inv_busy", false, true)
						TriggerServerEvent('QBCore:Server:AddItem', 'uwububbleteamint', 1)
						TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwububbleteamint'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
				end
			end)
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:Makinguwububbleteablueberry', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then   
    		QBCore.Functions.TriggerCallback('qb-uwujob:ingredients:uwububbleteablueberry', function(HasItems)  
    			if HasItems then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Mixing a Lavender Tea with Blueberry Boba.', 5000, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mini@drinking',
						anim = 'shots_barman_b',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						StopAnimTask(PlayerPedId(), 'mini@drinking', 'shots_barman_b', 1.0)
						LocalPlayer.state:set("inv_busy", false, true)
						TriggerServerEvent('QBCore:Server:AddItem', 'uwububbleteablueberry', 1)
						TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwububbleteablueberry'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
				end
			end)
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:Makinguwububbletearose', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then   
    		QBCore.Functions.TriggerCallback('qb-uwujob:ingredients:uwububbletearose', function(HasItems)  
    			if HasItems then
					Working = true
					LocalPlayer.state:set("inv_busy", true, true)
					QBCore.Functions.Progressbar('pickup_sla', 'Mixing a Sakura Rose Tea with Vanilla Boba.', 5000, false, true, {
						disableMovement = true,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = false,
					}, {
						animDict = 'mini@drinking',
						anim = 'shots_barman_b',
						flags = 8,
					}, {}, {}, function() -- Done
						Working = false
						StopAnimTask(PlayerPedId(), 'mini@drinking', 'shots_barman_b', 1.0)                
						LocalPlayer.state:set("inv_busy", false, true)
    					TriggerServerEvent('QBCore:Server:AddItem', 'uwububbletearose', 1)
    					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwububbletearose'], 'add')
					end, function()
						LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						Working = false
					end)
				else
   					QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
				end
			end)
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

-- Pallets --
RegisterNetEvent('qb-uwujob:Callformixingpallet', function()
	TriggerEvent('qb-uwujob:CallWarehouseSuccess')
	Calledmixingpallet = true
end)

RegisterNetEvent('qb-uwujob:Callformixingpallet2', function()
	TriggerEvent('qb-uwujob:CallWarehouseSuccess')
	Calledmixingpallet2 = true
end)

RegisterNetEvent('qb-uwujob:Callfordrinkpallet', function()
	TriggerEvent('qb-uwujob:CallWarehouseSuccess')
	Calleddrinkpallet = true
end)

RegisterNetEvent('qb-uwujob:Callforbentopallet', function()
	TriggerEvent('qb-uwujob:CallWarehouseSuccess')
	Calledbentopallet = true
end)

RegisterNetEvent('qb-uwujob:Callforbothpallets', function()
	TriggerEvent('qb-uwujob:CallWarehouseSuccess')
	Calledbothpallet = true
end)

RegisterNetEvent('qb-uwujob:Callforbothpallets2', function()
	TriggerEvent('qb-uwujob:CallWarehouseSuccess')
	Calledbothpallet2 = true
end)


RegisterNetEvent('qb-uwujob:CallWarehouseSuccess', function()
	if Config.vinnyswarehouse then
		QBCore.Functions.Notify('Pick up the ingredients pallet at Vinnys Warehouse', 'success')
		SetNewWaypoint(vector3(858.58679, -3202.552, 5.9950017))
		print('clent warehouse success')
	else
		QBCore.Functions.Notify('Pick up the ingredients pallet at uWu Warehouse', 'success')
		SetNewWaypoint(vector3(858.5216, -3202.556, 5.994996))
        print('clent warehouse success')
	end
	Calledwarehouse = true
end)

RegisterNetEvent('qb-uwujob:Warehousebuypallet', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty and not IsPedInAnyVehicle(PlayerPedId(), false) then
			if Calledmixingpallet then
				TriggerServerEvent('qb-uwujob:bakingpallet')
				Calledmixingpallet = false
			elseif Calledmixingpallet2 then
				TriggerServerEvent('qb-uwujob:bakingpallet2')
				Calledmixingpallet2 = false
            elseif Calleddrinkpallet then
                TriggerServerEvent('qb-uwujob:drinkpallet')
				Calleddrinkpallet = false
			elseif Calledbentopallet then
				TriggerServerEvent('qb-uwujob:bentopallet')
				Calledbentopallet = false
            elseif Calledbothpallet then
                TriggerServerEvent('qb-uwujob:allpallets')
				Calledbothpallet = false
			elseif Calledbothpallet2 then
                TriggerServerEvent('qb-uwujob:allpallets2')
				Calledbothpallet2 = false
			else
				QBCore.Functions.Notify('~r~You didnt call the warehouse first..', 'error')
			end
			QBCore.Functions.Notify('Deliver the ingredients pallet back to '..Config.uWuLocation[1].info, 'success')
			SetNewWaypoint(Config.uWuLocation[1].coords)
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

-- Unpacking Ingredient Pallets
RegisterNetEvent('qb-uwujob:unloadMixingpallet', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
            QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
                if HasItem then
					TriggerServerEvent('QBCore:Server:RemoveItem', 'uwu-bakingpallet', 1)
					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwu-bakingpallet'], 'remove')
					TriggerServerEvent('qb-uwujob:Mixingpallet1add')
					QBCore.Functions.Notify('ingredients have been unpacked!', 'success')
                else
					QBCore.Functions.Notify('You don\'t have any pallets.', 'error')
				end
            end, 'uwu-bakingpallet')
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:unloadMixingpallet2', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
            QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
                if HasItem then
					TriggerServerEvent('QBCore:Server:RemoveItem', 'uwu-bakingpallet2', 1)
					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwu-bakingpallet2'], 'remove')
					TriggerServerEvent('qb-uwujob:Mixingpallet2add')
					QBCore.Functions.Notify('ingredients have been unpacked!', 'success')
                else
					QBCore.Functions.Notify('You don\'t have any pallets.', 'error')
				end
            end, 'uwu-bakingpallet2')
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:unloadDrinkpallets', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
            QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
                if HasItem then
					TriggerServerEvent('QBCore:Server:RemoveItem', 'uwu-drinkpallet', 1)
					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwu-drinkpallet'], 'remove')
					TriggerServerEvent('qb-uwujob:Drinkpalletadd')
					QBCore.Functions.Notify('ingredients have been unpacked!', 'success')
                else
					QBCore.Functions.Notify('You don\'t have any pallets.', 'error')
				end
            end, 'uwu-drinkpallet')
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)
-----Added by mecho------Bentopallet--

RegisterNetEvent('qb-uwujob:unloadBentopallets', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
            QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
                if HasItem then
					TriggerServerEvent('QBCore:Server:RemoveItem', 'uwu-bentopallet', 1)
					TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwu-bentopallet'], 'remove')
					TriggerServerEvent('qb-uwujob:uwubentoboxpalletadd')
					QBCore.Functions.Notify('BentoBoxs have been unpacked!', 'success')
                else
					QBCore.Functions.Notify('You don\'t have any pallets.', 'error')
				end
            end, 'uwu-bentopallet')
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

--jobs
RegisterNetEvent('qb-uwujob:deliveryjob', function()
	random = math.random(1,#Config.DeliveryLocations)
	CreateBlip()
	QBCore.Functions.Notify('Deliver this bag to '..Config.DeliveryLocations[random].info, 'success')
	TriggerServerEvent('QBCore:Server:AddItem', 'uwu-bag', 1)
	TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwu-bag'], 'add')
	if Tasks then
		return
	end
	Tasks = true
	while Tasks do
		Wait(1)
		local pos = GetEntityCoords(PlayerPedId())
		local GetDist = #(pos - Config.DeliveryLocations[random].coords)
		if GetDist <= 5.0 then
			DrawText3D(Config.DeliveryLocations[random].coords.x+0.1, Config.DeliveryLocations[random].coords.y+0.1, Config.DeliveryLocations[random].coords.z+0.1, '~g~E~s~ - Deliver') 
			DrawMarker(2, Config.DeliveryLocations[random].coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.1, 0.1, 0.05, 255, 255, 255, 155, false, false, false, true, false, false, false)
				if IsControlJustReleased(0, 38) then
					if not IsPedInAnyVehicle(PlayerPedId(), false) then
						EndJob()
					else
						QBCore.Functions.Notify('You can\'t deliver in your vehicle..', 'error')
				end
			end
		else
			Wait(2000)
		end
	end
end)

RegisterNetEvent('qb-uwujob:startjob', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if JobBusy == false and not IsPedInAnyVehicle(PlayerPedId(), false) then
				JobBusy = true
				deliverynumber = deliverynumber + 1
				TriggerServerEvent('qb-uwujob:start:deliveryjob')
			elseif JobBusy == true then
				QBCore.Functions.Notify('You\'re already doing another task', 'error')
				Wait(2000)
			end
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

--garage

RegisterNetEvent('qb-uwujob:garage', function(bs)
    local vehicle = Config.deliveryveh
    QBCore.Functions.GetPlayerData(function(PlayerData)
        if PlayerData.job.name == 'uwu' then
            if vehicle == 'surfer' then
                QBCore.Functions.SpawnVehicle(vehicle, function(veh)
                    SetVehicleNumberPlateText(veh, 'uWu'..tostring(math.random(1000, 9999)))
                    exports[Config.Fuel]:SetFuel(veh, 100.0)
                    SetEntityHeading(vehicle, 34.65)
                    TriggerEvent('vehiclekeys:client:SetOwner', QBCore.Functions.GetPlate(veh))
                    SetVehicleEngineOn(veh, true, true)
				end, Config.Uwucarspawn["uwucar"].coords, true)
            end
        else 
            QBCore.Functions.Notify('You are not an employee of uwu cafe job.', 'error')
        end
    end)    
end)

RegisterNetEvent('qb-uwujob:storecar', function()
    local Player = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Notify('Work Vehicle Stored!', 'primary')
    local car = GetVehiclePedIsIn(PlayerPedId(),true)
    NetworkFadeOutEntity(car, true,false)
    Wait(2000)
    QBCore.Functions.DeleteVehicle(car)
end)

--Mecho add for warehouse menu--
RegisterNetEvent('qb-uwujob:menu:uwuloadpallet', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			exports['qb-menu']:openMenu({
		        {
		            header = "『Uwu Warehouse <img src=https://i.imgur.com/RZH012f.png width=25px>』",
		            isMenuHeader = true,
		        },
				{
		            header = "• uWu Ordered Pallets",
		            txt = "Pickup all ordered Pallets",
		            params = {
		                event = "qb-uwujob:Warehousebuypallet"
		            }
		        },
			})
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)
--end edit

--Menus--
RegisterNetEvent('qb-uwujob:menu:mixingstation', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			exports['qb-menu']:openMenu({
		        {
		            header = "『Uwu Mixing Station』",
		            isMenuHeader = true,
		        },
		        {
		            header = "• uWu Chocolate Marshmallows Sandy Batter",
		            txt = "Cocoa Powder, Butter, Sugar, Egg, Milk, Flour, Kitty Marshmallows",
		            params = {
		                event = "qb-uwujob:Mixinguwuchocsandy"
		            }
		        },
				{
		            header = "• uWu Vanilla Marshmallows Sandy Batter",
		            txt = "Vanilla Extract, Butter, Sugar, Egg, Milk, Flour, kitty marshmallows",
		            params = {
		                event = "qb-uwujob:Mixinguwuvanillasandy"
		            }
		        },
		        {
		            header = "• uWu Cupcake Batter",
		            txt = "Egg, Scallions, Salt, Soysauce, Milk, Flour",
		            params = {
		                event = "qb-uwujob:Mixinguwucupcake"
		            }
		        },
		        {
		            header = "• uWu Savory Pancake Batter",
		            txt = "Egg, Salt, Milk, Flour",
		            params = {
		                event = "qb-uwujob:Mixinguwupancake"
		            }
		        },
		    })
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:menu:ovenstation', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			exports['qb-menu']:openMenu({
		        {
		            header = "『Uwu Oven』",
		            isMenuHeader = true,
		        },
		        {
		            header = "• Bake uWu Chocolate Marshmallows Sandy",
		            txt = "Sweet Vanilla Biscuit with kitty marshmallows",
		            params = {
		                event = "qb-uwujob:Bakinguwuchocsandy"
		            }
		        },
				{
		            header = "• Bake uWu Vanilla Marshmallows Sandy",
		            txt = "Sweet Chocolate Biscuit with kitty marshmallows",
		            params = {
		                event = "qb-uwujob:Bakinguwuvanillasandy"
		            }
		        },
		        {
		            header = "• Bake uWu Cupcake",
		            txt = "Sugar Kitty Cupcake!",
		            params = {
		                event = "qb-uwujob:Bakinguwucupcake"
		            }
		        },
		        {
		            header = "• Bake uWu Savory Pancake",
		            txt = "Korean savory pancake made with scallions.",
		            params = {
		                event = "qb-uwujob:Bakinguwupancake"
		            }
		        },
		    })
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:menu:foodstation', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			exports['qb-menu']:openMenu({
				{
					header = "『uWu Menu』",
					isMenuHeader = true,
				},
				{
					header = "• uWu Budha Bowl",
					txt = "Broccoil, Cauliflower, Chickpeas, Cashews, Lemon juice, Garlic",
					params = {
						event = "qb-uwujob:Makinguwubudhabowl"
					}
				},
				{
					header = "• uWu shushi",
					txt = "White Rice, Vinegar, Sugar, Salt, Seaweed, Crab Meat",
					params = {
						event = "qb-uwujob:Makinguwusushi"
					}
				},
				{
					header = "• uWu Miso Soup",
					txt = "Dashi Granules, Water Bottle, Miso Paste, Diced Silk Tofu, Onions",
					params = {
						event = "qb-uwujob:Makinguwumisosoup"
					}
				},
    		})
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:menu:DrinkMenu', function(data)
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
    		exports['qb-menu']:openMenu({
    		    {
    		        header = "『uWu Menu』",
    		        txt = "",
    		    },
    		    {
    		        header = "• Minty B-T",
    		        txt = "Match Powder, Water Bottle, Heavy Cream, Tapioca Pearls",
    		        params = {
    		            event = "qb-uwujob:Makinguwububbleteamint"
    		        }
    		    },
    		    {
    		        header = "• Berry Blue B-T",
    		        txt = "Blueberry Lavender Tea, Water Bottle, Heavy Cream, Tapioca Pearls",
    		        params = {
    		            event = "qb-uwujob:Makinguwububbleteablueberry"
    		        }
    		    },
				{
    		        header = "• Rosey B-T",
    		        txt = "Sakura Rose Tea, Water Bottle, Heavy Cream, Tapioca Pearls",
    		        params = {
    		            event = "qb-uwujob:Makinguwububbletearose"
    		        }
    		    },
    		})
		else 
			QBCore.Functions.Notify('You must be Clocked into work', 'error')
		end
	end)
end)

RegisterNetEvent('qb-uwujob:menu:registermenu', function()
    local registermenu = {
        {
            header = '『uWu Register』',
            isMenuHeader = true,
        },
        {
            header = '• Warehouse <img src=https://i.imgur.com/RZH012f.png width=25px>',
            txt = '',
            params = {
                event = 'qb-uwujob:menu:callwearhousemenu',
                args = {
                    
                }
            }
        },
		{
            header = '• Charge Customer <img src=https://i.imgur.com/K7kyu2V.png width=25px>',
            txt = '',
            params = {
                event = 'qb-uwujob:bill',
                args = {
                    
                }
            }
        },
		{
            header = '• Start A Delivery',
            txt = '',
            params = {
                event = 'qb-uwujob:startjob',
                args = {
                    
                }
            }
        },
		{
            header = '• Ticket Payout <img src=https://i.imgur.com/etWzE95.png width=25px>',
            txt = '',
            params = {
                event = 'qb-uwujob:payout',
                args = {
                    
                }
            }
        },
        {
            header = '• Clock In/Out',
            txt = '',
            params = {
                event = 'qb-uwujob:Toggle:Duty',
                args = {
                    
                }
            }
        },		
    }
	exports['qb-menu']:openMenu(registermenu)
end)

RegisterNetEvent('qb-uwujob:Toggle:Duty', function()
    onDuty = not onDuty
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent('qb-uwujob:menu:callwearhousemenu', function()
    local callwearhousemenu = {
        {
            header = '『uWu Warehouse: Order』',
            isMenuHeader = true,
        },
        {
            header = '• Buy a Mixing ingredients pallet one',
            txt = '$'..upalletPrice..' From the companys bank account',
            params = {
                event = 'qb-uwujob:buypallet1c',
                args = {
                    
                }
            }
        },
		{
            header = '• Buy a Mixing ingredients pallet two',
            txt = '$'..upalletPrice..' From the companys bank account',
            params = {
                event = 'qb-uwujob:buypallet2c',
                args = {
                    
                }
            }
        },
		{
            header = '• Buy a Drink ingredients pallet',
            txt = '$'..upalletPrice..' From the companys bank account',
            params = {
                event = 'qb-uwujob:buypallet3c',
                args = {
                    
                }
            }
        },
		{
            header = '• Buy a Bento box pallet',
            txt = '$'..bentopalletPrice..' From the companys bank account',
            params = {
                event = 'qb-uwujob:buybentopalletc',
                args = {
                    
                }
            }
        },
        {
            header = '• Buy All ingredients pallets',
            txt = '$'..bothupalletPrice..' From the companys bank account',
            params = {
                event = 'qb-uwujob:buybothpalletc',
                args = {
                    
                }
            }
        },	
		{
            header = '• Buy All ingredients pallets and Bento box pallet',
            txt = '$'..bothupalletPrice2..' From the companys bank account',
            params = {
                event = 'qb-uwujob:buybothpallet2c',
                args = {
                    
                }
            }
        },		
    }
	exports['qb-menu']:openMenu(callwearhousemenu)
end)

RegisterNetEvent('qb-uwujob:buypallet1c', function()
	print('buypallet1')
    TriggerServerEvent("qb-uwujob:buypallet1")
end)

RegisterNetEvent('qb-uwujob:buypallet2c', function()
    TriggerServerEvent("qb-uwujob:buypallet2")
end)

RegisterNetEvent('qb-uwujob:buypallet3c', function()
    TriggerServerEvent("qb-uwujob:buypallet3")
end)

RegisterNetEvent('qb-uwujob:buybothpalletc', function()
    TriggerServerEvent("qb-uwujob:buybothpallet")
end)

RegisterNetEvent('qb-uwujob:buybothpallet2c', function()
    TriggerServerEvent("qb-uwujob:buybothpallet2")
end)

RegisterNetEvent('qb-uwujob:qb-uwujob:buybentopalletc', function()
    TriggerServerEvent("qb-uwujob:qb-uwujob:buybentopallet")
end)

RegisterNetEvent('qb-uwujob:menu:unpackpalletmenu', function()
    local unpackpalletmenu = {
        {
            header = '『uWu Cold Storage』',
            isMenuHeader = true,
        },
        {
            header = '• Unpack Mixing ingredients pallet one',
            txt = '',
            params = {
                event = 'qb-uwujob:unloadMixingpallet',
                args = {
                    
                }
            }
        },
		{
            header = '• Unpack Mixing ingredients pallet two',
            txt = '',
            params = {
                event = 'qb-uwujob:unloadMixingpallet2',
                args = {
                    
                }
            }
        },
		{
            header = '• Unpack Drinks ingredients pallet',
            txt = '',
            params = {
                event = 'qb-uwujob:unloadDrinkpallets',
                args = {
                    
                }
            }
        },
		{
            header = '• Unpack BentoBox pallet',
            txt = '',
            params = {
                event = 'qb-uwujob:unloadBentopallets',
                args = {
                    
                }
            }
        },
    }
	exports['qb-menu']:openMenu(unpackpalletmenu)
end)

RegisterNetEvent('qb-uwujob:menu:garage', function()
    exports['qb-menu']:openMenu({
        {
            header = '『uWu Garage』',
            isMenuHeader = true,
        },
        {
            header = '• Surfer',
            txt = 'BF Surfer',
            params = {
                event = 'qb-uwujob:garage',
                args = {
                    vehicle = 'surfer',
                }
            }
        },
        {
            header = '• Store Vehicle',
            txt = 'Store Vehicle Inside Garage',
            params = {
                event = 'qb-uwujob:storecar',
                args = {
                    
                }
            }
        },		
    })
end)

-- QB INPUT --

RegisterNetEvent('qb-uwujob:bill', function()
    local bill = exports['qb-input']:ShowInput({
        header = 'Create Receipt',
        inputs = {
            {
                text = 'City ID',
                name = 'citizenid',
                type = 'text',
                isRequired = true
            },
            {
                text = 'Amount',
                name = 'billprice',
                type = 'number',
                isRequired = false
            },
            {
                text = 'Bill Type',
                name = 'billtype',
                type = 'radio',
                options = {
                    { value = 'cash', text = 'Cash' }, -- Options MUST include a value and a text option
                    { value = 'bank', text = 'Debit Card' }
                }
            }
        }
    })
    if bill == nil then return end 
    TriggerServerEvent('qb-uwujob:bill:player', bill)
end)

-- Register Stuff
RegisterNetEvent('qb-uwujob:payout', function()
	QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
		if HasItem then
			TriggerServerEvent('qb-uwujob:payment:money', true)
		else
			QBCore.Functions.Notify('You dont have any delivery tickets on you..', 'error')
		end 
 	end, 'uwu-ticket')
end)

RegisterNetEvent('qb-uwujob:client:uwupurpleplush', function()
	if holdingplush then
		StopAnimTask(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		DeleteEntity(tab)
		ExecuteCommand('propstuck')
		holdingplush = false
	else
		RequestAnimDict("impexp_int-0")
		while not HasAnimDictLoaded("impexp_int-0") do
			Wait(0)
		end
		TaskPlayAnim(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		tab = CreateObject(818790301, 0, 0, 0, true, true, true)
		AttachEntityToEntity(tab, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.17, 0.11, -0.07, 90.0, 225.0, 180.0, true, true, false, true, 1, true)
		holdingplush = true
	end
end)

RegisterNetEvent('qb-uwujob:client:uwugreenplush', function()
	if holdingplush then
		StopAnimTask(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		DeleteEntity(tab)
		ExecuteCommand('propstuck')
		holdingplush = false
	else
		RequestAnimDict("impexp_int-0")
		while not HasAnimDictLoaded("impexp_int-0") do
			Wait(0)
		end
		TaskPlayAnim(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		tab = CreateObject(1393952729, 0, 0, 0, true, true, true)
		AttachEntityToEntity(tab, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.17, 0.11, -0.07, 90.0, 225.0, 180.0, true, true, false, true, 1, true)
		holdingplush = true
	end
end)

RegisterNetEvent('qb-uwujob:client:uwublueplush', function()
	if holdingplush then
		StopAnimTask(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		DeleteEntity(tab)
		ExecuteCommand('propstuck')
		holdingplush = false
	else
		RequestAnimDict("impexp_int-0")
		while not HasAnimDictLoaded("impexp_int-0") do
			Wait(0)
		end
		TaskPlayAnim(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		tab = CreateObject(2001522426, 0, 0, 0, true, true, true)
		AttachEntityToEntity(tab, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.17, 0.11, -0.07, 90.0, 225.0, 180.0, true, true, false, true, 1, true)
		holdingplush = true
	end
end)

RegisterNetEvent('qb-uwujob:client:uwubrownplush', function()
	if holdingplush then
		StopAnimTask(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		DeleteEntity(tab)
		ExecuteCommand('propstuck')
		holdingplush = false
	else
		RequestAnimDict("impexp_int-0")
		while not HasAnimDictLoaded("impexp_int-0") do
			Wait(0)
		end
		TaskPlayAnim(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		tab = CreateObject(1943054478, 0, 0, 0, true, true, true)
		AttachEntityToEntity(tab, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.17, 0.11, -0.07, 90.0, 225.0, 180.0, true, true, false, true, 1, true)
		holdingplush = true
	end
end)

RegisterNetEvent('qb-uwujob:client:uwuyellowplush', function()
	if holdingplush then
		StopAnimTask(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		DeleteEntity(tab)
		ExecuteCommand('propstuck')
	else
		RequestAnimDict("impexp_int-0")
		while not HasAnimDictLoaded("impexp_int-0") do
			Wait(0)
		end
		TaskPlayAnim(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		tab = CreateObject(1640596832, 0, 0, 0, true, true, true)
		AttachEntityToEntity(tab, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.17, 0.11, -0.07, 90.0, 225.0, 180.0, true, true, false, true, 1, true)
		holdingplush = true
	end
end)

RegisterNetEvent('qb-uwujob:client:uwuredplush', function()
	if holdingplush then
		StopAnimTask(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		DeleteEntity(tab)
		ExecuteCommand('propstuck')
		holdingplush = false
	else
		RequestAnimDict("impexp_int-0")
		while not HasAnimDictLoaded("impexp_int-0") do
			Wait(0)
		end
		TaskPlayAnim(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		tab = CreateObject(968344509, 0, 0, 0, true, true, true)
		AttachEntityToEntity(tab, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.17, 0.11, -0.07, 90.0, 225.0, 180.0, true, true, false, true, 1, true)
		holdingplush = true
	end
end)

RegisterNetEvent('qb-uwujob:client:uwugreenrareplush', function()
	if holdingplush then
		StopAnimTask(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		DeleteEntity(tab)
		ExecuteCommand('propstuck')
		holdingplush = false
	else
		RequestAnimDict("impexp_int-0")
		while not HasAnimDictLoaded("impexp_int-0") do
			Wait(0)
		end
		TaskPlayAnim(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		tab = CreateObject(1351790032, 0, 0, 0, true, true, true)
		AttachEntityToEntity(tab, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.17, 0.11, -0.07, 90.0, 225.0, 180.0, true, true, false, true, 1, true)
		holdingplush = true
	end
end)

RegisterNetEvent('qb-uwujob:client:uwupinkrareplush', function()
	if holdingplush then
		StopAnimTask(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		DeleteEntity(tab)
		ExecuteCommand('propstuck')
		holdingplush = false
	else
		RequestAnimDict("impexp_int-0")
		while not HasAnimDictLoaded("impexp_int-0") do
			Wait(0)
		end
		TaskPlayAnim(PlayerPedId(), "impexp_int-0", "mp_m_waremech_01_dual-0" ,8.0, -8.0, -1, 50, 0, false, false, false)
		tab = CreateObject(-1650444620, 0, 0, 0, true, true, true)
		AttachEntityToEntity(tab, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.17, 0.11, -0.07, 90.0, 225.0, 180.0, true, true, false, true, 1, true)
		holdingplush = true
	end
end)

--Threads--

CreateThread(function()
	uwulocation = AddBlipForCoord(-581.1549, -1073.435, 22.329565)
	SetBlipSprite (uwulocation, 442)
	SetBlipDisplay(uwulocation, 2)
	SetBlipScale  (uwulocation, 0.5)
	SetBlipAsShortRange(uwulocation, true)
	SetBlipColour(uwulocation, 41)
	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName('Uwu Cafe')
	EndTextCommandSetBlipName(uwulocation)
end)

if not Config.vinnyswarehouse then
	CreateThread(function()
		uwuwarehouse = AddBlipForCoord(Config.vinnyswarehouseLocations[1].coords)
		SetBlipSprite (uwuwarehouse, 442)
		SetBlipDisplay(uwuwarehouse, 2)
		SetBlipScale  (uwuwarehouse, 0.5)
		SetBlipAsShortRange(uwuwarehouse, true)
		SetBlipColour(uwuwarehouse, 41)
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName(Config.vinnyswarehouseLocations[1].info)
		EndTextCommandSetBlipName(uwuwarehouse)
	end)
end

if Config.vinnyswarehousemain then
    CreateThread(function()
        vinnyswarehouse = AddBlipForCoord(Config.vinnyswarehouseLocations[2].coords)
        SetBlipSprite (vinnyswarehouse, 85)
        SetBlipDisplay(vinnyswarehouse, 4)
        SetBlipScale  (vinnyswarehouse, 0.5)
        SetBlipAsShortRange(vinnyswarehouse, true)
        SetBlipColour(vinnyswarehouse, 75)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName('Vinny\'s Warehouse')
        EndTextCommandSetBlipName(vinnyswarehouse)
    end)
end

--functions

function animatedeliverydone()
	loadAnimDict( 'mp_safehouselost@' )
    TaskPlayAnim( PlayerPedId(), 'mp_safehouselost@', 'package_dropoff', 8.0, 1.0, -1, 16, 0, 0, 0, 0 )
end

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end 

function DeleteBlip()
	if DoesBlipExist(blip) then
		RemoveBlip(blip)
	end
end

function CreateBlip()
	if JobBusy then
		blip = AddBlipForCoord(Config.DeliveryLocations[random].coords)
	end
	SetNewWaypoint(Config.DeliveryLocations[random].coords)
	SetBlipSprite(blip, 501)
	SetBlipScale(blip, 0.9)
	SetBlipColour(blip, 48) 
    SetBlipAsShortRange(blip, false)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString('Delivery Location')
    EndTextCommandSetBlipName(blip)
end

function uwucafejobWaypoint()
	SetNewWaypoint(Config.uWuLocation[1].coords)
end

function DrawText3D(x, y, z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	local scale = 0.40
	if onScreen then
		SetTextScale(scale, scale)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255, 255, 255, 215)
		SetTextOutline()
		SetTextEntry('STRING')
		SetTextCentre(1)
		AddTextComponentString(text)
        DrawText(_x,_y)
	end
end

function EndJob()
	QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
		if JobBusy == true and HasItem then
			Tasks = false
			JobBusy = false
			TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5,  'doorbell' , 0.15)
			Wait(1000)
			animatedeliverydone()
			Wait(800)
			DeleteBlip()
			TriggerServerEvent('QBCore:Server:RemoveItem', 'uwu-bag', 1)
			TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwu-bag'], 'remove')
			TriggerServerEvent('qb-uwujob:reward:ticket', true)
			Wait(800)
			TriggerServerEvent('QBCore:Server:AddItem', 'uwu-ticket', 1)
			TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['uwu-ticket'], 'add')
			if deliverynumber == Config.deliveryamount then 
				TriggerEvent('qb-beanmachine:startjob')
			elseif deliverynumber == Config.deliveryamount then
				deliverynumber = 0
			end
		else
			QBCore.Functions.Notify('You didnt even take the order with you..', 'error')
		end 
 	end, 'uwu-bag')
end

local uwumaincourses = {
	[1] =  {["food"] = 'uwusushi'},
	[2] =  {["food"] = 'uwubudhabowl'},
	[3] =  {["food"] = 'uwumisosoup'},
}

local uwuteas = {
	[1] =  {["food"] = 'uwububbleteablueberry'},
	[2] =  {["food"] = 'uwububbletearose'},
	[3] =  {["food"] = 'uwububbleteamint'},
}

local uwudessert = {
	[1] =  {["food"] = 'uwupancake'},
	[2] =  {["food"] = 'uwucupcake'},
	[3] =  {["food"] = 'uwuvanillasandy'},
	[4] =  {["food"] = 'uwuchocsandy'},
}

local uwuplush = {
	[1] =  {["item"] = 'uwupurpleplush'},
	[2] =  {["item"] = 'uwugreenplush'},
	[3] =  {["item"] = 'uwublueplush'},
	[4] =  {["item"] = 'uwubrownplush'}, 
	[5] =  {["item"] = 'uwuyellowplush'},
	[6] =  {["item"] = 'uwuredplush'},
}

local uwurareplush = {
	[1] =  {["item"] = 'uwugreenrareplush'},
	[2] =  {["item"] = 'uwupinkrareplush'},
}

RegisterNetEvent('qb-uwujob:uwubentoboxMeal', function()
	local randomToy = math.random(1,100)
	local randomcourse = math.random(1,#uwumaincourses)
	local randomtea = math.random(1,#uwuteas)
	local randomdesert = math.random(1,#uwudessert)
	local randomplush = math.random(1,#uwuplush)
	local randomrareplush = math.random(1,#uwurareplush)
	--remove box
	TriggerServerEvent('QBCore:Server:RemoveItem', 'uwubentobox', 1)
	--add items from box
	TriggerServerEvent('QBCore:Server:AddItem', uwumaincourses[randomcourse].food, 1)
	TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[uwumaincourses[randomcourse].food], 'add')
	TriggerServerEvent('QBCore:Server:AddItem', uwuteas[randomtea].food, 1)
	TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[uwuteas[randomtea].food], 'add')
	TriggerServerEvent('QBCore:Server:AddItem', uwudessert[randomdesert].food, 1)
	TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[uwudessert[randomdesert].food], 'add')
	--chance for toys
	if randomToy >= 60 and randomToy <= 90 then
		TriggerServerEvent('QBCore:Server:AddItem', uwuplush[randomplush].item, 1)
		TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[uwuplush[randomplush].item].item, 'add')
		QBCore.Functions.Notify('Congratulations you won a Plush', 'success')
	elseif randomToy == 100 then	
		TriggerServerEvent('QBCore:Server:AddItem', uwurareplush[randomrareplush].item, 1)
		TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[uwurareplush[randomrareplush].item], 'add')
		QBCore.Functions.Notify('Congratulations you won a Rare Plush', 'success')
	else	
		QBCore.Functions.Notify('You didn\'t get any plushies in the mystery bentobox', 'error')
	end
end)

function DoRequestAnimSet(anim)
	RequestAnimDict(anim)
	while not HasAnimDictLoaded(anim) do
		Wait(1)
	end
end

CreateThread(function()
	while true do
		Wait(500)
		for k,v in pairs(Config.uwuPedlocation) do
			local playerCoords = GetEntityCoords(PlayerPedId())
			local distance = #(playerCoords - v.coords.xyz)
			if distance < Config.DistanceSpawn and not uwuPeds[k] then
				local spawnedPed = NearuwuPed(v.model, v.coords, v.gender, v.animDict, v.animName, v.scenario)
				uwuPeds[k] = { spawnedPed = spawnedPed }
			end
			if distance >= Config.DistanceSpawn and uwuPeds[k] then
				if Config.FadeIn then
					for i = 255, 0, -51 do
						Wait(50)
						SetEntityAlpha(uwuPeds[k].spawnedPed, i, false)
					end
				end
				DeletePed(uwuPeds[k].spawnedPed)
				uwuPeds[k] = nil
			end
		end
	end
end)

CreateThread(function()
	while true do
		Wait(500)
		for k,v in pairs(Config.uwuPedlocation) do
			local playerCoords = GetEntityCoords(PlayerPedId())
			local distance = #(playerCoords - v.coords.xyz)
			if distance < Config.DistanceSpawn and not uwuPeds[k] then
				local spawnedPed = NearuwuPed(v.model, v.coords, v.gender, v.animDict, v.animName, v.scenario)
				uwuPeds[k] = { spawnedPed = spawnedPed }
			end
			if distance >= Config.DistanceSpawn and uwuPeds[k] then
				if Config.FadeIn then
					for i = 255, 0, -51 do
						Wait(50)
						SetEntityAlpha(uwuPeds[k].spawnedPed, i, false)
					end
				end
				DeletePed(uwuPeds[k].spawnedPed)
				uwuPeds[k] = nil
			end
		end
	end
end)

function NearuwuPed(model, coords, gender, animDict, animName, scenario)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(50)
	end
	if Config.MinusOne then
		spawnedPed = CreatePed(Config.GenderNumbers[gender], model, coords.x, coords.y, coords.z - 1.0, coords.w, false, true)
	else
		spawnedPed = CreatePed(Config.GenderNumbers[gender], model, coords.x, coords.y, coords.z, coords.w, false, true)
	end
	SetEntityAlpha(spawnedPed, 0, false)
	if Config.Frozen then
		FreezeEntityPosition(spawnedPed, true)
	end
	if Config.Invincible then
		SetEntityInvincible(spawnedPed, true)
	end
	if Config.Stoic then
		SetBlockingOfNonTemporaryEvents(spawnedPed, true)
	end
	if animDict and animName then
		RequestAnimDict(animDict)
		while not HasAnimDictLoaded(animDict) do
			Wait(50)
		end
		TaskPlayAnim(spawnedPed, animDict, animName, 8.0, 0, -1, 1, 0, 0, 0)
	end
    if scenario then
        TaskStartScenarioInPlace(spawnedPed, scenario, 0, true)
    end
	if Config.FadeIn then
		for i = 0, 255, 51 do
			Wait(50)
			SetEntityAlpha(spawnedPed, i, false)
		end
	end
	return spawnedPed
end
