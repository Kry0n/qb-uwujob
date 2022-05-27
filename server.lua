local QBCore = exports['qb-core']:GetCoreObject()
local upalletPrice = Config.upalletPrice
local bothupalletPrice = Config.AllupalletPrice
local bothupalletPrice2 = upalletPrice + bothupalletPrice
local bentopalletPrice = Config.bentopalletPrice
local shopearnings = LoadResourceFile("qb-uwujob", "earnings.json")

local ItemList = { 
    ["uwu-ticket"] = 1,
}

QBCore.Functions.CreateUseableItem("uwubentobox", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-uwujob:uwubentoboxMeal", source)
end)

-- plushs
QBCore.Functions.CreateUseableItem("uwupurpleplush", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-uwujob:client:uwupurpleplush", source, item.name)
end)

QBCore.Functions.CreateUseableItem("uwugreenplush", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-uwujob:client:uwugreenplush", source, item.name)
end)

QBCore.Functions.CreateUseableItem("uwublueplush", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-uwujob:client:uwublueplush", source, item.name)
end)

QBCore.Functions.CreateUseableItem("uwubrownplush", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-uwujob:client:uwubrownplush", source, item.name)
end)

QBCore.Functions.CreateUseableItem("uwuyellowplush", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-uwujob:client:uwuyellowplush", source, item.name)
end)

QBCore.Functions.CreateUseableItem("uwuredplush", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-uwujob:client:uwuredplush", source, item.name)
end)

QBCore.Functions.CreateUseableItem("uwugreenrareplush", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-uwujob:client:uwugreenrareplush", source, item.name)
end)

QBCore.Functions.CreateUseableItem("uwupinkrareplush", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-uwujob:client:uwupinkrareplush", source, item.name)
end)

