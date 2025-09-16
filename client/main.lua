RegisterNetEvent('old_lootbox:showReward', function(boxName, rewardItem, amount)
    local box = Config.Lootboxes[boxName]

    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "open_case",
        box = boxName,
        rewards = box.rewards,
        rewardItem = rewardItem,
        amount = amount,
        testMode = true
    })
end)


RegisterNUICallback('close_case', function(data, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)


RegisterNUICallback("give_reward", function(data, cb)
    local item = data.item
    local amount = data.amount or 1

    TriggerServerEvent("old_lootbox:giveReward", item, amount)

    cb("ok")
end)
