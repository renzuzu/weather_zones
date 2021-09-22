Config = {}

Config.DefaultWeather = 'CLEAR' -- DEFAULT Weather if no Zones in Area
Config.WeathersZones = {
    [1] = { -- mirror park
        coord = vector3(1317.0073242188,-559.03967285156,72.170654296875), -- x y z coords
        weathertype = 'THUNDER',
        radius = 100.0,
    },
    [2] = { -- sandy shores
        coord = vector3(1487.3907470703,3165.5197753906,117.73022460938), -- x y z coords
        weathertype = 'XMAS',
        radius = 500.0,
        timecycles = 'int_extlight_small_fog',
        extratimecycle = 'heist_boat_norain'
    },
    -- add more here
}

-- you need to turn off your other weather script to make the weather persistent

--  WEATHER TYPES

-- BLIZZARD = 0x27EA2814
-- CLEAR = 0x36A83D84
-- CLEARING = 0x6DB1A50D
-- CLOUDS = 0x30FDAF5C
-- EXTRASUNNY = 0x97AA0A79
-- FOGGY = 0xAE737644
-- HALLOWEEN = 0xC91A3202
-- NEUTRAL = 0xA4CA1326
-- OVERCAST = 0xBB898D2D
-- RAIN = 0x54A69840
-- SMOG = 0x10DCF4B5
-- SNOW = 0xEFB6EFF6
-- SNOWLIGHT = 0x23FB812B
-- THUNDER = 0xB677829F
-- XMAS = 0xAAC9C895

-- TIME CYCLES and EXTRA timecycles
-- https://wiki.rage.mp/index.php?title=Timecycle_Modifiers