CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `failed_attempts` int(11) DEFAULT '0',
  `unlock_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_unlock_token` (`unlock_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `chrFactions` (
  `factionID` int(11) NOT NULL,
  `factionName` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `raceIDs` int(11) DEFAULT NULL,
  `solarSystemID` int(11) DEFAULT NULL,
  `corporationID` int(11) DEFAULT NULL,
  `sizeFactor` double DEFAULT NULL,
  `stationCount` smallint(6) DEFAULT NULL,
  `stationSystemCount` smallint(6) DEFAULT NULL,
  `militiaCorporationID` int(11) DEFAULT NULL,
  PRIMARY KEY (`factionID`),
  KEY `solarSystemID` (`solarSystemID`),
  KEY `corporationID` (`corporationID`),
  KEY `militiaCorporationID` (`militiaCorporationID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `mapConstellations` (
  `regionID` int(11) DEFAULT NULL,
  `constellationID` int(11) NOT NULL,
  `constellationName` varchar(100) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `xMin` double DEFAULT NULL,
  `xMax` double DEFAULT NULL,
  `yMin` double DEFAULT NULL,
  `yMax` double DEFAULT NULL,
  `zMin` double DEFAULT NULL,
  `zMax` double DEFAULT NULL,
  `factionID` int(11) DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `systems_count` int(11) DEFAULT NULL,
  `security_avg` double DEFAULT NULL,
  PRIMARY KEY (`constellationID`),
  UNIQUE KEY `constellationID` (`constellationID`,`regionID`),
  KEY `mapConstellations_IX_region` (`regionID`),
  KEY `factionID` (`factionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `mapRegionJumps` (
  `fromRegionID` int(11) NOT NULL,
  `toRegionID` int(11) NOT NULL,
  PRIMARY KEY (`fromRegionID`,`toRegionID`),
  KEY `toRegionID` (`toRegionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `mapRegions` (
  `regionID` int(11) NOT NULL,
  `regionName` varchar(100) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `xMin` double DEFAULT NULL,
  `xMax` double DEFAULT NULL,
  `yMin` double DEFAULT NULL,
  `yMax` double DEFAULT NULL,
  `zMin` double DEFAULT NULL,
  `zMax` double DEFAULT NULL,
  `factionID` int(11) DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `constellations_count` int(11) DEFAULT NULL,
  `systems_count` int(11) DEFAULT NULL,
  `security_avg` double DEFAULT NULL,
  PRIMARY KEY (`regionID`),
  KEY `factionID` (`factionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `mapSolarSystemJumps` (
  `fromRegionID` int(11) DEFAULT NULL,
  `fromConstellationID` int(11) DEFAULT NULL,
  `fromSolarSystemID` int(11) NOT NULL,
  `toSolarSystemID` int(11) NOT NULL,
  `toConstellationID` int(11) DEFAULT NULL,
  `toRegionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`fromSolarSystemID`,`toSolarSystemID`),
  KEY `mapSolarSystemJumps_IX_fromConstellation` (`fromConstellationID`),
  KEY `mapSolarSystemJumps_IX_fromRegion` (`fromRegionID`),
  KEY `fromSolarSystemID` (`fromSolarSystemID`,`fromConstellationID`,`fromRegionID`),
  KEY `toSolarSystemID` (`toSolarSystemID`,`toConstellationID`,`toRegionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `mapSolarSystems` (
  `regionID` int(11) DEFAULT NULL,
  `constellationID` int(11) DEFAULT NULL,
  `solarSystemID` int(11) NOT NULL,
  `solarSystemName` varchar(100) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `xMin` double DEFAULT NULL,
  `xMax` double DEFAULT NULL,
  `yMin` double DEFAULT NULL,
  `yMax` double DEFAULT NULL,
  `zMin` double DEFAULT NULL,
  `zMax` double DEFAULT NULL,
  `luminosity` double DEFAULT NULL,
  `border` tinyint(1) DEFAULT NULL,
  `fringe` tinyint(1) DEFAULT NULL,
  `corridor` tinyint(1) DEFAULT NULL,
  `hub` tinyint(1) DEFAULT NULL,
  `international` tinyint(1) DEFAULT NULL,
  `regional` tinyint(1) DEFAULT NULL,
  `constellation` tinyint(1) DEFAULT NULL,
  `security` double DEFAULT NULL,
  `factionID` int(11) DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `sunTypeID` smallint(6) DEFAULT NULL,
  `securityClass` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`solarSystemID`),
  UNIQUE KEY `solarSystemID` (`solarSystemID`,`constellationID`,`regionID`),
  KEY `mapSolarSystems_IX_constellation` (`constellationID`),
  KEY `mapSolarSystems_IX_region` (`regionID`),
  KEY `mapSolarSystems_IX_security` (`security`),
  KEY `factionID` (`factionID`),
  KEY `sunTypeID` (`sunTypeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `mapUniverse` (
  `universeID` int(11) NOT NULL,
  `universeName` varchar(100) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `xMin` double DEFAULT NULL,
  `xMax` double DEFAULT NULL,
  `yMin` double DEFAULT NULL,
  `yMax` double DEFAULT NULL,
  `zMin` double DEFAULT NULL,
  `zMax` double DEFAULT NULL,
  `radius` double DEFAULT NULL,
  PRIMARY KEY (`universeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `failed_attempts` int(11) DEFAULT '0',
  `unlock_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_unlock_token` (`unlock_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO schema_migrations (version) VALUES ('20100612151116');

INSERT INTO schema_migrations (version) VALUES ('20100612172415');