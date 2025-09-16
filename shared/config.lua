Config = {}

Config.Lootboxes = {
    ["bronze_box"] = {
        label = "Bronze Lootbox",
        rewards = {
            { item = "bread",   label = "Pain",    chance = 50, count = { 1, 3 } }, -- 50% d’obtenir du pain (minimum 1, maximum 3)
            { item = "water",   label = "Eau",     chance = 30, count = { 1, 2 } }, -- 30%
            { item = "diamond", label = "Diamant", chance = 15, count = { 1, 1 } }, -- 15%
            { item = "sponge",  label = "Eponge",  chance = 5,  count = { 1, 1 } }  -- 5%
        }
    },
    ["gold_box"] = {
        label = "Gold Lootbox",
        rewards = {
            { item = "WEAPON_PISTOL_MK2",      label = "Pistolet MK2", chance = 20, count = { 1, 1 } },
            { item = "WEAPON_REVOLVER",        label = "Revolver",     chance = 70, count = { 1, 1 } },
            { item = "WEAPON_PUMPSHOTGUN_MK2", label = "Shotgun MK2",  chance = 10, count = { 1, 1 } },
        }
    }
}
