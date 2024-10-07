
--Made by ducdesigner
--dm bạn định làm gì vậy
B_426 = game.PlaceId
B_423 = "place"
B_444 = "Market"..B_423.."Service"

local B_424 = game:GetService(B_444):GetProductInfo(B_426);
local B_425 = B_424.Name

local MoonCheck = {
    ['2'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
    ['1'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
};

for i, v in pairs(MoonCheck) do
if  game:GetService("Lighting").Sky.MoonTextureId == tonumber(i) or game:GetService("Lighting").Sky.MoonTextureId == v then
    if World3 then
    local Moon = {
        ['8'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
        ['7'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
        ['6'] = "http://www.roblox.com/asset/?id=9709143733", -- 🌗
        ['5'] = "http://www.roblox.com/asset/?id=9709150401", -- 🌘
        ['4'] = "http://www.roblox.com/asset/?id=9709135895",  -- 🌑
        ['3'] = "http://www.roblox.com/asset/?id=9709139597", -- 🌒
        ['2'] = "http://www.roblox.com/asset/?id=9709150086", -- 🌓
        ['1'] = "http://www.roblox.com/asset/?id=9709149680", -- 🌔
    };
    
    for i, v in pairs(Moon) do
        if game:GetService("Lighting").Sky.MoonTextureId == v then
            MoonPercent = i / 8 * 100
        end
    end
    
    for i, v in pairs(game.Players:GetPlayers()) do
        PlayersMin = i
    end
    
    if game:GetService("Lighting").Sky.MoonTextureId == Moon['1'] then
        MoonIcon = '🌔'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['2'] then
        MoonIcon = '🌓'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['3'] then
        MoonIcon = '🌒'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['4'] then
        MoonIcon = '🌑'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['5'] then
        MoonIcon = '🌘'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['6'] then
        MoonIcon = '🌘'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['7'] then
        MoonIcon = '🌖'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] then
        MoonIcon = '🌕'
    end
    MoonMessage = '```' .. tostring(MoonPercent .. '%' .. ' : ' .. MoonIcon) .. '```'

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
                ["description"] = "Server bot đang ở !",
                ["color"] = tonumber(0x00FF00),
                ["fields"] = {
                    {
                        ["name"] = "👥 **Players** 👥",
                        ["value"] = MoonMessage,
                        ["inline"] = true
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