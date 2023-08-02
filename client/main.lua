ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for _, markerData in ipairs(Config.Markers) do
            DrawMarker(
                markerData.type,
                markerData.pos.x,
                markerData.pos.y,
                markerData.pos.z - 0.95,
                0, 0, 0, 0, 0, 0,
                markerData.size.x,
                markerData.size.y,
                markerData.size.z,
                markerData.color.r,
                markerData.color.g,
                markerData.color.b,
                markerData.color.a,
                false, true, 2, false, nil, nil, false
            )

            local playerCoords = GetEntityCoords(PlayerPedId())
            local distance = #(playerCoords - markerData.pos)

            if distance < 3.0 then
                ESX.Game.Utils.DrawText3D(markerData.pos, Config.Text3D, 1.0)
                if IsControlJustReleased(0, 38) then
                    local playerName = GetPlayerName(PlayerId())              
                    ESX.ShowNotification(Config.ShowNotification)

                    local vehicle = GetVehiclePedIsUsing(PlayerPedId())
                    if DoesEntityExist(vehicle) and IsEntityAVehicle(vehicle) then
                        if GetPedInVehicleSeat(vehicle, -1) == PlayerPedId() then
                            for door = 0, 5 do
                                SetVehicleDoorBroken(vehicle, door, false)
                                Citizen.Wait(1000)
                            end

                            local vehicleHealth = GetEntityHealth(vehicle)
                            if vehicleHealth > 100 then
                                SetVehicleEngineHealth(vehicle, vehicleHealth - 100)
                            else
                                SetVehicleEngineHealth(vehicle, 0)
                            end

                            local bodyHealth = GetVehicleBodyHealth(vehicle)
                            if bodyHealth > 100 then
                                SetVehicleBodyHealth(vehicle, bodyHealth - 100)
                            else
                                SetVehicleBodyHealth(vehicle, 0)
                            end

                            local vehCoords = GetEntityCoords(vehicle)
                            UseParticleFxAssetNextCall("core")
                            local particleEffect = StartParticleFxLoopedAtCoord(
                                Config.SmokeParticleEffect,
                                vehCoords.x, vehCoords.y, vehCoords.z + 0.5,
                                0.0, 0.0, 0.0, 1.0, false, false, false, false
                            )

                            Citizen.Wait(5000)

                            ESX.Game.DeleteVehicle(vehicle)
                            StopParticleFxLooped(particleEffect, 0)
                        end
                    end
                end
            end
        end
    end
end)
