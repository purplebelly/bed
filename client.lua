Citizen.CreateThread(function()
  -- define the models
  local bagModel = GetHashKey('prop_ld_rub_binbag_01')
  local bedModel = GetHashKey('v_49_motelmp_bed')
  local towModel = GetHashKey('ar_prop_ar_cp_tower_01a')

  while true do Citizen.Wait(0)
    if (IsControlPressed(1, 213)) then -- HOME button
      -- spawn player at airport
      SetEntityCoords(GetPlayerPed(-1), -992.89776611328, -3289.7856445313, 14.047193527222)

      -- request bag model
      RequestModel(bagModel)

      if not HasModelLoaded(bagModel) then
        Citizen.Trace('Waiting for prop_ld_rub_binbag_01 to load...')
        Citizen.Wait(1)
      end

      -- request bed model
      RequestModel(bagModel)

      if not HasModelLoaded(bedModel) then
        Citizen.Trace('Waiting for v_49_motelmp_bed to load...')
        Citizen.Wait(1)
      end

      -- request tower model
      RequestModel(towModel)

      if not HasModelLoaded(towModel) then
        Citizen.Trace('Waiting for ar_prop_ar_cp_tower_01a to load...')
        Citizen.Wait(1)
      end

      -- create objects in front of player
      local bagObject = CreateObject(bagModel, -992.89776611328, -3289.7856445313, 14.047193527222, false, false)
      local bedObject = CreateObject(bedModel, -992.69776611328, -3289.7856445313, 14.047193527222, false, false)
      local towObject = CreateObject(towModel, -992.49776611328, -3289.7856445313, 14.047193527222, false, false)
    end
  end
end)
