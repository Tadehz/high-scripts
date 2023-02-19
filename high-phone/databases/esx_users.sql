ALTER TABLE `users` ADD IF NOT EXISTS (
  `phone` varchar(50) DEFAULT NULL,
  `iban` varchar(50) DEFAULT NULL,
  `twitteraccount` int(11) DEFAULT NULL,
  `twitterban` datetime DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `reminders` longtext DEFAULT NULL,
  `playlists` longtext DEFAULT NULL,
  `photos` longtext DEFAULT NULL,
  `blockednumbers` longtext DEFAULT NULL,
  `darkchatuser` mediumtext DEFAULT NULL,
  `mailaccount` varchar(50) DEFAULT NULL
);