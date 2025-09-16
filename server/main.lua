exports('openLootBox', function(event, item, inventory, slot, data)
    if event == 'usingItem' then
        local box = Config.Lootboxes[item.name]
        if box then
            local boxName = item.name
            local src = inventory.id

            local reward = getRandomReward(box.rewards)
            local amount = math.random(reward.count[1], reward.count[2])

            TriggerClientEvent('old_lootbox:showReward', src, boxName, reward.item, amount)
            return true
        else
            print(("[old_lootBox] L'item %s n'est pas configuré comme une lootbox."):format(item.name))
        end
        return
    end
end)

RegisterNetEvent("old_lootbox:giveReward", function(item, amount)
    local src = source

    if item and amount and amount > 0 then
        exports.ox_inventory:AddItem(src, item, amount)
    end
end)
