# mt-delivery
Simple delivery job for QBCore 

# Preview
https://youtu.be/-xsnO4FDd3U

# Installation

Add to qb-core/shared/items.lua

```
	--mt-delivery
	["delivery_box"]     = {["name"] = "delivery_box", 				    ["label"] = "Delivery Box", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "delivery_box.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["delivery_recive"]     = {["name"] = "delivery_recive", 				    ["label"] = "Delivery Recive", 					["weight"] = 0, 		["type"] = "item", 			["image"] = "delivery_recive.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

```

Add to qb-target/init.lua:

At Config.Peds:
```
    { --mt-delivery
        model = 'a_f_y_rurmeth_01',
        coords = vector4(10.18, -1604.18, 28.37, 221.03),
        gender = 'female',
        freeze = true,
        invincible = false,
        blockevents = false,
    },
```

At Config.TargetModels:
```
    ["deliveryped"] = {
        models = {
            "a_f_y_rurmeth_01",
        },
        options = {
            {
                type = "client",
                event = "mt-delivery:client:PedirEntrega",
                icon = "fas fa-taco", 
                label = "Request Delivery",
            },
            {
                type = "client",
                event = "mt-delivery:client:ReceberPagamento",
                icon = "fas fa-dolar", 
                label = "Recive Payment",
                item = "delivery_recive",
            }
        },
        distance = 2.5,
    },
    ```
    
    # Dependicies
    
    - qb-core - https://github.com/qbcore-framework/qb-core
    - qb-target - https://github.com/qbcore-framework/qb-target
