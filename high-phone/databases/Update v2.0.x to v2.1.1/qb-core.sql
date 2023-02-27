ALTER TABLE `players` DROP COLUMN `calls`, ADD `blockednumbers` LONGTEXT;
UPDATE `phone_contacts` SET `owner` = (SELECT `phone` FROM `players` WHERE phone_contacts.owner = players.citizenid);
ALTER TABLE `phone_chats` ADD `members` MEDIUMTEXT, ADD `photo` VARCHAR(256), ADD `lastMessage` BIGINT DEFAULT 0;
ALTER TABLE `phone_darkgroups` ADD `lastMessage` BIGINT DEFAULT 0;
INSERT INTO `phone_chats` (`owner`, `name`, `photo`, `members`) (SELECT `owner`, `name`, `photo`, `members` FROM `phone_groups`);
DROP TABLE `phone_groups`;
UPDATE `phone_chats` SET `owner` = (SELECT `phone` FROM `players` WHERE phone_chats.owner = players.citizenid);