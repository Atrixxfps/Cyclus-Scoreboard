scoreboard = false
politie = 0
ambulance = 0
anwb = 0
brandweer = 0

CreateThread(function()
    while true do
        Citizen.Wait(3)
        if IsControlJustPressed(0, Cyclus.ControlKey) then
            if not scoreboard then
                ESX.TriggerServerCallback('cyclus-scoreboard:server:WoutenAanwezig', function(cops)
                    Cyclus.CurrentWouten = cops
                    SendNUIMessage({
                        action = 'open',
                        spelers = GetCurrentPlayers(),
                        maxSpelers = Cyclus.MaxSpelers,
                        serverNaam = Cyclus.ServerNaam,
                        naamBox1 = Cyclus.NaamBox1,
                        naamBox2 = Cyclus.NaamBox2,
                        naamBox3 = Cyclus.NaamBox3,
                        naamBox4 = Cyclus.NaamBox4,
                        vereisteWouten = Cyclus.IllegaleActies,
                        currentWouten = Cyclus.CurrentWouten,
                        politie = politie,
                        ambulance = ambulance,
                        anwb = anwb,
                        brandweer = brandweer
                    })
                    scoreboard = true
                end)
            end      
            if IsControlJustPressed(0, Cyclus.ControlKey) then
                if scoreboard then 
                    SendNUIMessage({
                        action = 'close',
                    })
                    scoreboard = false
                end
            end
        end
    end
end)

RegisterNetEvent("cyclus-scoreboard:client:HulpdienstenSync")
AddEventHandler("cyclus-scoreboard:client:HulpdienstenSync", function(polities, ambulances, anwbers, brandweerders)
    politie = polities
    ambulance = ambulances
    anwb = anwbers
    brandweer = brandweerders
end)

RegisterNetEvent('cyclus-scoreboard:client:ActiviteitBezig')
AddEventHandler('cyclus-scoreboard:client:ActiviteitBezig', function(activity, busy)
    Cyclus.IllegaleActies[activity].busy = busy
end)