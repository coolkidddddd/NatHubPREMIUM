local premium = true -- force premium mode

local supportedGames = {
    [7436755782] = "https://api.luarmor.net/files/v4/loaders/483d639ad74a7814ff1057d68cec56c2.lua", -- Grow a Garden
    [7018190066] = "https://api.luarmor.net/files/v4/loaders/d3a76114c1ea182127b88170b6043d11.lua", -- Dead Rails
    [5750914919] = "https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/fisch.lua", -- Fisch
    [6325068386] = "https://api.luarmor.net/files/v4/loaders/a0ad31cf58a8bd98dd82fa1fb648290f.lua", -- BLR
    [4777817887] = "https://api.luarmor.net/files/v4/loaders/d53370331c9ca16ce3479c3ac6ae5a78.lua", -- Bladeball
    [7095682825] = "https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/beaks.lua", -- Beaks
    [994732206]  = "https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/bf.lua" -- Blox Fruit
}

local gameNames = {
    [5750914919] = "Fisch",
    [7018190066] = "Dead Rails",
    [6325068386] = "Blue Lock Rivals",
    [4777817887] = "Blade Ball",
    [7436755782] = "GaG",
    [7095682825] = "Beaks",
    [994732206]  = "Blox Fruit"
}

local gameId = game.GameId
if supportedGames[gameId] then
    game.StarterGui:SetCore("SendNotification", {
        Title = "NatHub Loaded! (Premium)",
        Text = gameNames[gameId] .. " Script Loaded!",
        Icon = "rbxassetid://99764942615873",
        Duration = 5
    })

    local game_url = game:HttpGet(supportedGames[gameId])
    loadstring(game_url)()
else
    game.StarterGui:SetCore("SendNotification", {
        Title = "NatHub Error!",
        Text = "You Execute Non Supported Game",
        Icon = "rbxassetid://99764942615873",
        Duration = 5
    })
end
