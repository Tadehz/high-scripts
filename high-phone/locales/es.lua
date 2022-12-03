Config.Languages["es"] = {
    ["notifications"] = {
        -- Bank
        ["selftransfer"] = "No puedes transferirte dinero a ti mismo!",
        ["selfrequest"] = "No se puede pedir dinero a uno mismo!",
        ["receivedmoney"] = "Has recibido <strong>{amount} €</strong> del ID <strong>{senderId}</strong>! Razón: <strong>{reason}</strong>",
        ["requestedmoney"] = "<strong>{requesterName} [{requesterId}]</strong> ha solicitado para <strong>{amount} €</strong>! Razón: <strong>{reason}</strong>",
        ["receivernonexistant"] = "El usuario con este ID no existe!",
        ["notenoughmoney"] = "No tienes suficiente dinero para hacer esta transacción!",
        ["requestdoesntexist"] = "La solicitud no existe!",
        ["requestcooldown"] = "No se pueden enviar solicitudes tan rápido!",
        ["transfercooldown"] = "No se pueden enviar transferencias tan rápido!",
        ["playernotonline"] = "El jugador con este ID no está conectado!",
        ["playernotonlineanymore"] = "El jugador se ha desconectado del servidor!",
        -- Phone
        ["userbusy"] = "El usuario está ocupado!",
        ["usernotavailable"] = "El usuario no está disponible!",
        ["noavailableunits"] = "No hay unidades disponibles para recoger la llamada!",
        -- Twitter/mail
        ["accountdoesntexist"] = "La dirección de correo electrónico no está registrada!",
        ["emailtaken"] = "El correo electrónico ya está ocupado!",
        ["emailtooshort"] = "El correo electrónico es demasiado corto!",
        ["usernametaken"] = "El nombre de usuario ya está ocupado!",
        ["userdoesntexist"] = "El usuario no existe!",
        ["wrongpassword"] = "Contraseña incorrecta!",
        ["wrongresetcode"] = "Código incorrecto!",
        ["accountbanned"] = "La cuenta está prohibida en Twitter!",
        -- Dark chat
        ["invitealreadyexists"] = "El código de invitación ya está utilizado!",
        ["invitetooshort"] = "El código de invitación es demasiado corto!",
        ["invitedoesntexist"] = "El código de invitación no existe!",
        ["alreadyingroup"] = "Ya estás en este grupo!",
        ["bannedfromgroup"] = "Estás expulsado de este grupo!",
        ["groupmemberlimitreached"] = "Se ha alcanzado el límite de miembros del grupo!",
        ["member_joined"] = "<strong>{memberName}</strong> se ha unido al grupo",
        ["member_left"] = "<strong>{memberName}</strong> ha dejado el grupo",
        ["member_banned"] = "<strong>{memberName}</strong> ha sido baneado del grupo",
        ["member_kicked"] = "<strong>{memberName}</strong> ha sido expulsado del grupo",
    },
    -- Main
    ["open_phone"] = "Teléfono abierto",
    ["deleted_user"] = "Usuario eliminado",
    ["unknown"] = "Desconocido",
    ["unknown_caller"] = "Llamada desconocida",
    -- Ads
    ["ads_notitle"] = "(Sin título)",
    -- Twitter
    ["twitter_replyingto"] = "Respondiendo a @{tweeterName}",
    ["twitter_notitle"] = "(Sin título)",
    -- Webhooks, the whole table is sent through the webhook, which means you can add/remove anything you want into the webhooks (basically open sourced embeds).
    ["newtweetwebhook"] = {
        ["title"] = "📢 Nuevo tweet!",
        ["fields"] = {
            {["name"] = "Datos del remitente", ["value"] = "Identificador: `{senderIdentifier}`\nEmail: `{senderEmail}`\nNombre en Twitter: `{senderTwitterName}`\nNombre: `{senderName}`\nID: `{senderId}`"}
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
        ["title"] = "🚩 Tweet reportado!",
        ["fields"] = {
            {["name"] = "Datos del Tweet", ["value"] = "ID: `{tweetId}`\nTitle:`{tweetTitle}`\nContenido: `{tweetContent}`"},
            {["name"] = "Datos del Tweet", ["value"] = "Email: `{tweeterEmail}`\nApodo: `{tweeterNickname}`"},
            {["name"] = "Reporte del Tweet", ["value"] = "Identificador: `{reporterIdentifier}`\nEmail: `{reporterEmail}`\nApodo: `{reporterNickname}`\nID: `{reporterId}`"}
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
        ["title"] = "🚩 Un usuario de Twitter informó!",
        ["fields"] = {
            {["name"] = "Datos del usuario", ["value"] = "Propietario: `{userIdentifier}`\nEmail: `{userEmail}`\nApodo: `{userNickname}`"},
            {["name"] = "Datos del reportante", ["value"] = "Identificador: `{reporterIdentifier}`\nEmail: `{reporterEmail}`\nApodo: `{reporterNickname}`\nID: `{reporterId}`"}
        },
        ["color"] = 47871,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
        }
    },
    ["newmailwebhook"] = {
        ["title"] = "📧 Nuevo mail!",
        ["fields"] = {
            {["name"] = "Datos del correo", ["value"] = "A: `{recipients}`\nAsunto: `{subject}`\nContenido: `{content}`"},
            {["name"] = "Datos del remitente", ["value"] = "Identificador: `{senderIdentifier}`\nEmail: `{senderMailAddress}`\nNombre: `{senderName}`\nID: `{senderId}`"}
        },
        ["color"] = 15105570,
        ["footer"] = {
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
        }
    },
    ["newadwebhook"] = {
        ["title"] = "📢 Nuevo anuncio!",
        ["fields"] = {
            {["name"] = "Datos del remitente", ["value"] = "Identificador: `{senderIdentifier}`\nNombre del personaje: `{senderFullname}`\nNombre: `{senderName}`\nID: `{senderId}`"}
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
        ["title"] = "💸 Nueva transacción!",
        ["fields"] = {
            {["name"] = "Datos de la transacción", ["value"] = "Importe: `{amount} €`\nRazón: `{reason}`"},
            {["name"] = "Datos del remitente", ["value"] = "Identificador: `{senderIdentifier}`\nNombre: `{senderName}`\nID: `{senderId}`"},
            {["name"] = "Datos del receptor", ["value"] = "Identificador: `{receiverIdentifier}`\nNombre: `{receiverName}`\nID: `{receiverId}`"}
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
        ["subject"] = "Restablecimiento de la cuenta",
        ["content"] = "Hola,<br><br>¡Hemos encontrado tu cuenta perdida! Aquí tienes el código necesario para restablecer la contraseña de tu cuenta.<br><br><strong>{resetCode}</strong><div class='footer twt'>@ 2022 Twitter.com. All rights reserved</div>"
    }
}