-- Framework functions
local ESXName = "es_extended" -- Change this if you've renamed ESX.
local SharedObject = "esx:getSharedObject" -- Change this if your ESX doesn't have the shared object export and if you're using an anticheat that scrambles the event names or you just have changed this event name.

FOB = nil -- Do not rename this variable! And if your framework doesn't have shared objects, keep and set this variable to true!

local ESXExport = exports[ESXName]
if(not ESXExport and not ESXExport.getSharedObject) then
    TriggerEvent(SharedObject, function(obj) FOB = obj end)

    if(not IsDuplicityVersion()) then
        CreateThread(function()
            while FOB == nil do
                TriggerEvent(SharedObject, function(obj) FOB = obj end)
                Wait(10)
            end
        end)
    end
else
    FOB = ESXExport:getSharedObject()
end

Config.Events = {
    playerLoaded = "esx:playerLoaded", -- player loaded server-side event, requires a player source as the 1st argument.
    playerDropped = "esx:playerDropped", -- player disconnected server-side event, requires a player source as the 1st argument.
    updateJob = "esx:setJob", -- player job updated server-side event, requires a player source as the 1st argument.
    -- NOTE THAT 'high_phone:addInventoryItem' AND 'high_phone:removeInventoryItem' REQUIRE DIFFERENT 2ND ARGUMENTS, THESE REQUIRE THE AMOUNT OF ITEM REMOVED/ADDED, UNLIKE ESX ALREADY GIVES THE AMOUNT OF ITEM THE PLAYER HAS AFTER REMOVING/ADDING IT.
    addItem = "esx:addInventoryItem", -- item added to inventory client-side event, requires the item name as the 1st argument and the count of the item in player's inventory AFTER adding as the 2nd argument.
    removeItem = "esx:removeInventoryItem" -- item removed from inventory client-side event, requires the item name as the 1st argument and the count of the item in player's inventory AFTER removing as the 2nd argument.
}

Config.PlayersTable = "users" -- Database players table.
Config.IdentifierColumn = "identifier" -- In players table, the main player identifier column.
Config.Invoices = {
    enabled = true,
    table = "billing", -- Table's name that contains all the bills [invoices]
    columns = {
        id = "id", -- ID column
        owner = "identifier", -- Player's identifier that received the invoice column
        label = "label", -- Invoice label [title or reason] column
        amount = "amount", -- Price/amount of the invoice column
        -- REMOVE THE -- IN FRONT OF 'status = "paid"' IF YOUR BILLING SCRIPT (SUCH AS OKOKBILLING) INCLUDES BILL STATUSES
        --status = "status"
    }
    -- UNCOMMENT (REMOVE THE --[[ AND ]]) THE CODE BELOW IF YOUR BILLING SCRIPT (SUCH AS OKOKBILLING) INCLUDES BILL STATUSES
    --[[statuses = {
        -- Do not change the index names, only the values
        paid = "paid", -- The status that gets set after paying the invoice on the bank app
        shown = {"unpaid"},
        ignored = {"paid", "autopaid", "cancelled"}
    }]]
}

