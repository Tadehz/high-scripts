Config.Languages["cz"] = {
    ["notifications"] = {
        -- Bank
        ["selftransfer"] = "Nelze posílat peníze sám sobě!",
        ["selfrequest"] = "Nelze požádat peníze sám sebe!",
        ["receivedmoney"] = "Obdržel jsi <strong>{amount} $</strong> od ID <strong>{senderId}</strong>! Důvod: <strong>{reason}</strong>",
        ["requestedmoney"] = "<strong>{requesterName} [{requesterId}]</strong> požádal o <strong>{amount} $</strong>! Důvod: <strong>{reason}</strong>",
        ["receivernonexistant"] = "Uživatel s timto IBANem neexistuje!",
        ["notenoughmoney"] = "Nemáš dostatek financí pro tuto transakci!",
        ["requestdoesntexist"] = "Žádost neexistuje!",
        ["requestcooldown"] = "Nelze odesílat žádosti tak rychle!",
        ["transfercooldown"] = "Nelze převádět tak rychle!",
        ["playernotonline"] = "Uživatel s tímto IBANem není dostupný!",
        ["playernotonlineanymore"] = "Uživatel se odpojil!",
        -- Twitter/mail
        ["accountdoesntexist"] = "Adresa není registrovaná!",
        ["emailtaken"] = "Email je již zabraný!",
        ["usernametaken"] = "Uživatelské jméno je již zabrané!",
        ["userdoesntexist"] = "Uživatel neexistuje!",
        ["wrongpassword"] = "Neplatné heslo!",
        ["wrongresetcode"] = "Neplatný kod!",
        ["emailtooshort"] = "Email je příliž krátký!",
        ["accountbanned"] = "Účet je zabanovaný!",
        -- Dark chat
        ["invitedoesntexist"] = "Kod pozvánky neexistuje!",
        ["alreadyingroup"] = "Již jsi ve skupině!",
        ["bannedfromgroup"] = "Jsi zabanovaný s této skupiny!",
        ["groupmemberlimitreached"] = "Počet uživatelů dosáhnul limitu!",
        ["member_joined"] = "<strong>{memberName}</strong> se připojil/a do skupiny",
        ["member_left"] = "<strong>{memberName}</strong> opustil/a skupinu",
        ["member_banned"] = "<strong>{memberName}</strong> byl/a zabaován/a ze skupiny",
        ["member_kicked"] = "<strong>{memberName}</strong> byl/a vyhozen/a ze skupiny",
        ["invitealreadyexists"] = "Kod pozvánky je již použit!",
        ["invitetooshort"] = "Kod pozvánky je moc krátký!",
    },
    -- Main
    ["open_phone"] = "<font face='Fire Sans'>Otevřít mobil",
    ["deleted_user"] = "Vymazat uživatele",
    ["unknown"] = "Neznámý/á",
    ["unknown_caller"] = "Neznámý/á volající",
    -- Ads
    ["ads_notitle"] = "(Bez nadpisu)",
    -- Twitter
    ["twitter_replyingto"] = "Odpovídáš na @{tweeterName}",
    ["twitter_notitle"] = "(Bez nadpisu)",
    -- Webhooks, the whole table is sent through the webhook, which means you can add/remove anything you want into the webhooks (basically open sourced embeds).
    ["newtweetwebhook"] = {
        ["title"] = "📢 New tweet!",
        ["fields"] = {
            {["name"] = "Sender data", ["value"] = "Identifier: `{senderIdentifier}`\nEmail: `{senderEmail}`\nTwitter name: `{senderTwitterName}`\nName: `{senderName}`\nID: `{senderId}`"}
        },
        ["description"] = "**{title}**\n{content}",
        ["image"] = {
            ["url"] = "{image}"
        },
        ["color"] = 47871,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. _G.Version,
            ["icon_url"] = "https://i.imgur.com/RrrU75E.png"
        }
    },
    ["tweetreportwebhook"] = {
        ["title"] = "🚩 Tweet reported!",
        ["fields"] = {
            {["name"] = "Tweet data", ["value"] = "ID: `{tweetId}`\nTitle:`{tweetTitle}`\nContent: `{tweetContent}`"},
            {["name"] = "Tweeter data", ["value"] = "Email: `{tweeterEmail}`\nNickname: `{tweeterNickname}`"},
            {["name"] = "Reporter data", ["value"] = "Identifier: `{reporterIdentifier}`\nEmail: `{reporterEmail}`\nNickname: `{reporterNickname}`\nID: `{reporterId}`"}
        },
        ["image"] = {
            ["url"] = "{image}"
        },
        ["color"] = 47871,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. _G.Version,
            ["icon_url"] = "https://i.imgur.com/RrrU75E.png"
        }
    },
    ["userreportwebhook"] = {
        ["title"] = "🚩 Twitter user reported!",
        ["fields"] = {
            {["name"] = "User data", ["value"] = "Owner: `{userIdentifier}`\nEmail: `{userEmail}`\nNickname: `{userNickname}`"},
            {["name"] = "Reporter data", ["value"] = "Identifier: `{reporterIdentifier}`\nEmail: `{reporterEmail}`\nNickname: `{reporterNickname}`\nID: `{reporterId}`"}
        },
        ["color"] = 47871,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. _G.Version,
            ["icon_url"] = "https://i.imgur.com/RrrU75E.png"
        }
    },
    ["newmailwebhook"] = {
        ["title"] = "📧 New mail!",
        ["fields"] = {
            {["name"] = "Mail data", ["value"] = "To: `{recipients}`\nSubject: `{subject}`\nContent: `{content}`"},
            {["name"] = "Sender data", ["value"] = "Identifier: `{senderIdentifier}`\nEmail: `{senderMailAddress}`\nName: `{senderName}`\nID: `{senderId}`"}
        },
        ["color"] = 15105570,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. _G.Version,
            ["icon_url"] = "https://i.imgur.com/RrrU75E.png"
        }
    },
    ["newadwebhook"] = {
        ["title"] = "📢 New advertisment!",
        ["fields"] = {
            {["name"] = "Sender data", ["value"] = "Identifier: `{senderIdentifier}`\nCharacter name: `{senderFullname}`\nName: `{senderName}`\nID: `{senderId}`"}
        },
        ["description"] = "**{title}**\n{content}",
        ["image"] = {
            ["url"] = "{image}"
        },
        ["color"] = 15105570,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. _G.Version,
            ["icon_url"] = "https://i.imgur.com/RrrU75E.png"
        }
    },
    ["newtransactionwebhook"] = {
        ["title"] = "💸 New transaction!",
        ["fields"] = {
            {["name"] = "Transaction data", ["value"] = "Amount: `{amount} €`\nReason: `{reason}`"},
            {["name"] = "Sender data", ["value"] = "Identifier: `{senderIdentifier}`\nName: `{senderName}`\nID: `{senderId}`"},
            {["name"] = "Receiver data", ["value"] = "Identifier: `{receiverIdentifier}`\nName: `{receiverName}`\nID: `{receiverId}`"}
        },
        ["color"] = 2067276,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. _G.Version,
            ["icon_url"] = "https://i.imgur.com/RrrU75E.png"
        }
    },
    -- Other
    ["twitterresetmail"] = {
        ["senderAddress"] = "noreply@twitter.com",
        ["senderName"] = "Twitter",
        ["senderPhoto"] = "media/icons/twitter.png",
        ["subject"] = "Obnova hesla",
        ["content"] = "Dobrý den,<br><br>Dostali jsme požadavek na obnovu hesla! Zde vám zasíláme kod potřebný k obnově hesla!<br><br><strong>{resetCode}</strong><div class='footer twt'>@ 2022 Twitter.com. Všechna práva vyhrazena</div>"
    }
}