QBCore.Functions.CreateCallback('qb-uwujob:ingredients:uwubudhabowl', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local broccoil =  Player.Functions.GetItemByName('broccoil')
	local cauliflower =	Player.Functions.GetItemByName('cauliflower')
	local chickpeas = Player.Functions.GetItemByName('chickpeas')
	local cashews =	Player.Functions.GetItemByName('cashews')
	local lemonjuice = 	Player.Functions.GetItemByName('lemonjuice')
	local garlic =	Player.Functions.GetItemByName('garlic')
    if broccoil and cauliflower and chickpeas and cashews and lemonjuice and garlic then
        Player.Functions.RemoveItem('broccoil', 1)
        Player.Functions.RemoveItem('cauliflower', 1)
        Player.Functions.RemoveItem('chickpeas', 1)
        Player.Functions.RemoveItem('cashews', 1)
        Player.Functions.RemoveItem('lemonjuice', 1)
        Player.Functions.RemoveItem('garlic', 1)
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-uwujob:ingredients:uwusushi', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local whiterice =  Player.Functions.GetItemByName('whiterice')
	local vinegar =	Player.Functions.GetItemByName('vinegar')
	local sugar = Player.Functions.GetItemByName('sugar')
	local salt = Player.Functions.GetItemByName('salt')
	local seaweed = Player.Functions.GetItemByName('seaweed')
	local crabmeat = Player.Functions.GetItemByName('crabmeat')
    if whiterice and vinegar and sugar and salt and seaweed and crabmeat then
        Player.Functions.RemoveItem('whiterice', 1)
        Player.Functions.RemoveItem('vinegar', 1) 
        Player.Functions.RemoveItem('sugar', 1) 
        Player.Functions.RemoveItem('salt', 1) 
        Player.Functions.RemoveItem('seaweed', 1) 
        Player.Functions.RemoveItem('crabmeat', 1)
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-uwujob:ingredients:uwumisosoup', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local dashigranules =  Player.Functions.GetItemByName('dashigranules')
	local water_bottle = Player.Functions.GetItemByName('water_bottle')
	local misopaste = Player.Functions.GetItemByName('misopaste')
	local dicedsilkentofu =	Player.Functions.GetItemByName('dicedsilkentofu')
	local onions = 	Player.Functions.GetItemByName('onions')
    if dashigranules and water_bottle and dicedsilkentofu and dicedsilkentofu and onions then
        Player.Functions.RemoveItem('dashigranules', 1) 
        Player.Functions.RemoveItem('water_bottle', 1) 
        Player.Functions.RemoveItem('misopaste', 1) 
        Player.Functions.RemoveItem('dicedsilkentofu', 1) 
        Player.Functions.RemoveItem('onions', 1)
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-uwujob:ingredients:uwuchocsandy', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cocoapowder = Player.Functions.GetItemByName('cocoapowder')
	local butter = Player.Functions.GetItemByName('butter')
	local sugar = Player.Functions.GetItemByName('sugar')
	local egg =	Player.Functions.GetItemByName('egg')
	local milk = Player.Functions.GetItemByName('milk')
	local flour = Player.Functions.GetItemByName('flour')
    local kittymarshmallows = Player.Functions.GetItemByName('kittymarshmallows')
    if cocoapowder and butter and sugar and egg and milk and flour and kittymarshmallows then
        Player.Functions.RemoveItem('cocoapowder', 1) 
        Player.Functions.RemoveItem('butter', 1) 
        Player.Functions.RemoveItem('sugar', 1) 
        Player.Functions.RemoveItem('egg', 1) 
        Player.Functions.RemoveItem('milk', 1) 
        Player.Functions.RemoveItem('flour', 1) 
        Player.Functions.RemoveItem('kittymarshmallows', 1)
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-uwujob:ingredients:uwuvanillasandy', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local vanillaextract = Player.Functions.GetItemByName('vanillaextract')
	local butter =	Player.Functions.GetItemByName('butter')
	local sugar = Player.Functions.GetItemByName('sugar')
	local egg =	Player.Functions.GetItemByName('egg')
	local milk = Player.Functions.GetItemByName('milk')
	local flour = Player.Functions.GetItemByName('flour')
    local kittymarshmallows = Player.Functions.GetItemByName('kittymarshmallows')
    if vanillaextract and butter and sugar and egg and milk and flour and kittymarshmallows then
        Player.Functions.RemoveItem('vanillaextract', 1)
        Player.Functions.RemoveItem('butter', 1)
        Player.Functions.RemoveItem('sugar', 1)
        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('milk', 1)
        Player.Functions.RemoveItem('flour', 1)
        Player.Functions.RemoveItem('kittymarshmallows', 1)
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-uwujob:ingredients:uwucupcake', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local egg =  Player.Functions.GetItemByName('egg')
	local scallions = Player.Functions.GetItemByName('scallions')
	local salt = Player.Functions.GetItemByName('salt')
	local soysauce = Player.Functions.GetItemByName('soysauce')
	local milk = Player.Functions.GetItemByName('milk')
	local flour = Player.Functions.GetItemByName('flour')
    if egg and scallions and soysauce and salt and milk and flour then
        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('scallions', 1)
        Player.Functions.RemoveItem('salt', 1)
        Player.Functions.RemoveItem('soysauce', 1)
        Player.Functions.RemoveItem('milk', 1)
        Player.Functions.RemoveItem('flour', 1)
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-uwujob:ingredients:uwupancake', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local egg =  Player.Functions.GetItemByName('egg')
	local salt = Player.Functions.GetItemByName('salt')
	local milk = Player.Functions.GetItemByName('milk')
	local flour = Player.Functions.GetItemByName('flour')
    if egg and salt and milk and flour then
        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('salt', 1)
        Player.Functions.RemoveItem('milk', 1)
        Player.Functions.RemoveItem('flour', 1)
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-uwujob:ingredients:uwububbleteamint', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local matchapowder =  Player.Functions.GetItemByName('matchapowder')
	local water_bottle = Player.Functions.GetItemByName('water_bottle')
	local heavycream = Player.Functions.GetItemByName('heavycream')
	local tapiocapearls = Player.Functions.GetItemByName('tapiocapearls')
    if matchapowder and water_bottle and heavycream and tapiocapearls then
        Player.Functions.RemoveItem('matchapowder', 1)
        Player.Functions.RemoveItem('water_bottle', 1)
        Player.Functions.RemoveItem('heavycream', 1)
        Player.Functions.RemoveItem('tapiocapearls', 1)
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-uwujob:ingredients:uwububbleteablueberry', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local blueberrylavendertea =  Player.Functions.GetItemByName('blueberrylavendertea')
	local water_bottle =	Player.Functions.GetItemByName('water_bottle')
	local heavycream = Player.Functions.GetItemByName('heavycream')
	local tapiocapearls =	Player.Functions.GetItemByName('tapiocapearls')
    if blueberrylavendertea and water_bottle and heavycream and tapiocapearls then
        Player.Functions.RemoveItem('blueberrylavendertea', 1)
        Player.Functions.RemoveItem('water_bottle', 1)
        Player.Functions.RemoveItem('heavycream', 1)
        Player.Functions.RemoveItem('tapiocapearls', 1)
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-uwujob:ingredients:uwububbletearose', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local sakurarosetea =  Player.Functions.GetItemByName('sakurarosetea')
	local water_bottle =	Player.Functions.GetItemByName('water_bottle')
	local heavycream = Player.Functions.GetItemByName('heavycream')
	local tapiocapearls =	Player.Functions.GetItemByName('tapiocapearls')
    if sakurarosetea and water_bottle and heavycream and tapiocapearls then
        Player.Functions.RemoveItem('sakurarosetea', 1)
        Player.Functions.RemoveItem('water_bottle', 1)
        Player.Functions.RemoveItem('heavycream', 1)
        Player.Functions.RemoveItem('tapiocapearls', 1)
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('qb-uwujob:start:deliveryjob', function()
    local src = source
    TriggerClientEvent('qb-uwujob:deliveryjob', src)
end)

RegisterNetEvent('qb-uwujob:reward:ticket', function()
    local src = source
    TriggerClientEvent('QBCore:Notify', src, 'Burger Bag Has been delivered! Go back for more deliveries', 'success')
end)

RegisterNetEvent('qb-uwujob:payment:money', function()
    local src = source
    local price = 0
    local payment = 0
    local Player = QBCore.Functions.GetPlayer(src)
    local xItem = Player.Functions.GetItemByName("uwu-ticket")
    local bossamount = 0
    if xItem then
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] then 
                if ItemList[Player.PlayerData.items[k].name] then 
                    price = price + (ItemList[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    payment = price * Config.PaymentDelivery
                    bossprice = bossamount + (ItemList[Player.PlayerData.items[k].name] * Config.BossPaymentDelivery)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                    exports['qb-management']:AddMoney(Player.PlayerData.job.name , bossprice)
                    Player.Functions.AddMoney("cash", payment, "Uwu delivery payment")
                    TriggerClientEvent('QBCore:Notify', src, 'You turned in $'..payment..' worth of delivery tickets', 'primary')
                    TriggerEvent("qb-log:server:CreateLog", "uwucafejob", "tickets", "white", "**"..GetPlayerName(src) .. "** made $"..payment.." for turning in uwucafejob tickets")
                end
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'You have no uwucafejob tickets..', 'error')
    end
end)

RegisterNetEvent('qb-uwujob:bill:player', function(info)
    local Player = QBCore.Functions.GetPlayer(source)
    local Player2 = QBCore.Functions.GetPlayer(tonumber(info.citizenid))
    local type = info.billtype
    local pos = GetEntityCoords(GetPlayerPed(source))
    local pos2 = GetEntityCoords(GetPlayerPed(tonumber(info.citizenid)))
    local dist = #(pos - pos2)
    if Player.PlayerData.job.name == 'uwu' then
        if Player.PlayerData.job.onduty then
            if type == 'bank' then
                if dist < 5 then
                    local Amount = tonumber(info.billprice)
                    local playeramount = Amount * 0.07
                    local bossamount = Amount - playeramount
                    Player2.Functions.RemoveMoney('bank', Amount, 'Uwu Cafe debit card charged')
                    -- Send money to sender job--
                    Player.Functions.AddMoney('bank', playeramount, 'Uwu Cafe debit card charged')
                    exports['qb-management']:AddMoney(Player.PlayerData.job.name, bossamount)
                    -----
                    TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You have been charged $ ' ..Amount..' From your debit card', 'error')
                    TriggerClientEvent('QBCore:Notify', source, 'You charged the person $ ' ..Amount..' From their debit card', 'success')
                else
                    TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You are too far away! ', 'error')
                end
            else
                if dist < 5 then
                    local Amount = tonumber(info.billprice)
                    local playeramount = Amount * 0.07
                    local bossamount = Amount - playeramount
                    Player2.Functions.RemoveMoney('cash', Amount, 'Uwu Cafe receipt')
                    -- Send money to sender job--
                    Player.Functions.AddMoney('cash', playeramount, 'Uwu Cafe receipt')
                    exports['qb-management']:AddMoney(Player.PlayerData.job.name, bossamount)
                    -----
                    TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You have been charged $ ' ..Amount, 'error')
                    TriggerClientEvent('QBCore:Notify', source, 'You charged the person $ ' ..Amount, 'success')
                else
                    TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You are too far away! ', 'error')
                end
            end
        else
            TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You are not on Duty! ', 'error')
        end
    end
end)

QBCore.Commands.Add('uwucats', 'Calling all uWu cats', {}, false, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.job.name == 'uwu' and Player.PlayerData.job.grade.level >= 4 then
        TriggerClientEvent('qb-uwujob:spawnUwuKittys', src)
    else
        TriggerClientEvent('QBCore:Notify', src, 'You must be a uwu boss to call the cats!', 'error')
    end
end)

RegisterNetEvent('qb-uwujob:buypallet1', function()
    local src = source
    local balance = exports['qb-management']:GetAccount('uwu')
    if balance >= upalletPrice then-- bossmoney check
        exports['qb-management']:RemoveMoney('uwu', upalletPrice)
        TriggerClientEvent('qb-uwujob:Callformixingpallet', src)
    else
        TriggerClientEvent('QBCore:Notify', src, 'There is no money in the company account..', 'error')
    end
end)

RegisterNetEvent('qb-uwujob:buypallet2', function()
    local src = source
    local balance = exports['qb-management']:GetAccount('uwu')
    if balance >= upalletPrice then-- bossmoney check
        exports['qb-management']:RemoveMoney('uwu', upalletPrice)
        TriggerClientEvent('qb-uwujob:Callformixingpallet2', src)
    else
        TriggerClientEvent('QBCore:Notify', src, 'There is no money in the company account..', 'error')
    end
end)

RegisterNetEvent('qb-uwujob:buypallet3', function()
    local src = source
    local balance = exports['qb-management']:GetAccount('uwu')
    if balance >= upalletPrice then-- bossmoney check
        exports['qb-management']:RemoveMoney('uwu', upalletPrice)
        TriggerClientEvent('qb-uwujob:Callfordrinkpallet', src)
    else
        TriggerClientEvent('QBCore:Notify', src, 'There is no money in the company account..', 'error')
    end
end)

RegisterNetEvent('qb-uwujob:buybentopallet', function()
    local src = source
    local balance = exports['qb-management']:GetAccount('uwu')
    if balance >= bentopalletPrice then-- bossmoney check
        exports['qb-management']:RemoveMoney('uwu', bentopalletPrice)
        TriggerClientEvent('qb-uwujob:Callforbentopallet', src)
    else
        TriggerClientEvent('QBCore:Notify', src, 'There is no money in the company account..', 'error')
    end
end)

RegisterNetEvent('qb-uwujob:buybothpallet', function()
    local src = source
    local balance = exports['qb-management']:GetAccount('uwu')
    if balance >= bothupalletPrice then-- bossmoney check
        exports['qb-management']:RemoveMoney('uwu', bothupalletPrice)
        TriggerClientEvent('qb-uwujob:Callforbothpallets', src)
        print('server called for both pallets')
    else
        TriggerClientEvent('QBCore:Notify', src, 'There is no money in the company account..', 'error')
    end
end)

RegisterNetEvent('qb-uwujob:buybothpallet2', function()
    local src = source
    local balance = exports['qb-management']:GetAccount('uwu')
    if balance >= bothupalletPrice2 then-- bossmoney check
        exports['qb-management']:RemoveMoney('uwu', bothupalletPrice2)
        TriggerClientEvent('qb-uwujob:Callforbothpallets2', src)
        print('server called for both pallets')
    else
        TriggerClientEvent('QBCore:Notify', src, 'There is no money in the company account..', 'error')
    end
end)

RegisterNetEvent('qb-uwujob:Mixingpallet1add', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('flour', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'flour', 'add')
    Player.Functions.AddItem('whiterice', 25) 
    TriggerClientEvent('inventory:client:ItemBox', src, 'whiterice', 'add')
    Player.Functions.AddItem('butter', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'butter', 'add')
    Player.Functions.AddItem('sugar', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'sugar', 'add')
    Player.Functions.AddItem('dashigranules', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'dashigranules', 'add')
    Player.Functions.AddItem('dicedsilkentofu', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'dicedsilkentofu', 'add')
    Player.Functions.AddItem('misopaste', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'misopaste', 'add')
    Player.Functions.AddItem('egg', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'egg', 'add')
    Player.Functions.AddItem('lemonjuice', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'lemonjuice', 'add')
    Player.Functions.AddItem('kittymarshmallows', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'kittymarshmallows', 'add')
end)

RegisterNetEvent('qb-uwujob:Mixingpallet2add', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('onions', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'onions', 'add')
    Player.Functions.AddItem('scallions', 25) 
    TriggerClientEvent('inventory:client:ItemBox', src, 'scallions', 'add')
    Player.Functions.AddItem('salt', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'salt', 'add')
    Player.Functions.AddItem('seaweed', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'seaweed', 'add')
    Player.Functions.AddItem('crabmeat', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'crabmeat', 'add')
    Player.Functions.AddItem('broccoil', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'broccoil', 'add')
    Player.Functions.AddItem('cauliflower', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'cauliflower', 'add')
    Player.Functions.AddItem('chickpeas', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'chickpeas', 'add')
    Player.Functions.AddItem('cashews', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'cashews', 'add')
    Player.Functions.AddItem('garlic', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'garlic', 'add')
end)

RegisterNetEvent('qb-uwujob:Drinkpalletadd', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('sakurarosetea', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'sakurarosetea', 'add')
    Player.Functions.AddItem('blueberrylavendertea', 25) 
    TriggerClientEvent('inventory:client:ItemBox', src, 'blueberrylavendertea', 'add')
    Player.Functions.AddItem('heavycream', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'heavycream', 'add')
    Player.Functions.AddItem('tapiocapearls', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'tapiocapearls', 'add')
    Player.Functions.AddItem('whipcream', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'whipcream', 'add')
    Player.Functions.AddItem('milk', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'milk', 'add')
    Player.Functions.AddItem('matchapowder', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'matchapowder', 'add')
    Player.Functions.AddItem('vanillaextract', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'vanillaextract', 'add')
    Player.Functions.AddItem('cocoapowder', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'cocoapowder', 'add')
    Player.Functions.AddItem('vinegar', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'vinegar', 'add')
    Player.Functions.AddItem('soysauce', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'soysauce', 'add')
    Player.Functions.AddItem('water_bottle', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'water_bottle', 'add')
end)

RegisterNetEvent('qb-uwujob:uwubentoboxpalletadd', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('uwubentobox', 25)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwubentobox', 'add')
end)

RegisterNetEvent('qb-uwujob:bakingpallet', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('uwu-bakingpallet', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwu-bakingpallet', 'add')
end)


RegisterNetEvent('qb-uwujob:bakingpallet2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('uwu-bakingpallet2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwu-bakingpallet', 'add')
end)


RegisterNetEvent('qb-uwujob:drinkpallet', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('uwu-drinkpallet', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwu-drinkpallet', 'add')
end)


RegisterNetEvent('qb-uwujob:bentopallet', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('uwu-bentopallet', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwu-bentopallet', 'add')
end)


RegisterNetEvent('qb-uwujob:allpallets', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('uwu-bakingpallet', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwu-bakingpallet', 'add')
    Player.Functions.AddItem('uwu-bakingpallet2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwu-bakingpallet2', 'add')
    Player.Functions.AddItem('uwu-drinkpallet', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwu-drinkpallet', 'add')
end)

RegisterNetEvent('qb-uwujob:allpallets2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('uwu-bakingpallet', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwu-bakingpallet', 'add')
    Player.Functions.AddItem('uwu-bakingpallet2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwu-bakingpallet2', 'add')
    Player.Functions.AddItem('uwu-drinkpallet', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwu-drinkpallet', 'add')
    Player.Functions.AddItem('uwu-bentopallet', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, 'uwu-bentopallet', 'add')
end)
