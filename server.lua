------------------------------------
--- Police Backup, Made by FAXES ---
--- ESX Support by SneakGaming   ---
------------------------------------

if Config.usecommand then
  RegisterCommand("bk", function(source, args, rawCommand)
      local s = source
      local bkLvl = args[1]
      local playerName = GetPlayerName(s)
      if not bkLvl then
          TriggerClientEvent("Fax:ShowInfo", source, "~r~Only Pressing the Key Code!")
      elseif bkLvl == "1" then
          TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s, playerName)
      elseif bkLvl == "2" then
          TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s, playerName)
      elseif bkLvl == "3" then
          TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s, playerName)
      elseif bkLvl == "99" then
          TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s, playerName)
      elseif bkLvl ~= "1" or bkLvl ~= "2" or bkLvl ~= "3" or bkLvl ~= "99" then
          TriggerClientEvent("Fax:ShowInfo", source, "~r~Not Valid!")
      end
  end)
end

if Config.usekeybinding then
  RegisterServerEvent('Fax:BackupReq')
  AddEventHandler('Fax:BackupReq', function(code)
    local s = source
    local bkLvl = code
    local playerName = GetPlayerName(s)
    if not bkLvl then
        TriggerClientEvent("Fax:ShowInfo", source, "~r~Press the Key 1, 2, 3 or 4 to send a Backup")
    elseif bkLvl == "1" then
        TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s, playerName)
    elseif bkLvl == "2" then
        TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s, playerName)
    elseif bkLvl == "3" then
        TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s, playerName)
    elseif bkLvl == "99" then
        TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s, playerName)
    elseif bkLvl ~= "1" or bkLvl ~= "2" or bkLvl ~= "3" or bkLvl ~= "99" then
        TriggerClientEvent("Fax:ShowInfo", source, "~r~Code Invalid!")
    end
  end)
end
