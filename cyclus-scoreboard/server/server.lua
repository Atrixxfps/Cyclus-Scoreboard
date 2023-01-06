ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


CreateThread(function()
    while true do
        local players = ESX.GetPlayers()
        local politie = 0
        local ambulance = 0
        local anwb = 0
        local brandweer = 0

        for i=1, #players, 1 do 
            local baan = ESX.GetPlayerFromId(players[i]).job.name

            if baan == "police" then
                politie = politie+1
            end
            if baan == "ambulance" then
                ambulance = ambulance+1
            end
            if baan == "mechanic" then
                anwb = anwb+1
            end
            if baan == "brandweer" then
                brandweer = brandweer+1
            end
        end
        TriggerClientEvent("cyclus-scoreboard:client:HulpdienstenSync", -1, politie, ambulance, anwb, brandweer)
        Citizen.Wait(1000)
        if Cyclus.Print then
            print("[DEV] cyclus-scoreboard:updated")
        end
    end
end)

ESX.RegisterServerCallback('cyclus-scoreboard:server:WoutenAanwezig', function(source, cb)
    local wouten = 0 
    local xPlayers = ESX.GetPlayers()


    for i=1, #xPlayers, 1 do
        local job = ESX.GetPlayerFromId(xPlayers[i]).job.name
        if job == Cyclus.PolitieJob then
            wouten = wouten + 1
        end
    end
    cb(wouten)
end)

ESX.RegisterServerCallback('cyclus-scoreboard:server:cyclus', function(source, cb)
    cb(Cyclus.IllegaleActies)
end)

RegisterServerEvent('cyclus-scoreboard:server:ActiviteitBezig')
AddEventHandler('cyclus-scoreboard:server:ActiviteitBezig', function(activity, bool)
    Cyclus.IllegaleActies[activity].busy = bool
    TriggerClientEvent('cyclus-scoreboard:client:ActiviteitBezig', -1, activity, bool)
end)