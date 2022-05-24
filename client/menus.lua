
--Targets: These are normaly added in the qb-targets config.lua file, I did this for you. Love MechoMancer!!
--Only works with qb-target over version 3.0.0 i think im running 5.something works fine for me.
Citizen.CreateThread(function()

    exports['qb-target']:AddBoxZone("uwucounter1", vector3(-585.41, -1062.95, 22.34), 1, 1.7, {
        name = "uwucounter1",
        heading = 359,
        debugPoly = false,
        minZ = 18.5,
        maxZ = 22.5,
    }, {
        options = {
            {
                type = "client",
                event = "qb-uwujob:uwucounter1",
                icon = "far fa-clipboard",
                label = "Uwu Counter 1",
                targeticon = "fas fa-eye",
                job = "uwu",
            },

        },
        distance = 3.0
    })

    exports['qb-target']:AddBoxZone("uwucounter2", vector3(-584.04, -1060.42, 22.34), 0.8, 1.4, {
        name = "uwucounter2",
        heading = 270,
        debugPoly = false,
        minZ = 18.39,
        maxZ = 22.39,
    }, {
        options = {
            {
                type = "client",
                event = "qb-uwujob:uwucounter2",
                icon = "far fa-clipboard",
                label = "Uwu Counter 2",
                targeticon = "fas fa-eye",
                job = "uwu",
            },

        },
        distance = 3.0
    })


    exports['qb-target']:AddBoxZone("kitchencounter", vector3(-587.34, -1059.63, 22.26), 1.4, 2.3, {
        name = "kitchencounter",
        heading = 90,
        debugPoly = false,
        minZ = 22.26,
        maxZ = 23.12,
    }, {
        options = {
            {
                type = "client",
                event = "qb-uwujob:kitchencounter",
                icon = "far fa-clipboard",
                label = "Kitchen Counter",
                targeticon = "fas fa-eye",
                job = "uwu",
            }
        },
        distance = 3.0
    })

    exports['qb-target']:AddBoxZone("uwuunloadpallet", vector3(-598.04, -1065.43, 21.36), 6, 7, {
        name = "uwuunloadpallet",
        heading = 90,
        debugPoly = false,
        minZ = 21.36,
        maxZ = 24,
    }, {
        options = {
            {
                type = "client",
                targeticon = "fas fa-eye",
                event = "qb-uwujob:menu:unpackpalletmenu",
                icon = "far fa-clipboard",
                label = "Unload Ingredients",
                job = "uwu",
            }
        },
        distance = 3.0
    })

    exports['qb-target']:AddBoxZone("uwuloadpallet", vector3(858.61, -3202.61, 5.99), 1, 1.5, {
        name = "uwuloadpallet",
        heading = 0,
        debugPoly = false,
        minZ = 3.39,
        maxZ = 7.39,
    }, {
        options = {
            {
                type = "client",
                targeticon = "fas fa-eye",
                event = "qb-uwujob:menu:uwuloadpallet",
                icon = "far fa-clipboard",
                label = "Load Pallets",
                job = "uwu",
            }
        },
        distance = 3.0
    })

    exports['qb-target']:AddBoxZone("uwucoldstorage", vector3(-589.4945, -1067.032, 22.3442), 4.5, 3.8, {
        name = "uwucoldstorage",
        heading = 90,
        debugPoly = false,
        minZ = 21.36,
        maxZ = 24,
    }, {
        options = {
            {
                type = "client",
                targeticon = "fas fa-eye",
                event = "qb-uwujob:FoodStorage",
                icon = "far fa-clipboard",
                label = "Open Cold Storage",
                job = "uwu",
            }
        },
        distance = 3.0
    })

    exports['qb-target']:AddBoxZone("uwustorage", vector3(-585.95, -1055.31, 22.34), 1, 1.5, {
        name = "uwustorage",
        heading = 0,
        debugPoly = false,
        minZ = 19.54,
        maxZ = 23.54,
    }, {
        options = {
            {
                type = "client",
                targeticon = "fas fa-eye",
                event = "qb-uwujob:Storage",
                icon = "far fa-clipboard",
                label = "Open Dry Storage",
                job = "uwu",
            }
        },
        distance = 3.0
    })

    exports['qb-target']:AddBoxZone("uwuoven", vector3(-590.87, -1059.76, 22.34), 1, 1, {
        name = "uwuoven",
        heading = 90,
        debugPoly = false,
        minZ = 21.36,
        maxZ = 23.48,
    }, {
        options = {
            {
                type = "client",
                targeticon = "fas fa-eye", 
                event = "qb-uwujob:menu:ovenstation",
                icon = "far fa-clipboard",
                label = "Oven",
                job = "uwu",
            }
        },
        distance = 3.0
    })

    exports['qb-target']:AddBoxZone("uwustove", vector3(-591.15, -1056.55, 22.34), 1, 1, {
        name = "uwustove",
        heading = 90,
        debugPoly = false,
        minZ = 21.40,
        maxZ = 22.80,
    }, {
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:menu:foodstation",
                icon = "far fa-clipboard",
                label = "Stove",
                job = "uwu",
            }
        },
        distance = 3.0
    })

    exports['qb-target']:AddBoxZone("uwudrinkmaker", vector3(-586.79, -1061.93, 22.22), 1, 1, {
        name = "uwudrinkmaker",
        heading = 90,
        debugPoly = false,
        minZ = 22.22,
        maxZ = 23,
    }, {
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-uwujob:menu:DrinkMenu",
                icon = "far fa-clipboard",
                label = "Drink Maker",
                job = "uwu",
            }
        },
        distance = 3.0
    })

    exports['qb-target']:AddBoxZone("uwumixingcounter", vector3(-591.05, -1063.29, 22.27), 1, 3, {
        name = "uwumixingcounter",
        heading = 90,
        debugPoly = false,
        minZ = 21.36,
        maxZ = 23.11,
    }, {
        options = {
            {
            type = "client",
            targeticon = 'fas fa-eye', 
            event = "qb-uwujob:menu:mixingstation", 
            icon = "far fa-clipboard",
            label = "Mixing Station",
            job = "uwu",
            }
        },
        distance = 3.0
    })

    exports['qb-target']:AddBoxZone("uwuregister1", vector3(-584.03, -1061.46, 22.34), 0.3, 0.4, {
        name = "uwuregister1",
        heading = 346,
        debugPoly = false,
        minZ = 18.54,
        maxZ = 22.54,
    }, {
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye',
                event = "qb-uwujob:menu:registermenu",
                icon = "far fa-clipboard",
                label = "Uwu Register 1",
                job = "uwu",
            }
        },
        distance = 3.0
    })

    exports['qb-target']:AddBoxZone("uwuregister2", vector3(-584.07, -1058.75, 22.34), 0.3, 0.4, {
        name = "uwuregister2",
        heading = 9,
        debugPoly = false,
        minZ = 18.54,
        maxZ = 22.54,
    }, {
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye',
                event = "qb-uwujob:menu:registermenu",
                icon = "far fa-clipboard",
                label = "Uwu Register 2",
                job = "uwu",
            }
        },
        distance = 3.0
    })
end)