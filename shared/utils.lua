function getRandomReward(rewards)
    local total = 0
    for _, r in ipairs(rewards) do
        total = total + r.chance
    end
    local rnd = math.random(1, total)
    local cumul = 0
    for _, r in ipairs(rewards) do
        cumul = cumul + r.chance
        if rnd <= cumul then
            return r
        end
    end
end
