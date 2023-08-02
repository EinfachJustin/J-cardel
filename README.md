# j_delcar

## Description

This is a FiveM script for an interactive marker that causes damage to a vehicle and then destroys it when the player interacts with the marker.

## Requirements

- [es_extended](https://github.com/ESX-Org/es_extended) - This script requires the es_extended framework to be installed.

## Installation

1. Make sure you meet the requirements mentioned above.
2. Download the script and place it in the `resources` folder of your FiveM server.
3. Add the following entry to your `server.cfg`:ensure j_delcar
4. Restart your FiveM server.

## Configuration

You can customize the marker coordinates, size, color, interaction distance, vehicle damage amount, and smoke effect in the `config.lua` file.

```lua
Config = {}

-- Marker properties
Config.Markers = {
    {
        pos = vector3(-371.5264, -120.4070, 37.7),
        type = 1, -- 1 = Cylinder Marker, 2 = Normal Marker, 3 = Navigation
        size = vector3(3.0, 3.0, 1.5),
        color = { r = 10, g = 175, b = 175, a = 1000 }, -- Green color with 1000 opacity
    },
    -- Add more marker configurations if needed
}

-- Interaction distance
Config.InteractionDistance = 3.0

-- Damage amount for the vehicle
Config.DamageAmount = 100

-- Particle effect for smoke
Config.SmokeParticleEffect = "veh_respray_smoke"

-- Delay before vehicle deletion
Config.VehicleDeletionDelay = 5000
```
## License
// This script is released under the MIT License. See LICENSE for more information.

## Author
This script was created by "e1nfachjustin" (https://github.com/EinfachJustin).

If you have any questions or issues with the script, feel free to contact me.


