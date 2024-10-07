
--Made by ducdesigner
--dm bạn định làm gì vậy
B_426 = game.PlaceId
B_423 = "place"
B_444 = "Market"..B_423.."Service"

local B_424 = game:GetService(B_444):GetProductInfo(B_426);
local B_425 = B_424.Name

local webhook1 = request({
    Url = "https://discord.com/api/webhooks/1283638463672881172/rkb5uugZDQvLOL4epJSI51zf1VXLPcvdh4daCm0PzcFrZ7bsYVeYKuF9hhbCheLGet2R",
    Method = "POST",
    Headers = {
        ["content-type"] = "application/json"
    },
    Body = game:GetService("HttpService"):JSONEncode({
        ["content"] = "",
        ["embeds"] = {
            {
                ["title"] = "**FREE FIRE HUB**",
                ["description"] = "He He lộ id rồi nhé",
                ["color"] = tonumber(0x00FF00),
                ["fields"] = {
                    {
                        ["name"] = "👥 **Players** 👥",
                        ["value"] = '```' .. tostring(MoonPercent .. '%' .. ' : ' .. MoonIcon) .. '```',
                        ["inline"] = false
                    },
                    {
                        ["name"] = "🗺️ **Id Map** 🗺️",
                        ["value"] = '```' .. tostring(game.JobId) .. '```',
                        ["inline"] = false
                    }
                },
                ["image"] = {
                    ["url"] = "https://i.pinimg.com/originals/fb/cd/87/fbcd879075506a7fe16856225049be4a.gif"
                },
                ["thumbnail"] = {
                    ["url"] = ""
                },
                ["footer"] = {
                    ["text"] = "FREE FIRE HUB | " .. os.date("%H:%M:%S"),
                    ["icon_url"] = ""
                }
            }
        }
    })
})
print(webhook1.StatusCode)