-- DO NOT RENAME ANY OF THE TABLE INDEX NAMES, KEEP THEM AS THEY ARE, ONLY CHANGE THEIR VALUES AND FUNCTIONS (DO NOT REMOVE OR CHANGE THE ARGUMENTS IN FUNCTIONS)
Config.FrameworkFunctions = {
    -- Client-side trigger callback
    triggerCallback = function(name, cb, ...)
        FOB.TriggerServerCallback(name, cb, ...)
    end,
    
    -- Server-side register callback
    registerCallback = function(name, cb)
        FOB.RegisterServerCallback(name, cb)
    end,

    -- Server-side get player ids function
    getPlayers = function()
        -- Returns a table containing all player server ids.
        return FOB.GetPlayers()
    end,

    -- Client-side get closest player and distance to player
    getClosestPlayer = function()
        -- Returns two variables (e.g. an unpacked table containing two values in the right order), 1st is the closest PlayerId and 2nd is the distance to the closest Player.
        return FOB.Game.GetClosestPlayer()
    end,

    -- Client-side get pool of ped entities
    getPeds = function()
        -- Returns a pool of ped entities.
        return FOB.Game.GetPeds()
    end,

    -- Server-side get player data, index names should be self explanatory to what the values have to contain or do
    getPlayer = function(source) 
        local self = {}
        local cachedPlayer = Players[source]
        -- The above should not be touched.

        local player = FOB.GetPlayerFromId(source)

        -- DO NOT RENAME ANY OF THE 'self' TABLE INDEX NAMES, KEEP THEM AS THEY ARE, ONLY CHANGE THEIR VALUES AND FUNCTIONS (DO NOT REMOVE OR CHANGE THE ARGUMENTS IN FUNCTIONS)
        if(player) then
            self.source = source
            self.identifier = player.identifier
            self.group = player.getGroup()

            self.job = {
                name = player.job.name,
                grade = player.job.grade or 0,
                -- REMOVE THE -- IN FRONT OF 'onDuty' IF YOU WANT TO CHECK IF THE PLAYER IS ON DUTY/IN SERVICE BEFORE SENDING HIM JOB MESSAGES/CALLS.
                --onDuty = player.job.service == 1 or false
            }

            self.money = {
                cash = player.getMoney(), -- Wallet money
                bank = player.getAccount("bank").money -- Bank money
            }
    
            self.number = cachedPlayer and cachedPlayer.number or nil -- Do not touch

            self.getIdentity = function()                
                local data = cachedPlayer.name or MySQL.Sync.fetchAll("SELECT firstname, lastname FROM " .. Config.PlayersTable .. " WHERE " .. Config.IdentifierColumn .. " = @identifier", {["@identifier"] = self.identifier})[1]
                if(data) then
                    local nameTable = {firstname = data.firstname or "", lastname = data.lastname or ""}
                    -- Replace only the nameTable value, do not touch the code below. This is a way to optimize the query calls by caching the player's name and lastname, since ESX doesn't cache it like QBCore does.

                    if(not cachedPlayer.name) then
                        Players[source].name = nameTable
                    end

                    return nameTable
                end
                return {firstname = "", lastname = ""}
            end

            self.addBankMoney = function(amount) 
                player.addAccountMoney("bank", amount)
            end
            self.addCash = function(amount) 
                player.addMoney(amount)
            end
            self.removeBankMoney = function(amount) 
                player.removeAccountMoney("bank", amount)
            end
            self.removeCash = function(amount) 
                player.removeMoney(amount)
            end

            self.getItemCount = function(item)
                -- Here you can replace the getInventoryItem function if you're using a different inventory system.
                return player.getInventoryItem(item).count
            end

            return self
        end

        return nil
    end,

    -- Server-side get player data by identifier
    getPlayerByIdentifier = function(self, identifier)
        local player = FOB.GetPlayerFromIdentifier(identifier) -- Replace this function with your framework's function
        if(player) then
            return self.getPlayer(player.source) -- ONLY replace 'player.source' with player's source received from your framework's function to get the player by his identifier, this function requires a player ID.
        end

        return nil
    end
}

