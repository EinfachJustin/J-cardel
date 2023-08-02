Config = {}

-- Marker properties
Config.Markers = {
    {
        pos = vector3(-374.5283, -106.7923, 38.6828),
        type = 1, -- 1 = Zylinder-Marker, 2 = Normaler Marker, 3 = Navigation
        size = vector3(3.0, 3.0, 0.5),
        color = { r = 10, g = 175, b = 175, a = 1000 }, -- Grüne Farbe mit 1000 Opazität
    },
    {
        pos = vector3(-366.2580, -109.4421, 39.6939),
        type = 0, -- 1 = Zylinder-Marker, 2 = Normaler Marker, 3 = Navigation
        size = vector3(2.0, 2.0, 1.0),
        color = { r = 0, g = 204, b = 0, a = 1000 }, -- Grüne Farbe mit 1000 Opazität
    },
    {
      pos = vector3(-355.9137, -115.1615, 39.6966),
      type = 2, -- Normaler Marker
      size = vector3(2.0, 2.0, 1.0),
      color = { r = 255, g = 0, b = 0, a = 1000 }, -- Grüne Farbe mit 1000 Opazität
  },
  -- Füge weitere Marker-Konfigurationen hinzu, wenn nötig
}

-- Particle effect for smoke
Config.SmokeParticleEffect = "veh_respray_smoke"

Config.Text3D = "Drücke [E] um das Fahrzeug auf den Appschlephof zu Bringen"
Config.ShowNotification = "Du hast das Fahrzeug auf den Appschlephof gebracht!"
