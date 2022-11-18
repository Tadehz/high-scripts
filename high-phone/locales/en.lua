Config.Languages["en"] = {
    ["notifications"] = {
        -- Bank
        ["selftransfer"] = "You can't transfer money to your self!",
        ["selfrequest"] = "You can't request money from your self!",
        ["receivedmoney"] = "You've received <strong>{amount} €</strong> from ID <strong>{senderId}</strong>! Reason: <strong>{reason}</strong>",
        ["requestedmoney"] = "<strong>{requesterName} [{requesterId}]</strong> has requested for <strong>{amount} €</strong>! Reason: <strong>{reason}</strong>",
        ["receivernonexistant"] = "User with this ID doesn't exist!",
        ["notenoughmoney"] = "You don't have enough money to make this transaction!",
        ["requestdoesntexist"] = "Request doesn't exist!",
        ["requestcooldown"] = "You can't send requests that fast!",
        ["transfercooldown"] = "You can't send transfers that fast!",
        ["playernotonline"] = "Player with this ID isn't online!",
        ["playernotonlineanymore"] = "Player has disconnected from the server!",
        -- Phone
        ["userbusy"] = "User is busy!",
        ["usernotavailable"] = "User is not available!",
        ["noavailableunits"] = "There are no available units to pickup the call!",
        -- Twitter/mail
        ["accountdoesntexist"] = "Email address isn't registered!",
        ["emailtaken"] = "Email is already taken!",
        ["usernametaken"] = "Username is already taken!",
        ["userdoesntexist"] = "User doesn't exist!",
        ["wrongpassword"] = "Wrong password!",
        ["wrongresetcode"] = "Wrong code!",
        -- Dark chat
        ["invitedoesntexist"] = "Invite code doesn't exist!",
        ["alreadyingroup"] = "You're already in this group!",
        ["bannedfromgroup"] = "You're banned from this group!",
        ["groupmemberlimitreached"] = "Group's member limit has been reached!",
        ["member_joined"] = "<strong>{memberName}</strong> has joined the group",
        ["member_left"] = "<strong>{memberName}</strong> has left the group",
        ["member_banned"] = "<strong>{memberName}</strong> has been banned from the group",
        ["member_kicked"] = "<strong>{memberName}</strong> has been kicked from the group",
    },
    -- Other
    ["open_phone"] = "Open phone",
    ["deleted_user"] = "Deleted User",
    ["unknown"] = "Unknown",
    ["unknown_caller"] = "Unknown Caller",
    ["newtweetwebhook"] = {
        ["title"] = "📢 New Tweet from {senderTwitterName} ({senderName} [**{senderId}**])!",
        ["replying"] = "Replying to @{tweeterName}",
        ["footer"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version")
    },
    ["tweetreportwebhook"] = {
        ["title"] = "📢 Tweet with ID {tweetId} posted by {tweeterName} was reported by {reporterTwitterName} ({reporterName} [**{reporterId}**])!",
        ["footer"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version")
    },
    ["newmailwebhook"] = {
        ["title"] = "📧 New Mail from **{senderMailAddress}** ({senderName} [**{senderId}**])!",
        ["description"] = "To **{recipients}**\nSubject: **{subject}**\nContent: **{content}**",
        ["footer"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version")
    },
    ["newadwebhook"] = {
        ["title"] = "📢 New Advertisment from **{senderFullname}** ({senderName} **{senderId}**)!",
        ["footer"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version")
    },
    ["newtransactionwebhook"] = {
        ["title"] = "💸 **New transaction**",
        ["description"] = "From player **{senderName}** [**{senderId}**] to **{receiverName}** [**{receiverId}**]\nTransaction reason: **{reason}**\nAmount: **{amount} €**",
        ["footer"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version")
    },
    ["twitterresetmail"] = {
        ["senderAddress"] = "noreply@twitter.com",
        ["senderName"] = "Twitter",
        ["senderPhoto"] = "media/icons/twitter.png",
        ["subject"] = "Account reset",
        ["content"] = "Hi there,<br><br>We've found your lost account! Here's the code required to reset your account's password!<br><br><strong>{resetCode}</strong><div class='footer twt'>@ 2022 Twitter.com. All rights reserved</div>"
    }
}