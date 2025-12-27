Config = {}

-- Location of the fraud NPC
Config.NPCLocation = vector4(278.04, 266.47, 104.64, 334) -- Behind Pacific Bank

-- Items that can be sold
Config.SellItems = {
    ["forgedcheck"] = { price = 2000, label = "Forged Check" },
    ["stolendebitcard"] = { price = 500, label = "Stolen Debit Card" },
    ["stolencreditcard"] = { price = 1000, label = "Stolen Credit Card" }
}
