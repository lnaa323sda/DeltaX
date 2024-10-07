CheckNPC = getnilinstances()
for r, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    table.insert(CheckNPC, v)
end
for r, v in pairs(CheckNPC) do
if v.Name == "Legendary Sword Dealer" then
urlLegSword = "https://discord.com/api/webhooks/1283638463672881172/rkb5uugZDQvLOL4epJSI51zf1VXLPcvdh4daCm0PzcFrZ7bsYVeYKuF9hhbCheLGet2R"
    for i,v in pairs(game.Players:GetPlayers()) do
        CheckPlayer = i
    end
ScriptJoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,'..'\''..tostring(game.JobId)..'\''..')'
local LegSwordHook = {
	["content"] = "",
	["embeds"] = {
        {
            ["title"] = "<:caubebutchi:1158380587367792710>** KAY Webhooks Status**",
            ["description"] = "",
            ["color"] = 16250357,
            ["type"] = "rich",
            ["fields"] =  {
                                {
                                    ["name"] = "<:emoji_116:1160520388728594462> **sword spawn **",
                                    ["value"] = '```diff\n - ```',
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "🔹Player Server <:emoji_119:1159373984140374066>",
                                    ["value"] = '```yml\n'..CheckPlayerMystic..'/12\n```',
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "**Job ID :**",
                                    ["value"] = '```yml\n'..game.JobId..'```',
                                    ["inline"] = false
                                },
                                                                                {
                                    ["name"] = "**Script :**",
                                    ["value"] = '```lua\n'..ScriptJoinServer..'\n```',
                                    ["inline"] = true
                                },
            },
                ["image"] = {
                ["url"] = "https://cdn.discordapp.com/attachments/1158737294904270868/1159375097564500009/1600w-kr3cNyU0eFE.jpg?ex=6530cb33&is=651e5633&hm=609a6d1ad62cc9a0bb03879005df2e57e7665214b31ec68173f5f505eb7324ce&",
                },
            ["footer"] = {
                ["text"] = "Yesterday at "..os.date("%H:%M")
            }
        }
},
}
local newdata = game:GetService("HttpService"):JSONEncode(LegSwordHook)
local headers = {["content-type"] = "application/json"}
request = http_request or request or HttpPost or syn.request
local Send = {Url = urlLegSword, Body = newdata, Method = "POST", Headers = headers}
request(Send)
end
end