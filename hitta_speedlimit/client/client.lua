CreateThread(function()
    while true do
        local sleep = 0

        local playerPed = PlayerPedId()
        local InVehicle = IsPedInAnyVehicle(playerPed)
        local vehicle = GetVehiclePedIsIn(playerPed)
        local class = GetVehicleClass(vehicle)
        speed = Config.MaxSpeed / 3.6

        if InVehicle and (class ~= 13) then
            SetVehicleMaxSpeed(vehicle, speed)
        end

        Wait(sleep)
    end
end)