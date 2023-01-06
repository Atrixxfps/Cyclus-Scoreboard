ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
    ESX.TriggerServerCallback('cyclus-scoreboard:server:cyclus', function(Cyclus)
        Cyclus.IllegaleActies = Cyclus
    end)
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)


function GetCurrentPlayers()
    local TotalPlayers = 0
    for _, player in ipairs(GetActivePlayers()) do
        TotalPlayers = TotalPlayers + 1
    end
    return TotalPlayers
end

AddEventHandler('onResourceStart', function()
    if GetCurrentResourceName() == 'cyclus-scoreboard' then
        return
    else
        print('Resource renamen is niet toegestaan')
        print('T.O.S overtreding opgemerkt en verzonden naar development.')
    end
end)