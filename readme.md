# 🎁 [old_lootbox] – Lootbox System

A complete **animated lootbox system** for your FiveM server.  

## ✨ Features
- Immersive opening with an **animated countdown (3..2..1..GO!)**  
- 🎰 Smooth roulette with **realistic slowing effect and central red line**  
- 💎 Configurable items in `Config.Lootboxes` with **probabilities and min/max quantities**  
- 📦 Item **labels and images automatically imported from [ox_inventory]**  
- 🎶 Dynamic *tick* sound effect during the spin  
- 🎉 Confetti and **highlighted reward with red gradient effect**  
- 👨‍💻 **UI built in React (Vite build)**  

---

## 🛠️ Dependency
This resource depends on:  
- [ox_inventory](https://overextended.dev/ox_inventory)  

---

## 📦 ox_inventory Items Configuration
You must add your lootbox items to `ox_inventory/data/items.lua`.  

Example:  

```lua
['gold_bow'] = {
    label = "Gold Box",
    weight = 1,
    stack = true,
    close = true,
    server = {
        export = "old_lootBox.openLootBox",
    }
},

['bronze_box'] = {
    label = "Bronze Box",
    weight = 1,
    stack = true,
    close = true,
    server = {
        export = "old_lootBox.openLootBox",
    }
},
```

---

## 🚀 How it works
1. Add your lootboxes in `Config.Lootboxes` (server-side) with items, probabilities and count ranges.  
2. Add the corresponding item definitions in `ox_inventory/items.lua` (see example above).  
3. When a player uses a lootbox item, the roulette UI will open:  
   - Countdown starts (3..2..1..GO!)  
   - Roulette spins with tick sound  
   - Slows down and stops exactly on the reward item  
   - Confetti and visual highlight  

---
