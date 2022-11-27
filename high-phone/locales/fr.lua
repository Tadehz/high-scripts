Config.Languages["fr"] = {
    ["notifications"] = {
        -- Bank
        ["selftransfer"] = "Vous ne pouvez pas vous transférer de l'argent à vous-même !",
        ["selfrequest"] = "Vous ne pouvez pas vous demander de l'argent à vous-même !",
        ["receivedmoney"] = "Vous avez reçu <strong>{amount} €</strong> de l'ID <strong>{senderId}</strong> ! Raison : <strong>{reason}</strong>",
        ["requestedmoney"] = "<strong>{requesterName} [{requesterId}]</strong> vous a demandé <strong>{amount} €</strong> ! Raison : <strong>{reason}</strong>",
        ["receivernonexistant"] = "L'utilisateur avec cet ID n'existe pas !",
        ["notenoughmoney"] = "Vous n'avez pas assez d'argent pour faire cette transaction !",
        ["requestdoesntexist"] = "Cette demande n'existe pas !",
        ["requestcooldown"] = "Vous ne pouvez pas envoyer des demandes aussi vite !",
        ["transfercooldown"] = "Vous ne pouvez pas envoyer des transferts aussi vite !",
        ["playernotonline"] = "Le joueur avec cet ID n'est pas en ligne !",
        ["playernotonlineanymore"] = "Le joueur s'est déconnecté du serveur !",
        -- Phone
        ["userbusy"] = "L'utilisateur est occupé !",
        ["usernotavailable"] = "L'utilisateur n'est pas disponible !",
        ["noavailableunits"] = "Il n'y a pas d'unités disponibles pour prendre votre appel !",
        -- Twitter/mail
        ["accountdoesntexist"] = "Cette adresse mail n'existe pas !",
        ["emailtaken"] = "Cette adresse mail existe déjà !",
        ["emailtooshort"] = "Le contenu du mail est trop court !",
        ["usernametaken"] = "Ce nom d'utilisateur existe déjà !",
        ["userdoesntexist"] = "L'utilisateur n'existe pas !",
        ["wrongpassword"] = "Mauvais mot de passe !",
        ["wrongresetcode"] = "Mauvais code !",
        ["accountbanned"] = "Ce compte est banni de Twitter !",
        -- Dark chat
        ["invitealreadyexists"] = "Le code d'invitation a déjà été utilisé !",
        ["invitetooshort"] = "Le code d'invitation est trop court !",
        ["invitedoesntexist"] = "Le code d'invitation n'existe pas !",
        ["alreadyingroup"] = "Vous êtes déjà dans ce groupe !",
        ["bannedfromgroup"] = "Vous avez été banni de ce groupe !",
        ["groupmemberlimitreached"] = "La limite de membres a été atteinte !",
        ["member_joined"] = "<strong>{memberName}</strong> a rejoint le groupe",
        ["member_left"] = "<strong>{memberName}</strong> a quitté le groupe",
        ["member_banned"] = "<strong>{memberName}</strong> a été banni du groupe",
        ["member_kicked"] = "<strong>{memberName}</strong> a été exclu du groupe",
    },
    -- Main
    ["open_phone"] = "Ouvrir le téléphone",
    ["deleted_user"] = "Utilisateur supprimé",
    ["unknown"] = "Inconnu",
    ["unknown_caller"] = "Numéro inconnu",
    -- Ads
    ["ads_notitle"] = "(Aucun titre)",
    -- Twitter
    ["twitter_replyingto"] = "En réponse à @{tweeterName}",
    ["twitter_notitle"] = "(Aucun titre)",
    -- Webhooks, the whole table is sent through the webhook, which means you can add/remove anything you want into the webhooks (basically open sourced embeds).
    ["newtweetwebhook"] = {
        ["title"] = "📢 Nouveau tweet !",
        ["fields"] = {
            {["name"] = "Sender data", ["value"] = "Identifiant: `{senderIdentifier}`\nEmail: `{senderEmail}`\nNom Twitter: `{senderTwitterName}`\nNom: `{senderName}`\nID: `{senderId}`"}
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
        ["title"] = "🚩 Tweet signalé !",
        ["fields"] = {
            {["name"] = "Tweet data", ["value"] = "ID: `{tweetId}`\nTitre:`{tweetTitle}`\nContenu: `{tweetContent}`"},
            {["name"] = "Tweeter data", ["value"] = "Email: `{tweeterEmail}`\nPseudo: `{tweeterNickname}`"},
            {["name"] = "Reporter data", ["value"] = "Identifiant: `{reporterIdentifier}`\nEmail: `{reporterEmail}`\nPseudo: `{reporterNickname}`\nID: `{reporterId}`"}
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
        ["title"] = "🚩 Utilisateur Twitter signalé !",
        ["fields"] = {
            {["name"] = "User data", ["value"] = "Propriétaire : `{userIdentifier}`\nEmail: `{userEmail}`\nPseudo: `{userNickname}`"},
            {["name"] = "Reporter data", ["value"] = "Identifiant: `{reporterIdentifier}`\nEmail: `{reporterEmail}`\nPseudo: `{reporterNickname}`\nID: `{reporterId}`"}
        },
        ["color"] = 47871,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
        }
    },
    ["newmailwebhook"] = {
        ["title"] = "📧 Nouveau mail!",
        ["fields"] = {
            {["name"] = "Mail data", ["value"] = "À: `{recipients}`\nSujet: `{subject}`\nContenu: `{content}`"},
            {["name"] = "Sender data", ["value"] = "Identifiant: `{senderIdentifier}`\nEmail: `{senderMailAddress}`\nNom: `{senderName}`\nID: `{senderId}`"}
        },
        ["color"] = 15105570,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
        }
    },
    ["newadwebhook"] = {
        ["title"] = "📢 Nouvelle publicité !",
        ["fields"] = {
            {["name"] = "Sender data", ["value"] = "Identifiant: `{senderIdentifier}`\nNom du personnage: `{senderFullname}`\nNom: `{senderName}`\nID: `{senderId}`"}
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
        ["title"] = "💸 Nouvelle transaction !",
        ["fields"] = {
            {["name"] = "Transaction data", ["value"] = "Montant: `{amount} €`\nRaison: `{reason}`"},
            {["name"] = "Sender data", ["value"] = "Identifiant: `{senderIdentifier}`\nNom: `{senderName}`\nID: `{senderId}`"},
            {["name"] = "Receiver data", ["value"] = "Identifiant: `{receiverIdentifier}`\nNom: `{receiverName}`\nID: `{receiverId}`"}
        },
        ["color"] = 2067276,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
        }
    },
    -- Other
    ["twitterresetmail"] = {
        ["senderAddress"] = "noreply@twitter.com",
        ["senderName"] = "Twitter",
        ["senderPhoto"] = "media/icons/twitter.png",
        ["subject"] = "Account reset",
        ["content"] = "Bonjour,<br><br>Vous avez perdu le mot de passe de votre compte ? Voici le code requis pour réinitialiser le mot de passe de votre compte !<br><br><strong>{resetCode}</strong><div class='footer twt'>@ 2022 Twitter.com. All rights reserved</div>"
    }
}