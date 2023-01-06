Cyclus = {}

-- Server naam die word gedisplayed in de header van het board.
Cyclus.ServerNaam = 'Cyclus Scripts'

-- Naam die als interactie in de box word gedisplayed.
Cyclus.NaamBox1 = 'Winkel Overval'
Cyclus.NaamBox2 = 'Juwelier Overval'
Cyclus.NaamBox3 = 'Bank Overval'
Cyclus.NaamBox4 = 'Humane Labs'

-- Toetsenbord key, om scoreboard mee te openen. (https://docs.fivem.net/docs/game-references/controls/)
Cyclus.ControlKey = 212 -- TAB

-- Job die word gechecked, om te checken of er genoeg politie is voor de actie.
Cyclus.PolitieJob = 'police'

-- NIET AANRAKEN
Cyclus.CurrentWouten = 0

-- Max spelers die in jou server kunnen, enkel het getal aanpassen indien nodig!
Cyclus.MaxSpelers = GetConvarInt('sv_maxclients', 64)

-- Print die om de x aantal seconden word verstuurd, om op de hoogte te worden gehouden van elke keer dat het scoreboard word geupdate!
Cyclus.Print = true -- true = aan  |  false = uit

-- 
Cyclus.IllegaleActies = {
    ["winkeloverval"] = {
        minimum = 1,
        busy = false, -- Trigger: TriggerEvent("cyclus-scoreboard:client:ActiviteitBezig", "winkeloverval", true/false)
    },
    ["bankoverval"] = {
        minimum = 2,
        busy = false, -- Trigger: TriggerEvent("cyclus-scoreboard:client:ActiviteitBezig", "bankoverval", true/false)
    },
    ["juwelieroverval"] = {
        minimum = 6,
        busy = false, -- Trigger: TriggerEvent("cyclus-scoreboard:client:ActiviteitBezig", "juwelieroverval", true/false)
    },
    ["humaneheist"] = {
        minimum = 8,
        busy = false, -- Trigger: TriggerEvent("cyclus-scoreboard:client:ActiviteitBezig", "humaneheist", true/false)
    },
}



-- RegisterCommand("scoreboard-test", function()
--     TriggerServerEvent("cyclus-scoreboard:server:ActiviteitBezig", "winkeloverval", true)
--     Citizen.Wait(5000)
--     TriggerServerEvent("cyclus-scoreboard:server:ActiviteitBezig", "winkeloverval", false)
-- end)