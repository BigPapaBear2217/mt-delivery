local QBCore = exports['qb-core']:GetCoreObject()

-- Eventos

RegisterNetEvent('mt-delivery:client:PedirEntrega', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"argue"})
    QBCore.Functions.Progressbar('falar_empregada', 'TALIKNG TO EMPLYEE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    QBCore.Functions.Notify('You request a delivery! <br> Wait outside to employee prepare the delivery!', 'primary', 7500)
    
    Wait(Config.DeliveryWait)

    QBCore.Functions.Notify('The delivery request has been recived, now go at location in your map and give it to the customer', 'primary', 7500)
    TriggerServerEvent('mt-delivery:server:AdicionarItem')
    ExportDeliveryTarget()
    end)
end)

RegisterNetEvent('mt-delivery:client:BaterPorta', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"knock"})
    QBCore.Functions.Progressbar('falar_empregada', 'KNOCKING DOOR...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    QBCore.Functions.Notify('You deliveryed a food box, now go at taco deleviry center and recive payment', 'primary', 7500)

    TriggerServerEvent('mt-delivery:server:EntregarCaixa')
    end)
end)

RegisterNetEvent('mt-delivery:client:ReceberPagamento', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('falar_empregada', 'RECIVING PAYMENT...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()

        TriggerServerEvent('mt-delivery:server:ReceberPagamento')
    end)
end)

-- Funções

function ExportDeliveryTarget()
    local prob = math.random(1, 10)

    if prob == 1 then
        SetNewWaypoint(Config.DeliveryLoc1)
        ExportDeliveryTarget1()
    elseif prob == 2 then
        SetNewWaypoint(Config.DeliveryLoc2)
        ExportDeliveryTarget2()
    elseif prob == 3 then
        SetNewWaypoint(Config.DeliveryLoc3)
        ExportDeliveryTarget3()
    elseif prob == 4 then
        SetNewWaypoint(Config.DeliveryLoc4)
        ExportDeliveryTarget4()
    elseif prob == 5 then
        SetNewWaypoint(Config.DeliveryLoc5)
        ExportDeliveryTarget5()
    elseif prob == 6 then
        SetNewWaypoint(Config.DeliveryLoc6)
        ExportDeliveryTarget6()
    elseif prob == 7 then
        SetNewWaypoint(Config.DeliveryLoc7)
        ExportDeliveryTarget7()
    elseif prob == 8 then
        SetNewWaypoint(Config.DeliveryLoc8)
        ExportDeliveryTarget8()
    elseif prob == 9 then
        SetNewWaypoint(Config.DeliveryLoc9)
        ExportDeliveryTarget9()
    elseif prob == 10 then
        SetNewWaypoint(Config.DeliveryLoc10)
        ExportDeliveryTarget10()
    end
end

function ExportDeliveryTarget1()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc1, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Knock Door",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget2()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc2, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Knock Door",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget3()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc3, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Knock Door",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget4()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc4, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Knock Door",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget5()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc5, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Knock Door",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget6()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc6, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Knock Door",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget7()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc7, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Knock Door",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget8()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc8, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Knock Door",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget9()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc9, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Knock Door",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget10()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc10, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Knock Door",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end
