# Qbcore Uwu Cafe Job
Firstly, I got this from someone and it was in AWFULL shape, I have since reforged this into a working script.
I will give credit to the individual whos name was on it, Dankbudbaker#something. Great start but no follow through.
I've looked it up and there is a Tebex version of this but don't remember who it's tagged to. Oh well.
This one is FREE and although some of the code might be similar most of my edits are clearly marked. 
Keep it free, download it share it edit it and show me some love on github.

Requirements: 
    catcafe MLO from Gabz. if you aint got this don't bother going any further.
    qb-core
    qb-management
    qb-menu
    qb-target
    polyzone
    qb-phone

DPEmotes for QB kinda optional 
qb-inventory or something that works like it

lets just say a good QBCore server with some added goodies should work fine
Follow ALL the directions below you should be alright.

Copy all images in uwu images and paste into qb-inventory\html\images

-----------------------------------------------------------------------------------------------
--Put into qb-core shared.lua or qb-core items.lua (depends on if you got newest update) CHECK YOUR VERSION TO BE SURE!!!

    --uwu food
	["uwububbleteablueberry"] = {["name"] = "uwububbleteablueberry", ["label"] = "Berry Blue B-T", ["weight"] = 200, ["type"] = "item", ["image"] = "uwububbleteablueberry.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Lavender Tea with Blueberry Boba."},
	["uwububbletearose"] = {["name"] = "uwububbletearose", ["label"] = "Rosey B-T", ["weight"] = 200, ["type"] = "item", ["image"] = "uwububbletearose.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sakura Rose Tea with Vanilla Boba."},
	["uwububbleteamint"] = {["name"] = "uwububbleteamint", ["label"] = "Minty B-T", ["weight"] = 200, ["type"] = "item", ["image"] = "uwububbleteamint.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Matcha Tea with Mint Boba."},
	["uwupancake"] = {["name"] = "uwupancake", ["label"] = "uWu Savory Pancake", ["weight"] = 200, ["type"] = "item", ["image"] = "uwupancake.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Korean savory pancake made with scallions."},
	["uwucupcake"] = {["name"] = "uwucupcake", ["label"] = "uWu Cupcake", ["weight"] = 200, ["type"] = "item", ["image"] = "uwudcupcake.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sugar Kitty Cupcake!"},
	["uwuvanillasandy"] = {["name"] = "uwuvanillasandy", ["label"] = "uWu Vanilla Marshmallows Sandy", ["weight"] = 200, ["type"] = "item", ["image"] = "uwuvanillasandy.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sweet Vanilla Biscuit with kitty marshmallows!"},
	["uwuchocsandy"] = {["name"] = "uwuchocsandy", ["label"] = "uWu Chocolate Marshmallows Sandy", ["weight"] = 200, ["type"] = "item", ["image"] = "uwuchocsandy.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sweet Chocolate Biscuit with kitty marshmallows!"},
	
	["uwupancakebatter"] = {["name"] = "uwupancakebatter", ["label"] = "uWu Savory Pancake batter", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubatter.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Korean savory pancake made with scallions Batter."},
	["uwucupcakebatter"] = {["name"] = "uwucupcakebatter", ["label"] = "uWu Cupcake batter", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubatter.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sugar Kitty Cupcake Batter!"},
	["uwuvanillasandybatter"] = {["name"] = "uwuvanillasandybatter", ["label"] = "uWu Vanilla Marshmallows Sandy batter", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubatter.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sweet Vanilla Biscuit with kitty marshmallows batter!"},
	["uwuchocsandybatter"] = {["name"] = "uwuchocsandybatter", ["label"] = "uWu Chocolate Marshmallows Sandy batter", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubatter.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sweet Chocolate Biscuit with kitty marshmallows batter!"},

	["uwubudhabowl"] = {["name"] = "uwubudhabowl", ["label"] = "uWu Budha Bowl", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubudhabowl.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Bowl of nourishment and balance."},
	["uwusushi"] = {["name"] = "uwusushi", ["label"] = "uWu Shushi", ["weight"] = 200, ["type"] = "item", ["image"] = "uwushushi.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Designed as a window to your soul."},
	["uwumisosoup"] = {["name"] = "uwumisosoup", ["label"] = "uWu Miso Soup", ["weight"] = 200, ["type"] = "item", ["image"] = "uwumisosoup.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Fungus never tasted so good!"},
	["uwubentobox"] = {["name"] = "uwubentobox", ["label"] = "uWu Bento Box", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubentobox.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "An uWu Selection with a surprise!"},
	
	--uwu ingredents
	['flour'] = {["name"] = "flour", ["label"] = "Flour", ["weight"] = 200, ["type"] = "item", ["image"] = "flour.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "flour for baking"},
	['nutmeg'] = {["name"] = "nutmeg", ["label"] = "Nutmeg", ["weight"] = 200, ["type"] = "item", ["image"] = "nutmeg.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "nutmeg"},
	['butter'] = {["name"] = "butter", ["label"] = "butter", ["weight"] = 200, ["type"] = "item", ["image"] = "butter.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "i cant belive its not butter"},
	['sugar'] = {["name"] = "sugar", ["label"] = "Sugar", ["weight"] = 200, ["type"] = "item", ["image"] = "sugar.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "sugar"},
	['egg'] = {["name"] = "egg", ["label"] = "eggs", ["weight"] = 200, ["type"] = "item", ["image"] = "egg.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "fresh eggs"},
	['vanillaextract'] = {["name"] = "vanillaextract", ["label"] = "Vanilla Extract", ["weight"] = 200, ["type"] = "item", ["image"] = "vanillaextract.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "vanilla extract"},
	['bakingpowder'] = {["name"] = "bakingpowder", ["label"] = "baking powder", ["weight"] = 200, ["type"] = "item", ["image"] = "bakingpowder.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "baking powder"},
	['cocoapowder'] = {["name"] = "cocoapowder", ["label"] = "cocoapowder", ["weight"] = 200, ["type"] = "item", ["image"] = "cocoapowder.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "cocoa powder"},
	['milk'] = {["name"] = "milk", ["label"] = "milk", ["weight"] = 200, ["type"] = "item", ["image"] = "milk.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "milk"},
	['matchapowder'] = {["name"] = "matchapowder", ["label"] = "matchapowder", ["weight"] = 200, ["type"] = "item", ["image"] = "matchapowder.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "matchapowder"},
	['kittymarshmallows'] = {["name"] = "kittymarshmallows", ["label"] = "Uwu Kitty Marshmallows", ["weight"] = 200, ["type"] = "item", ["image"] = "kittymarshmallows.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Uwu Kitty Marshmallows"},
	['dashigranules'] = {["name"] = "dashigranules", ["label"] = "dashigranules", ["weight"] = 200, ["type"] = "item", ["image"] = "dashigranules.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "dashi granules"},
	['misopaste'] = {["name"] = "misopaste", ["label"] = "misopaste", ["weight"] = 200, ["type"] = "item", ["image"] = "misopaste.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "miso paste"},
	['dicedsilkentofu'] = {["name"] = "dicedsilkentofu", ["label"] = "diced silken tofu", ["weight"] = 200, ["type"] = "item", ["image"] = "dicedsilkentofu.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "diced silken tofu"},
	['onions'] = {["name"] = "onions", ["label"] = "onions", ["weight"] = 200, ["type"] = "item", ["image"] = "onions.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "onions"},
	['whipcream'] = {["name"] = "whipcream", ["label"] = "whip cream", ["weight"] = 200, ["type"] = "item", ["image"] = "whipcream.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "whip cream"},
	['blueberrylavendertea'] = {["name"] = "blueberrylavendertea", ["label"] = "blueberrylavendertea", ["weight"] = 200, ["type"] = "item", ["image"] = "blueberrylavendertea.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "blueberry lavender tea"},
	['heavycream'] = {["name"] = "heavycream", ["label"] = "heavy cream", ["weight"] = 200, ["type"] = "item", ["image"] = "heavycream.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "heavy cream"},
	['tapiocapearls'] = {["name"] = "tapiocapearls", ["label"] = "tapioca pearls", ["weight"] = 200, ["type"] = "item", ["image"] = "tapiocapearls.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "tapiocapearls"},
	['sakurarosetea'] = {["name"] = "sakurarosetea", ["label"] = "sakurarosetea", ["weight"] = 200, ["type"] = "item", ["image"] = "sakurarosetea.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "sakura rose tea"},
	['scallions'] = {["name"] = "scallions", ["label"] = "scallions", ["weight"] = 200, ["type"] = "item", ["image"] = "scallions.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "scallions"},
	['salt'] = {["name"] = "salt", ["label"] = "salt", ["weight"] = 200, ["type"] = "item", ["image"] = "salt.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "salt"},
	['soysauce'] = {["name"] = "soysauce", ["label"] = "soysauce", ["weight"] = 200, ["type"] = "item", ["image"] = "soysauce.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "soysauce"},
	['whiterice'] = {["name"] = "whiterice", ["label"] = "whiterice", ["weight"] = 200, ["type"] = "item", ["image"] = "whiterice.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "White Rice"},
	['vinegar'] = {["name"] = "vinegar", ["label"] = "vinegar", ["weight"] = 200, ["type"] = "item", ["image"] = "vinegar.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "vinegar"},
	['seaweed'] = {["name"] = "seaweed", ["label"] = "seaweed", ["weight"] = 200, ["type"] = "item", ["image"] = "seaweed.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "seaweed wrap"},
	['crabmeat'] = {["name"] = "crabmeat", ["label"] = "crabmeat", ["weight"] = 200, ["type"] = "item", ["image"] = "crabmeat.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "fresh crab meat"},
	['broccoil'] = {["name"] = "broccoil", ["label"] = "broccoil", ["weight"] = 200, ["type"] = "item", ["image"] = "broccoil.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "fresh broccoil"},
	['cauliflower'] = {["name"] = "cauliflower", ["label"] = "cauliflower", ["weight"] = 200, ["type"] = "item", ["image"] = "cauliflower.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "fresh cauliflower"},
	['chickpeas'] = {["name"] = "chickpeas", ["label"] = "chickpeas", ["weight"] = 200, ["type"] = "item", ["image"] = "chickpeas.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "fresh chickpeas"},
	['cashews'] = {["name"] = "cashews", ["label"] = "cashews", ["weight"] = 200, ["type"] = "item", ["image"] = "cashews.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "cashews"},
	['lemonjuice'] = {["name"] = "lemonjuice", ["label"] = "lemonjuice", ["weight"] = 200, ["type"] = "item", ["image"] = "lemonjuice.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "lemon juice"},
	['garlic'] = {["name"] = "garlic", ["label"] = "garlic", ["weight"] = 200, ["type"] = "item", ["image"] = "garlic.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "garlic"},
	
	--uwu items
	['uwu-drinkpallet'] = {["name"] = "uwu-drinkpallet", ["label"] = "uwu-drinkpallet", ["weight"] = 200, ["type"] = "item", ["image"] = "uwu-drinkpallet.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "uwu-drinkpallet"},
	['uwu-bakingpallet'] = {["name"] = "uwu-bakingpallet", ["label"] = "uwu-bakingpallet", ["weight"] = 200, ["type"] = "item", ["image"] = "uwu-bakingpallet.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "uwu-bakingpallet"},
	['uwu-bakingpallet2'] = {["name"] = "uwu-bakingpallet2", ["label"] = "uwu-bakingpallet", ["weight"] = 200, ["type"] = "item", ["image"] = "uwu-bakingpallet2.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "uwu-bakingpallet #two"},
	['uwu-ticket'] = {["name"] = "uwu-ticket", ["label"] = "uwu-ticket", ["weight"] = 200, ["type"] = "item", ["image"] = "ticket.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "uwu-ticket"},
	['uwu-bag'] = {["name"] = "uwu-bag", ["label"] = "uwu-bag", ["weight"] = 200, ["type"] = "item", ["image"] = "uwu-bag.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "uwu delivery bag"},
	
	['uwupurpleplush'] = {["name"] = "uwupurpleplush", ["label"] = "uWu Purple Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwupurpleplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
	['uwugreenplush'] = {["name"] = "uwugreenplush", ["label"] = "uWu Green Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwugreenplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
	['uwublueplush'] = {["name"] = "uwublueplush", ["label"] = "uWu Blue Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwublueplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
	['uwubrownplush'] = {["name"] = "uwubrownplush", ["label"] = "uWu Brown Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubrownplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
	['uwuyellowplush'] = {["name"] = "uwuyellowplush", ["label"] = "uWu Yellow Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwuyellowplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
	['uwuredplush'] = {["name"] = "uwuredplush", ["label"] = "uWu Red Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwuredplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
	['uwugreenrareplush'] = {["name"] = "uwugreenrareplush", ["label"] = "uWu Rare Green Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwugreenrareplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
	['uwupinkrareplush'] = {["name"] = "uwupinkrareplush", ["label"] = "uWu Rare Pink Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwupinkrareplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
	
	 

-- add to shared.lua job

    ['uwu'] = {
		label = 'Uwu Cafe',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Recruit',
				payment = 150
			},
			['1'] = {
				name = 'Crew Member',
				payment = 165
			},
			['2'] = {
				name = 'Shift Manager',
				payment = 175
			},
			['3'] = {
				name = 'Manager',
				payment = 185
			},
			['4'] = {
				name = 'Owner',
				isboss = true,
				payment = 200
			},
		},
	},

------------------------------------------------------------------------------------------------

--Add to qb-smallresources/config.lua  under Consumables
    
    -- uwu cafe
    ["uwupancake"] = math.random(25, 34),                           
    ["uwubudhabowl"] = math.random(50, 60),
    ["uwusushi"] = math.random(45, 50),
    ["uwucupcake"] = math.random(40, 45),
    ["uwuvanillasandy"] = math.random(50, 65),
    ["uwuchocsandy"] = math.random(50, 65),
    ["uwububbleteablueberry"] = math.random(55, 60),
    ["uwububbletearose"] = math.random(55, 60),
    ["uwububbleteamint"] = math.random(55, 60),
    ["uwumisosoup"] = math.random(80, 90),
------------------------------------------------------------------------------------------------

--Add to qb-smallresources/client/consumables.lua

    RegisterNetEvent("consumables:client:uwububbleteablueberry", function(itemName)
        TriggerEvent('animations:client:EmoteCommandStart', {"bubbletea"})
        action = true
        QBCore.Functions.Progressbar("drink_something", "Popping some Bubble Tea..", 5500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            DeleteObject(prop)
            TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesDrink[itemName])
            TriggerServerEvent('hud:server:RelieveStress', math.random(40, 85))
            action = false
        end)
    end)
    RegisterNetEvent("consumables:client:uwumisosoup", function(itemName)
        TriggerEvent('animations:client:EmoteCommandStart', {"misosoup"})
        action = true
        QBCore.Functions.Progressbar("drink_something", "Supping some Soup..", 5500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            DeleteObject(prop)
            TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesDrink[itemName])
            TriggerServerEvent('hud:server:RelieveStress', math.random(40, 85))
            HealOxy()
            action = false
        end)
    end)
    RegisterNetEvent("consumables:client:uwubudhabowl", function(itemName)
        TriggerEvent('animations:client:EmoteCommandStart', {"budhabowl"})
        action = true
        QBCore.Functions.Progressbar("eat_something", "Banging a bowl of goodness..", 5500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            DeleteObject(prop)
            TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEat[itemName])
            TriggerServerEvent('hud:server:RelieveStress', math.random(40, 85))
            HealOxy()
            action = false
        end)
    end)
    RegisterNetEvent("consumables:client:uwuvanillasandy", function(itemName)
        TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
        action = true
        QBCore.Functions.Progressbar("eat_something", "uWu Icecream Mmm..", 5500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            DeleteObject(prop)
            TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEat[itemName])
            TriggerServerEvent('hud:server:RelieveStress', math.random(40, 65))
            action = false
        end)
    end)
    RegisterNetEvent("consumables:client:uwuchocsandy", function(itemName)
        TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
        action = true
        QBCore.Functions.Progressbar("eat_something", "uWu Icecream Mmm..", 5500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            DeleteObject(prop)
            TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEat[itemName])
            TriggerServerEvent('hud:server:RelieveStress', math.random(40, 65))
            action = false
        end)
    end)
------------------------------------------------------------------------------------------------
--Add to qb-smallresources/server/consumables.lua

--uwu

    QBCore.Functions.CreateUseableItem("uwububbleteablueberry", function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name) 
        end
    end)

    QBCore.Functions.CreateUseableItem("uwububbletearose", function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name) 
        end
    end)

    QBCore.Functions.CreateUseableItem("uwububbleteamint", function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name) 
        end
    end)

    QBCore.Functions.CreateUseableItem("uwupancake", function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:Eat", source, item.name)  
        end
    end)

    QBCore.Functions.CreateUseableItem("uwucupcake", function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:donut", source, item.name) 
        end
    end)

    QBCore.Functions.CreateUseableItem("uwuvanillasandy", function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:uwuvanillasandy", source, item.name) 
        end
    end)

    QBCore.Functions.CreateUseableItem("uwuchocsandy", function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:uwuchocsandy", source, item.name) 
        end
    end)

    QBCore.Functions.CreateUseableItem("uwubudhabowl", function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:uwubudhabowl", source, item.name) 
        end
    end)

    QBCore.Functions.CreateUseableItem("uwusushi", function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:Eat", source, item.name) 
        end
    end)

    QBCore.Functions.CreateUseableItem("uwumisosoup", function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:uwumisosoup", source, item.name) 
        end
    end)
------------------------------------------------------------------------------------------------

NOTE: If your not using DPEmotes for QBCore yours might be missing some fuctionality for this. The problem is not me Its your Server.
Ive added exsports and Functions to my emote resource to work like DPEmotes for the following stuff. You can too!! 

--Add to dpemotes/client/animationlist.lua under DP.PropEmotes = {

    ["bubbletea"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
    {
       Prop = 'apa_prop_cs_plastic_cup_01',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["misosoup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
    {
       Prop = 'v_ret_247_noodle1',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true, 
    }}, 
    ["uwusandy"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions =
    {
       Prop = 'ng_proc_food_ornge1a',
       PropBone = 18905,
       PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
       EmoteMoving = true,
    }},
    ["budhabowl"] = {"anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1", "base_idle", "", AnimationOptions =
    {
      Prop = "prop_cs_bowl_01b",
      PropBone = 60309,
      PropPlacement = {0.0, 0.0300, 0.0100, 0.0, 0.0, 0.0},
      SecondProp = 'h4_prop_h4_caviar_spoon_01a',
      SecondPropBone = 28422,
      SecondPropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
      EmoteLoop = true,
      EmoteMoving = true,
    }},
    ["donut"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut", AnimationOptions =
    {
        Prop = 'prop_amb_donut',
        PropBone = 18905,
        PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
        EmoteMoving = true,
    }},

This next task will depend on what version of qb-target your using 
add this to qb-target config.lua or init.lua In boxzone for versions under 2.6.0
You can skip this if your using the newest version of qb-target cause this is all exports in menus.lua and run automaticly
You can thank me later for that.


	-- uwu job
    ["uwucounter1"] = {
        name = "uwucounter1",
        coords = vector3(-585.41, -1062.95, 22.34),
        length = 1,
        width = 1.7,
        heading = 359,
        debugPoly = false,
        minZ = 18.5,
        maxZ = 22.5,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:uwucounter1",
                icon = "far fa-clipboard",
                label = "Uwu Counter 1",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwucounter2"] = {
        name = "uwucounter2",
        coords = vector3(-584.04, -1060.42, 22.34),
        length = 0.8,
        width = 1.4,
        heading = 270,
        debugPoly = false,
        minZ = 18.39,
        maxZ = 22.39,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:uwucounter2",
                icon = "far fa-clipboard",
                label = "Uwu Counter 2",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwuregister1"] = {
        name = "uwuregister1",
        coords = vector3(-584.03, -1061.46, 22.34),
        length = 0.3,
        width = 0.4,
        heading = 346,
        debugPoly = false,
        minZ = 18.54,
        maxZ = 22.54,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:menu:registermenu",
                icon = "far fa-clipboard",
                label = "Uwu Register",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwuregister2"] = {
        name = "uwuregister2",
        coords = vector3(-584.07, -1058.75, 22.34),
        length = 0.3,
        width = 0.4,
        heading = 9,
        debugPoly = false,
        minZ = 18.54,
        maxZ = 22.54,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:menu:registermenu",
                icon = "far fa-clipboard",
                label = "Uwu Register",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwucounterkitchencounter"] = {
        name = "uwucounterkitchencounter",
        coords = vector3(-587.34, -1059.63, 22.26),
        length = 1.4,
        width = 2.3,
        heading = 90,
        debugPoly = false,
        minZ = 22.26,
        maxZ = 23.12,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:kitchencounter",
                icon = "far fa-clipboard",
                label = "Kitchen Counter",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwuunloadpallet"] = {
        name = "uwuunloadpallet",
        coords = vector3(-598.04, -1065.43, 21.36),
        length = 6,
        width = 7,
        heading = 90,
        debugPoly = false,
        minZ = 21.36,
        maxZ = 24,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:menu:unpackpalletmenu",
                icon = "far fa-clipboard",
                label = "Unload Ingredients",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwuloadpallet"] = {
        name = "uwuloadpallet",
        coords = vector3(858.61, -3202.61, 5.99),
        length = 1,
        width = 1.5,
        heading = 0,
        debugPoly = false,
        minZ = 3.39,
        maxZ = 7.39,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:menu:uwuloadpallet",
                icon = "far fa-clipboard",
                label = "Load Pallets",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwucoldstorage"] = {
        name = "uwucoldstorage",
        coords = vector3(-589.4945, -1067.032, 22.3442),
        length = 4.5,
        width = 3.8,
        heading = 90,
        debugPoly = false,
        minZ = 21.36,
        maxZ = 24,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:FoodStorage",
                icon = "far fa-clipboard",
                label = "Open Cold Storage",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwustorage"] = {
        name = "uwustorage",
        coords = vector3(-585.95, -1055.31, 22.34),
        length = 1,
        width = 1.5,
        heading = 0,
        debugPoly = false,
        minZ = 19.54,
        maxZ = 23.54,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:Storage",
                icon = "far fa-clipboard",
                label = "Open Dry Storage",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwuoven"] = {
        name = "uwuoven",
        coords = vector3(-590.87, -1059.76, 22.34),
        length = 1,
        width = 1,
        heading = 90,
        debugPoly = false,
        minZ = 21.36,
        maxZ = 23.48,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:menu:ovenstation",
                icon = "far fa-clipboard",
                label = "Oven",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwustove"] = {
        name = "uwustove",
        coords = vector3(-591.15, -1056.55, 22.34),
        length = 1,
        width = 1,
        heading = 90,
        debugPoly = false,
        minZ = 21.40,
        maxZ = 22.80,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:menu:foodstation",
                icon = "far fa-clipboard",
                label = "Stove",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwudrinkmaker"] = {
        name = "uwudrinkmaker",
        coords = vector3(-586.79, -1061.93, 22.22),
        length = 1,
        width = 1,
        heading = 90,
        debugPoly = false,
        minZ = 22.22,
        maxZ = 23,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:menu:DrinkMenu",
                icon = "far fa-clipboard",
                label = "Drink Maker",
                job = "uwu",
            },
        },
        distance = 3.0
    },
    ["uwumixingcounter"] = {
        name = "uwumixingcounter",
        coords = vector3(-591.05, -1063.29, 22.27),
        length = 1,
        width = 3,
        heading = 90,
        debugPoly = false,
        minZ = 21.36,
        maxZ = 23.11,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:menu:mixingstation", 
                icon = "far fa-clipboard",
                label = "Mixing Station",
                job = "uwu",
            },
        },
        distance = 3.0
    },

This can go into all versions of qb-target config.lua [for older versions] or init.lua [for newer versions]
If you don't got a guy out back with a garage menu this is the problem.

Put this under Config.TargetModels = {
    ['UwuGarage'] = {
		models = {
		    `csb_talcc`,
		},
		options = {
            {
                type = 'client',
                targeticon = 'fas fa-eye', 
            	event = 'qb-uwujob:menu:garage',
                icon = 'fas fa-car',
				label = 'Uwu Garage',
                job = 'uwu',
                canInteract  = function(entity) -- This is the action it has to perform, this REPLACES the event and this is OPTIONAL
                    local dist = #(GetEntityCoords(PlayerPedId()) - vector3(-601.6424, -1054.401, 22.545585))
                    if dist > 6 then
                        return false  -- This will return false if the entity interacted with is a player and otherwise returns true
                    elseif dist < 7 then 
                        return true 
                    end
                end,
            },
		},
		distance = 3.0
	},




under /html/js/lawyers.js in qb-phone

Under this: 
	SetupLawyers = function(data) {
	    SetupLawyers = function(data) {
        $(".lawyers-list").html("");
        var lawyers = [];
        var realestate = [];
        var hayes = [];
        var taxi = [];
        var ambulance = [];
		(addhere)

add this where it says (addhere) above:
		
		var uwu = []; 

then under this:

			if (lawyer.typejob == "realestate") {
                realestate.push(lawyer);
            }

add this: 

			if (lawyer.typejob == "uwu") {
                uwu.push(lawyer);
            }

			


Then under this:
	
		$(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(255, 0, 0);">Ambulance (' + ambulance.length + ')</h1>');

        if (ambulance.length > 0) {
            $.each(ambulance, function(i, lawyer5) {
                var element = '<div class="lawyer-list" id="lawyerid5-' + i + '"> <div class="lawyer-list-firstletter" style="background-color: rgb(255, 0, 0);">' + (lawyer5.name).charAt(0).toUpperCase() + '</div> <div class="lawyer-list-fullname">' + lawyer5.name + '</div> <div class="lawyer-list-call"><i class="fas fa-phone"></i></div> </div>'
                $(".lawyers-list").append(element);
                $("#lawyerid5-" + i).data('LawyerData', lawyer5);
            });
        } else {
            var element = '<div class="lawyer-list"><div class="no-lawyers">There is no ems available.</div></div>'
            $(".lawyers-list").append(element);
        }


Add this :
		$(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(255, 192, 203);">Uwu Cafe (' + uwu.length + ')</h1>');

        if (uwu.length > 0) {
            $.each(uwu, function(i, lawyer8) {
                var element = '<div class="lawyer-list" id="lawyerid8-' + i + '"> <div class="lawyer-list-firstletter" style="background-color: rgb(255, 192, 203);">' + (lawyer8.name).charAt(0).toUpperCase() + '</div> <div class="lawyer-list-fullname">' + lawyer8.name + '</div> <div class="lawyer-list-call"><i class="fas fa-phone"></i></div> </div>'
                $(".lawyers-list").append(element);
                $("#lawyerid8-" + i).data('LawyerData', lawyer8);
            });
        } else {
            var element = '<div class="lawyer-list"><div class="no-lawyers">There is no delivery drivers available.</div></div>'
            $(".lawyers-list").append(element);
        }



Then under this:

		$(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(255, 0, 0);">Ambulance (' + ambulance.length + ')</h1>');

        var element = '<div class="lawyer-list"><div class="no-lawyers">There are no ambulance personnel a available.</div></div>'
        $(".lawyers-list").append(element);

add this:

		$(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(1, 69, 35);">Uwu Cafe (' + uwu.length + ')</h1>');

        var element = '<div class="lawyer-list"><div class="no-lawyers">There are no Uwu Delivery Drivers available.</div></div>'
        $(".lawyers-list").append(element);



find this under qb-phone/server/main.lua

	QBCore.Functions.CreateCallback('qb-phone:server:GetCurrentLawyers', function(source, cb)
    local Lawyers = {}
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        local Player = QBCore.Functions.GetPlayer(v)
        if Player ~= nil then
            if (Player.PlayerData.job.name == "lawyer" or Player.PlayerData.job.name == "realestate" or
                Player.PlayerData.job.name == "hayes" or Player.PlayerData.job.name == "taxi" or
                Player.PlayerData.job.name == "police" or Player.PlayerData.job.name == "ambulance" or
                Player.PlayerData.job.name == "burgershot" or Player.PlayerData.job.name == "pizzathis" or 
                Player.PlayerData.job.name == "uwu" or Player.PlayerData.job.name == "bahama" or 
                Player.PlayerData.job.name == "mechanic") and Player.PlayerData.job.onduty then
                Lawyers[#Lawyers+1] = {
                    name = Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname,
                    phone = Player.PlayerData.charinfo.phone,
                    typejob = Player.PlayerData.job.name
                }
            end
        end
    end
    cb(Lawyers)
end)


Replace with this:

	QBCore.Functions.CreateCallback('qb-phone:server:GetCurrentLawyers', function(source, cb)
        local Lawyers = {}
        for k, v in pairs(QBCore.Functions.GetPlayers()) do
            local Player = QBCore.Functions.GetPlayer(v)
            if Player ~= nil then
                if (Player.PlayerData.job.name == "lawyer" or Player.PlayerData.job.name == "realestate" or
                    Player.PlayerData.job.name == "hayes" or Player.PlayerData.job.name == "taxi" or
                    Player.PlayerData.job.name == "police" or Player.PlayerData.job.name == "ambulance" or
                    Player.PlayerData.job.name == "burgershot" or Player.PlayerData.job.name == "pizzathis" or 
                    Player.PlayerData.job.name == "uwu" or Player.PlayerData.job.name == "bahama" or 
                    Player.PlayerData.job.name == "mechanic") and Player.PlayerData.job.onduty then
                    Lawyers[#Lawyers+1] = {
                        name = Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname,
                        phone = Player.PlayerData.charinfo.phone,
                        typejob = Player.PlayerData.job.name
                    }
                end
            end
        end
        cb(Lawyers)
    end)

Add this to qb-management cl_config.lua

under Config.BossMenus add

    ['uwu'] = {
        vector3(-577.5565, -1067.565, 26.614078),
    },

under Config.BossMenuszone  add this

    ['uwu'] = {
        { coords = vector3(-578.36, -1066.95, 26.614078), length = 0.35, width = 0.45, heading = 351.0, minZ = 26.33, maxZ = 27.38 }, -- DONE
    },

Note: qb-management uses sql to keep track of social accounts make sure and add uwu job to it. If you dont it will not keep track of 
    your uwu social bank accounts or in and out money. Don't forget to do this. 
NOTE2: if you are using ANYTHING other than qb-management you will have to change your EXPORTS in Server.lua to manage the society money. 
Thinking about putting in a Config.societysystem option to make this easier but i got other fish to fry. if you contact me i might help you
convert it for your system if i got time. If i do convert one, i'll note the changes in server.lua so you can just Download the file 
and overwrite yours.
have fun.. Discord = MechoMancer#9139

Tip: If you aint got nuthing nice to say, lick my gootch from the back of my iggy bin.