local tokoCallId = nil
-- DO NOT RENAME ANY OF THE TABLE INDEX NAMES, KEEP THEM AS THEY ARE, ONLY CHANGE THEIR VALUES AND FUNCTIONS (DO NOT REMOVE OR CHANGE THE ARGUMENTS IN FUNCTIONS)
Config.VoipFunctions = {
    usedVoip = "auto", -- 'auto' automatically detects your used VOIP and uses it's default functions. If you're using a renamed VOIP or something similar, put an index name of one of the VOIP tables in this table.
    -- Configure your custom functions below, do not rename any of the table function names/values, modify only the functions themselves. Do not change the function arguments as well.
    ["mumble-voip"] = {
        voiceTarget = 2, -- Mumble voice target id, do not change this if you haven't changed it in mumble-voip's code.
        serverSided = false,
        addToCall = function(id)
            exports["mumble-voip"]:SetCallChannel(id)
        end,
        removeFromCall = function()
            exports['mumble-voip']:SetCallChannel(0)
        end
    },
    ["tokovoip_script"] = {
        serverSided = false,
        addToCall = function(id)
            exports["tokovoip_script"]:addPlayerToRadio(id)
        end,
        removeFromCall = function()
            if(tokoCallId ~= nil) then
                exports["tokovoip_script"]:removePlayerFromRadio(tokoCallId)
                tokoCallId = nil
            end
        end
    },
    ["pma-voice"] = {
        voiceTarget = 1, -- Mumble voice target id, do not change this if you haven't changed it in pma-voice's code.
        serverSided = false,
        addPlayerToCall = function(id)
            exports['pma-voice']:SetCallChannel(id)
        end,
        removeFromCall = function()
            exports['pma-voice']:SetCallChannel(0)
        end
    },
    ["saltychat"] = {
        serverSided = true,
        -- With serverSided true, there will be two arguments in the addToCall function, 1st will be the call ID, 2nd will be the players table (table of player id's aka sources) that's being added into a call.
        addToCall = function(id, players)
            exports['saltychat']:AddPlayersToCall("" .. id .. "", players)
        end,
        removeFromCall = function(id, players)
            exports['saltychat']:RemovePlayersFromCall("" .. id .. "", players)
        end
    },
    -- Do not remove this table, it's the default VOIP used as a fallback in case of no VOIP scripts found.
    ["default"] = {
        serverSided = false,
        addToCall = function(id)
            NetworkSetVoiceChannel(id)
            NetworkSetTalkerProximity(0.0)
        end,
        removeFromCall = function()
            InvokeNative(0xE036A705F989E049)
            NetworkSetTalkerProximity(2.5)
        end
    }
}

Config.CustomCallbacks = {
    -- Advertisments app
    ["postAd"] = function(data)
        TriggerServerEvent("high_phone:postAd", data.title, data.content, data.category, data.image, data.data)
    end,
    ["deleteAd"] = function(data)
        TriggerServerEvent("high_phone:deleteAd", data.id)
    end,
    -- Twitter app
    ["postTweet"] = function(data)
        TriggerServerEvent("high_phone:postTweet", data.title, data.content, data.image)
    end,
    ["deleteTweet"] = function(data)
        TriggerServerEvent("high_phone:deleteTweet", data.id)
    end,
    ["postReply"] = function(data)
        TriggerServerEvent("high_phone:postReply", data.id, data.content)
    end,
    -- Messages app
    ["sendMessage"] = function(data)
        TriggerServerEvent("high_phone:sendMessage", data.number, data.content, data.attachments, data.time) -- data.time is for accurate saving of time of the messages.
        
        for i, v in pairs(Config.JobContacts) do
            if(number == v.number) then
                v.messageCallback(false, data.content)
                break
            end
        end
    end,
    -- Mail app
    ["sendMail"] = function(data)
        if(not data.reply) then
            TriggerServerEvent("high_phone:sendMail", data.recipients, data.subject, data.content, data.attachments)
        else
            TriggerServerEvent("high_phone:sendMailReply", data.reply, data.recipients, data.subject, data.content, data.attachments)
        end
    end,
    -- Darkchat app
    ["sendDarkMessage"] = function(data)
        TriggerServerEvent("high_phone:sendDarkMessage", data.id, data.content, data.attachments, data.time) -- data.time is for accurate saving of time of the messages.
    end,
    -- Phone app
    ["callNumber"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback("high_phone:callNumber", function(response)
            cb(response) -- If response is "SUCCESS", the call screen will slide out. IMPORTANT TO CALLBACK SOMETHING!
            if(response == "SUCCESS") then
                DoPhoneAnimation('cellphone_text_to_call') -- Global function, play any animation from library cellphone@
                onCall = true -- Global variable, set it to true if in a call.
            end
        end, data.number, data.privatenumber)
    end,
    -- Contacts app
    ["createContact"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback("high_phone:createContact", function(id)
            cb(id)
        end, data.number, data.name, data.photo, data.tag)
    end,
    -- Bank app
    ["transferMoney"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback("high_phone:transferMoney", function(response)
            cb(response) -- If response is "SUCCESS", a message saying that the transfer was successful will be shown. IMPORTANT TO CALLBACK SOMETHING!
        end, Config.TransferType == 1 and tonumber(data.id) or data.id, tonumber(data.amount), data.purpose)
    end,
    ["requestMoney"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback("high_phone:requestMoney", function(response)
            cb(response) -- If response is "SUCCESS", a message saying that the transfer was successful will be shown. IMPORTANT TO CALLBACK SOMETHING!
        end, tonumber(data.id), tonumber(data.amount), data.purpose)
    end,
    ["payBill"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback('esx_billing:payBill', function()
            cb() -- esx_billing is so lame..
        end, data.id)
    end,
    ["cancelBill"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback("high_phone:cancelBill", function(response)
            cb(response) -- If response is "SUCCESS", a message saying that the cancelation was successful will be shown. IMPORTANT TO CALLBACK SOMETHING!
        end, data.id)
    end,
}

Config.Commands = {
    -- Do not rename the index, only change the name field if you want to change the command name.
    ["twitter_rank"] = {
        enabled = true,
        name = "settwitterrank",
        suggestion_label = "Set rank for a twitter account",
        args = {{
            name = "Email address",
            help = "Twitter user email address"
        }, {
            name = "Rank",
            help = "Twitter rank name"
        }},
        notifications = {
            ["error_prefix"] = "^1SYSTEM",
            ["success_prefix"] = "^2SYSTEM",
            ["email_not_specified"] = "You have to specify a twitter email address!",
            ["group_not_specified"] = "You have to specify a twitter group!",
            ["no_permission"] = "No permission for this command!",
            ["account_doesnt_exist"] = "A twitter account with this email doesn't exist!",
            ["group_successfully_set"] = "You've set the group on {email} to {rank}",
            ["rank_non_existant"] = "Rank {rank} doesn't exist!"
        }
    },
    ["ban_twitter_user"] = {
        enabled = true,
        name = "bantwitteruser",
        suggestion_label = "Ban a twitter user",
        args = {{
            name = "Email address",
            help = "Twitter user email address"
        }, {
            name = "Time",
            help = "In minutes, eg. 20m"
        }},
        notifications = {
            ["error_prefix"] = "^1SYSTEM",
            ["success_prefix"] = "^2SYSTEM",
            ["email_not_specified"] = "You have to specify a twitter email address!",
            ["time_not_specified"] = "You have to specify the time!",
            ["wrong_time"] = "Wrong time specified",
            ["no_permission"] = "No permission for this command!",
            ["account_doesnt_exist"] = "A twitter account with this email doesn't exist!",
            ["account_banned_successfully"] = "You've banned Twitter account {email} for {time}"
        }
    },
    ["ban_twitter_player"] = {
        enabled = true,
        name = "bantwitterplayer",
        suggestion_label = "Ban player from using Twitter",
        args = {{
            name = "ID",
            help = "Player ID"
        }, {
            name = "Time",
            help = "In minutes, eg. 20m"
        }},
        notifications = {
            ["error_prefix"] = "^1SYSTEM",
            ["success_prefix"] = "^2SYSTEM",
            ["id_not_specified"] = "You have to specify a player ID!",
            ["player_not_online"] = "Player is not online!",
            ["time_not_specified"] = "You have to specify the time!",
            ["wrong_time"] = "Wrong time specified",
            ["no_permission"] = "No permission for this command!",
            ["player_banned_successfully"] = "You've banned {playerName} [{playerId}] from Twitter for {time}"
        },
    },
    ["clear_popular_songs"] = {
        enabled = true,
        name = "clearpopularsongs",
        suggestion_label = "Clear and reset the popular songs of the server",
        args = {},
        notifications = {
            ["error_prefix"] = "^1SYSTEM",
            ["success_prefix"] = "^2SYSTEM",
            ["no_permission"] = "No permission for this command!",
            ["songs_cleared_successfully"] = "All popular songs have been cleared!",
        }
    }
}

Config.CommandNotification = function(source, title, message)
    TriggerClientEvent('chat:addMessage', source, {args = {title, message}})
end