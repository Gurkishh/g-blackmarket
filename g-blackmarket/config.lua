Config = {}

Config.BotName = 'Gurkish' -- namn på botten
Config.WebHookName = 'Gurkish - Logs' --rubrik
Config.WebHook = ""
Config.Title = 'Gurkish' --Title, större text under rubrik
Config.IconURL = 'https://cdn.discordapp.com/attachments/966035555664146513/966036282440577125/whelvelogo5.png' -- Insert your desired image link
Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html


Config.AlignMenu = "left" -- Vilken sida menyn ska visas på.
-- Config.KopFood = vector3(-1392.08, -611.53, 30.32) -- Position för att köpa mat.
Config.Blackmarket = { -- Alla items för baren.
    ["Items"] = {
       
        {label = 'Tramadol 200mg <span style="color: orange;">100 KR</span>',  value = 'tramadol',     item = 'tramadol',price = 100, amount = 1},
        {label = 'Sobril 10 mg <span style="color: orange;">100 KR</span>',    value = 'sobril',       item = 'whisky', price = 100, amount = 1},
        {label = 'Morfin <span style="color: orange;">100 KR</span>',          value = 'morphine',     item = 'morphine', price = 100, amount = 1},
        {label = 'Adrenalin <span style="color: orange;">100 KR</span>',       value = 'adrenaline',   item = 'adrenaline', price = 100, amount = 1},
        {label = 'Hembränt <span style="color: orange;">100 KR</span>',        value = 'hb',           item = 'hb', price = 100, amount = 1},
        {label = 'Fackla <span style="color: orange;">100 KR</span>',          value = 'torch',        item = 'torch', price = 100, amount = 1},
        {label = 'Spary <span style="color: orange;">100 KR</span>',           value = 'spray',        item = 'spray', price = 100, amount = 1},


        
    }
}