Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local coord = GetEntityCoords(ped)
        for k,v in ipairs(Config.WeathersZones) do
            if #(coord - v.coord) < v.radius then
                SetWeatherTypeNow(v.weathertype)
                SetWeatherTypeNowPersist(v.weathertype)
                SetOverrideWeather(v.weathertype)
                if v.timecycles then
                    SetTimecycleModifier(v.timecycles)
                    SetExtraTimecycleModifier(v.extratimecycle)
                end
                while #(coord - v.coord) < v.radius  do
                    coord = GetEntityCoords(ped)
                    Wait(1500)
                end
                Default()
                Wait(500)
            end
        end
        Citizen.Wait(1000)
    end
end)

function Default()
    ClearOverrideWeather()
    ClearWeatherTypePersist()
    Wait(100)
    ClearExtraTimecycleModifier()
    ClearTimecycleModifier()
    SetOverrideWeather(Config.DefaultWeather)
    SetWeatherTypeNow(Config.DefaultWeather)
    SetWeatherTypeNowPersist(Config.DefaultWeather)
end