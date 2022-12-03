Config.Languages["de"] = {
    ["notifications"] = {
        -- Bank
        ["selftransfer"] = "Du kannst kein Geld an dich selbst überweisen!",
        ["selfrequest"] = "Du kannst kein Geld von dir selbst anfordern!",
        ["receivedmoney"] = "Du hast <strong>${amount}</strong> von der ID <strong>{senderId}</strong> erhalten! Grund: <strong>{reason}</strong>",
        ["requestedmoney"] = "<strong>{requesterName} [{requesterId}]</strong> hat für <strong>${amount}</strong> angefordert! Grund: <strong>{reason}</strong>",
        ["receivernonexistant"] = "Der Benutzer mit dieser ID existiert nicht!",
        ["notenoughmoney"] = "Du hast nicht genug Geld, um diese Transaktion durchzuführen!",
        ["requestdoesntexist"] = "Die Anfrage existiert nicht!",
        ["requestcooldown"] = "So schnell kannst du keine Anfragen senden!",
        ["transfercooldown"] = "Du kannst Überweisungen nicht so schnell senden!",
        ["playernotonline"] = "Der Spieler mit dieser ID ist nicht online!",
        ["playernotonlineanymore"] = "Der Spieler hat die Verbindung zum Server getrennt!",
        -- Telefon
        ["userbusy"] = "Benutzer ist beschäftigt!",
        ["usernotavailable"] = "Benutzer ist nicht verfügbar!",
        ["noavailableunits"] = "Es gibt keine verfügbaren Einheiten, die den Anruf entgegennehmen können!",
        -- Twitter/mail
        ["accountdoesntexist"] = "Email-Adresse ist nicht registriert!",
        ["emailtaken"] = "E-Mail ist bereits vergeben!",
        ["emailtooshort"] = "Email ist zu kurz!",
        ["usernametaken"] = "Der Benutzername ist bereits vergeben!",
        ["userdoesntexist"] = "Der Benutzer existiert nicht!",
        ["wrongpassword"] = "Falsches Passwort!",
        ["wrongresetcode"] = "Falscher Code!",
        ["accountbanned"] = "Konto ist von Twitter gesperrt!",
        -- Dark Chat
        ["invitealreadyexists"] = "Der Einladungscode wurde bereits verwendet!",
        ["invitetooshort"] = "Der Einladungscode ist zu kurz!",
        ["invitedoesntexist"] = "Der Einladungscode existiert nicht!",
        ["alreadyingroup"] = "Du bist bereits in dieser Gruppe!",
        ["bannedfromgroup"] = "Du wurdest aus dieser Gruppe verbannt!",
        ["groupmemberlimitreached"] = "Das Mitgliederlimit der Gruppe wurde erreicht!",
        ["member_joined"] = "<strong>{memberName}</strong> ist der Gruppe beigetreten",
        ["member_left"] = "<strong>{memberName}</strong> hat die Gruppe verlassen",
        ["member_banned"] = "<strong>{memberName}</strong> wurde aus der Gruppe verbannt",
        ["member_kicked"] = "<strong>{memberName}</strong> wurde aus der Gruppe geworfen",
    },
    -- Main
    ["open_phone"] = "Telefon öffnen",
    ["deleted_user"] = "Gelöschter Benutzer",
    ["unknown"] = "Unbekannt",
    ["unknown_caller"] = "Unbekannter Anrufer",
    -- Anzeigen
    ["ads_notitle"] = "(Kein Titel)",
    -- Twitter
    ["twitter_replyingto"] = "Ich antworte auf @{tweeterName}",
    ["twitter_notitle"] = "(Kein Titel)",
    -- Webhooks, die gesamte Tabelle wird über den Webhook gesendet, was bedeutet, dass du alles, was du willst, in die Webhooks einfügen/entfernen kannst (im Grunde Open-Source-Embeds).
    ["newtweetwebhook"] = {
        ["title"] = "📢 Neuer Tweet!",
        ["fields"] = {
            {["name"] = "Absenderdaten", ["value"] = "Identifier: `{senderIdentifier}`\nEmail: `{senderEmail}`\nTwittername: `{senderTwitterName}`\nName: `{senderName}`\nID: `{senderId}`"}
        },
        ["description"] = "**{title}**\n{content}",
        ["image"] = {
            ["url"] = "{image}"
        },
        ["color"] = 47871,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
        }
    },
    ["tweetreportwebhook"] = {
        ["title"] = "🚩 Tweet gemeldet!",
        ["fields"] = {
            {["name"] = "Tweet-Daten", ["value"] = "ID: `{tweetId}`\nTitle:`{tweetTitle}`\nContent: `{tweetContent}`"},
            {["name"] = "Tweeter-Daten", ["value"] = "Email: `{tweeterEmail}`\nNickname: `{tweeterNickname}`"},
            {["name"] = "Reporterdaten", ["value"] = "Kennung: `{reporterIdentifier}`\nEmail: `{reporterEmail}`\nNickname: `{reporterNickname}`\nID: `{reporterId}`"}
        },
        ["image"] = {
            ["url"] = "{image}"
        },
        ["color"] = 47871,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
        }
    },
    ["userreportwebhook"] = {
        ["title"] = "🚩 Twitter-Nutzer gemeldet!",
        ["fields"] = {
            {["name"] = "Benutzerdaten", ["value"] = "Besitzer: `{userIdentifier}`\nEmail: `{userEmail}`\nNickname: `{userNickname}`"},
            {["name"] = "Reporterdaten", ["value"] = "Bezeichner: `{reporterIdentifier}`\nEmail: `{reporterEmail}`\nNickname: `{reporterNickname}`\nID: `{reporterId}`"}
        },
        ["color"] = 47871,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
        }
    },
    ["newmailwebhook"] = {
        ["title"] = "📧 Neue Mail!",
        ["fields"] = {
            {["name"] = "Maildaten", ["value"] = "To: `{recipients}`\nSubject: `{subject}`\nContent: `{content}`"},
            {["name"] = "Absenderdaten", ["value"] = "Kennung: `{senderIdentifier}`\nEmail: `{senderMailAddress}`\nName: `{senderName}`\nID: `{senderId}`"}
        },
        ["color"] = 15105570,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
        }
    },
    ["newadwebhook"] = {
        ["title"] = "📢 Neues Inserat!",
        ["fields"] = {
            {["name"] = "Absenderdaten", ["value"] = "Identifier: `{senderIdentifier}`\nCharaktername: `{senderFullname}`\nName: `{senderName}`\nID: `{senderId}`"}
        },
        ["description"] = "**{title}**\n{content}",
        ["image"] = {
            ["url"] = "{image}"
        },
        ["color"] = 15105570,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
        }
    },
    ["newtransactionwebhook"] = {
        ["title"] = "💸 Neue Transaktion!",
        ["fields"] = {
            {["name"] = "Transaktionsdaten", ["value"] = "Betrag: `${amount}`\nGrund: `{reason}`"},
            {["name"] = "Absenderdaten", ["value"] = "Kennung: `{senderIdentifier}`\nName: `{senderName}`\nID: `{senderId}`"},
            {["name"] = "Empfängerdaten", ["value"] = "Bezeichner: `{receiverIdentifier}`\nName: `{receiverName}`\nID: `{receiverId}`"}
        },
        ["color"] = 2067276,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
        }
    },
    -- Andere
    ["twitterresetmail"] = {
        ["senderAddress"] = "noreply@twitter.com",
        ["senderName"] = "Twitter",
        ["senderPhoto"] = "media/icons/twitter.png",
        ["subject"] = "Konto zurückgesetzt",
        ["content"] = "Hallo,<br><br>Wir haben deinen verlorenen Account gefunden! Hier ist der Code, den du brauchst, um das Passwort deines Kontos zurückzusetzen!<br><br><strong>{resetCode}</strong><div class='footer twt'>@ 2022 Twitter.com. Alle Rechte vorbehalten</div>"
    }
}
