if Config.usecommand then
  RegisterCommand("bk", function(source, args, rawCommand)
      local s = source
      local bkLvl = args[1]
      local playerName = GetPlayerName(s)
      if not bkLvl then
          TriggerClientEvent("ug_militaryJob_backup:ShowInfo", source, "~r~Only Pressing the Key Code!")
      elseif bkLvl == "1" then
          TriggerClientEvent("ug_militaryJob_backup:BackupReq", -1, bkLvl, s, playerName)
      elseif bkLvl == "2" then
          TriggerClientEvent("ug_militaryJob_backup:BackupReq", -1, bkLvl, s, playerName)
      elseif bkLvl == "3" then
          TriggerClientEvent("ug_militaryJob_backup:BackupReq", -1, bkLvl, s, playerName)
      elseif bkLvl == "99" then
          TriggerClientEvent("ug_militaryJob_backup:BackupReq", -1, bkLvl, s, playerName)
      elseif bkLvl ~= "1" or bkLvl ~= "2" or bkLvl ~= "3" or bkLvl ~= "99" then
          TriggerClientEvent("ug_militaryJob_backup:ShowInfo", source, "~r~Not Valid!")
      end
  end)
end

if Config.usekeybinding then
  RegisterServerEvent('ug_militaryJob_backup:BackupReq')
  AddEventHandler('ug_militaryJob_backup:BackupReq', function(code)
    local s = source
    local bkLvl = code
    local playerName = GetPlayerName(s)
    if not bkLvl then
        TriggerClientEvent("ug_militaryJob_backup:ShowInfo", source, "~r~Press the Key 1, 2, 3 or 4 to send a Backup")
    elseif bkLvl == "1" then
        TriggerClientEvent("ug_militaryJob_backup:BackupReq", -1, bkLvl, s, playerName)
    elseif bkLvl == "2" then
        TriggerClientEvent("ug_militaryJob_backup:BackupReq", -1, bkLvl, s, playerName)
    elseif bkLvl == "3" then
        TriggerClientEvent("ug_militaryJob_backup:BackupReq", -1, bkLvl, s, playerName)
    elseif bkLvl == "99" then
        TriggerClientEvent("ug_militaryJob_backup:BackupReq", -1, bkLvl, s, playerName)
    elseif bkLvl ~= "1" or bkLvl ~= "2" or bkLvl ~= "3" or bkLvl ~= "99" then
        TriggerClientEvent("ug_militaryJob_backup:ShowInfo", source, "~r~Code Invalid!")
    end
  end)
end
