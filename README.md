# weather_zones
Simple Way to Create Multiple Weather Zone 

```
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
```
