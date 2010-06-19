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

CREATE TABLE `agtAgentTypes` (
  `agentTypeID` tinyint(3) unsigned NOT NULL,
  `agentType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`agentTypeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `agtAgents` (
  `agentID` int(11) NOT NULL,
  `divisionID` tinyint(3) unsigned DEFAULT NULL,
  `corporationID` int(11) DEFAULT NULL,
  `locationID` int(11) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `quality` smallint(6) DEFAULT NULL,
  `agentTypeID` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`agentID`),
  KEY `agtAgents_IX_corporation` (`corporationID`),
  KEY `agtAgents_IX_station` (`locationID`),
  KEY `divisionID` (`divisionID`),
  KEY `agentTypeID` (`agentTypeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `agtConfig` (
  `agentID` int(11) NOT NULL,
  `k` varchar(50) NOT NULL,
  `v` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`agentID`,`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `agtResearchAgents` (
  `agentID` int(11) NOT NULL,
  `typeID` smallint(6) NOT NULL,
  PRIMARY KEY (`agentID`,`typeID`),
  KEY `agtResearchAgents_IX_type` (`typeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `chrAncestries` (
  `ancestryID` tinyint(3) unsigned NOT NULL,
  `ancestryName` varchar(100) DEFAULT NULL,
  `bloodlineID` tinyint(3) unsigned DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `perception` tinyint(4) DEFAULT NULL,
  `willpower` tinyint(4) DEFAULT NULL,
  `charisma` tinyint(4) DEFAULT NULL,
  `memory` tinyint(4) DEFAULT NULL,
  `intelligence` tinyint(4) DEFAULT NULL,
  `graphicID` smallint(6) DEFAULT NULL,
  `shortDescription` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ancestryID`),
  KEY `bloodlineID` (`bloodlineID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `chrAttributes` (
  `attributeID` tinyint(3) unsigned NOT NULL,
  `attributeName` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `graphicID` smallint(6) DEFAULT NULL,
  `shortDescription` varchar(500) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`attributeID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `chrBloodlines` (
  `bloodlineID` tinyint(3) unsigned NOT NULL,
  `bloodlineName` varchar(100) DEFAULT NULL,
  `raceID` tinyint(3) unsigned DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `maleDescription` varchar(1000) DEFAULT NULL,
  `femaleDescription` varchar(1000) DEFAULT NULL,
  `shipTypeID` smallint(6) DEFAULT NULL,
  `corporationID` int(11) DEFAULT NULL,
  `perception` tinyint(4) DEFAULT NULL,
  `willpower` tinyint(4) DEFAULT NULL,
  `charisma` tinyint(4) DEFAULT NULL,
  `memory` tinyint(4) DEFAULT NULL,
  `intelligence` tinyint(4) DEFAULT NULL,
  `graphicID` smallint(6) DEFAULT NULL,
  `shortDescription` varchar(500) DEFAULT NULL,
  `shortMaleDescription` varchar(500) DEFAULT NULL,
  `shortFemaleDescription` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`bloodlineID`),
  KEY `raceID` (`raceID`),
  KEY `shipTypeID` (`shipTypeID`),
  KEY `corporationID` (`corporationID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `chrRaces` (
  `raceID` tinyint(3) unsigned NOT NULL,
  `raceName` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `graphicID` smallint(6) DEFAULT NULL,
  `shortDescription` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`raceID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `eveGraphics` (
  `graphicID` smallint(6) NOT NULL,
  `url3D` varchar(100) DEFAULT NULL,
  `urlWeb` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `obsolete` tinyint(1) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `urlSound` varchar(100) DEFAULT NULL,
  `explosionID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`graphicID`),
  KEY `explosionID` (`explosionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `eveNames` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(100) DEFAULT NULL,
  `categoryID` tinyint(3) unsigned DEFAULT NULL,
  `groupID` smallint(6) DEFAULT NULL,
  `typeID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  KEY `categoryID` (`categoryID`),
  KEY `groupID` (`groupID`),
  KEY `typeID` (`typeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `eveUnits` (
  `unitID` tinyint(3) unsigned NOT NULL,
  `unitName` varchar(100) DEFAULT NULL,
  `displayName` varchar(20) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`unitID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `invCategories` (
  `categoryID` tinyint(3) unsigned NOT NULL,
  `categoryName` varchar(100) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `graphicID` smallint(6) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`categoryID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `invContrabandTypes` (
  `factionID` int(11) NOT NULL,
  `typeID` smallint(6) NOT NULL,
  `standingLoss` double DEFAULT NULL,
  `confiscateMinSec` double DEFAULT NULL,
  `fineByValue` double DEFAULT NULL,
  `attackMinSec` double DEFAULT NULL,
  PRIMARY KEY (`factionID`,`typeID`),
  KEY `invContrabandTypes_IX_type` (`typeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `invFlags` (
  `flagID` tinyint(3) unsigned NOT NULL,
  `flagName` varchar(100) DEFAULT NULL,
  `flagText` varchar(100) DEFAULT NULL,
  `flagType` varchar(20) DEFAULT NULL,
  `orderID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`flagID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `invGroups` (
  `groupID` smallint(6) NOT NULL,
  `categoryID` tinyint(3) unsigned DEFAULT NULL,
  `groupName` varchar(100) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `graphicID` smallint(6) DEFAULT NULL,
  `useBasePrice` tinyint(1) DEFAULT NULL,
  `allowManufacture` tinyint(1) DEFAULT NULL,
  `allowRecycler` tinyint(1) DEFAULT NULL,
  `anchored` tinyint(1) DEFAULT NULL,
  `anchorable` tinyint(1) DEFAULT NULL,
  `fittableNonSingleton` tinyint(1) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`groupID`),
  KEY `invGroups_IX_category` (`categoryID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `invMarketGroups` (
  `marketGroupID` smallint(6) NOT NULL,
  `parentGroupID` smallint(6) DEFAULT NULL,
  `marketGroupName` varchar(100) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `graphicID` smallint(6) DEFAULT NULL,
  `hasTypes` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`marketGroupID`),
  KEY `parentGroupID` (`parentGroupID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `invMetaGroups` (
  `metaGroupID` smallint(6) NOT NULL,
  `metaGroupName` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `graphicID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`metaGroupID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `invMetaTypes` (
  `typeID` smallint(6) NOT NULL,
  `parentTypeID` smallint(6) DEFAULT NULL,
  `metaGroupID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`typeID`),
  KEY `parentTypeID` (`parentTypeID`),
  KEY `metaGroupID` (`metaGroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `invTypeMaterials` (
  `typeID` smallint(6) NOT NULL,
  `materialTypeID` smallint(6) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`typeID`,`materialTypeID`),
  KEY `materialTypeID` (`materialTypeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `invTypeReactions` (
  `reactionTypeID` smallint(6) NOT NULL,
  `input` tinyint(1) NOT NULL,
  `typeID` smallint(6) NOT NULL,
  `quantity` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`reactionTypeID`,`input`,`typeID`),
  KEY `typeID` (`typeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `invTypes` (
  `typeID` smallint(6) NOT NULL,
  `groupID` smallint(6) DEFAULT NULL,
  `typeName` varchar(100) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `graphicID` smallint(6) DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `mass` double DEFAULT NULL,
  `volume` double DEFAULT NULL,
  `capacity` double DEFAULT NULL,
  `portionSize` int(11) DEFAULT NULL,
  `raceID` tinyint(3) unsigned DEFAULT NULL,
  `basePrice` double DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `marketGroupID` smallint(6) DEFAULT NULL,
  `chanceOfDuplicating` double DEFAULT NULL,
  PRIMARY KEY (`typeID`),
  KEY `invTypes_IX_Group` (`groupID`),
  KEY `graphicID` (`graphicID`),
  KEY `raceID` (`raceID`),
  KEY `marketGroupID` (`marketGroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `mapCelestialStatistics` (
  `celestialID` int(11) NOT NULL,
  `temperature` double DEFAULT NULL,
  `spectralClass` varchar(10) DEFAULT NULL,
  `luminosity` double DEFAULT NULL,
  `age` double DEFAULT NULL,
  `life` double DEFAULT NULL,
  `orbitRadius` double DEFAULT NULL,
  `eccentricity` double DEFAULT NULL,
  `massDust` double DEFAULT NULL,
  `massGas` double DEFAULT NULL,
  `fragmented` tinyint(1) DEFAULT NULL,
  `density` double DEFAULT NULL,
  `surfaceGravity` double DEFAULT NULL,
  `escapeVelocity` double DEFAULT NULL,
  `orbitPeriod` double DEFAULT NULL,
  `rotationRate` double DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `pressure` double DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `mass` double DEFAULT NULL,
  PRIMARY KEY (`celestialID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `mapConstellationJumps` (
  `fromRegionID` int(11) DEFAULT NULL,
  `fromConstellationID` int(11) NOT NULL,
  `toConstellationID` int(11) NOT NULL,
  `toRegionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`fromConstellationID`,`toConstellationID`),
  KEY `mapConstellationJumps_IX_fromRegion` (`fromRegionID`),
  KEY `toConstellationID` (`toConstellationID`,`toRegionID`),
  KEY `fromConstellationID` (`fromConstellationID`,`fromRegionID`)
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

CREATE TABLE `mapLandmarks` (
  `landmarkID` smallint(6) NOT NULL,
  `landmarkName` varchar(100) DEFAULT NULL,
  `description` varchar(7000) DEFAULT NULL,
  `locationID` int(11) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `graphicID` smallint(6) DEFAULT NULL,
  `importance` tinyint(4) DEFAULT NULL,
  `url2d` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`landmarkID`),
  KEY `locationID` (`locationID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `mapLocationScenes` (
  `locationID` int(11) NOT NULL,
  `sceneID` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`locationID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `mapLocationWormholeClasses` (
  `locationID` int(11) NOT NULL,
  `wormholeClassID` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`locationID`)
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

CREATE TABLE `staOperationServices` (
  `operationID` tinyint(3) unsigned NOT NULL,
  `serviceID` int(11) NOT NULL,
  PRIMARY KEY (`operationID`,`serviceID`),
  KEY `serviceID` (`serviceID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `staOperations` (
  `activityID` tinyint(3) unsigned DEFAULT NULL,
  `operationID` tinyint(3) unsigned NOT NULL,
  `operationName` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `fringe` tinyint(4) DEFAULT NULL,
  `corridor` tinyint(4) DEFAULT NULL,
  `hub` tinyint(4) DEFAULT NULL,
  `border` tinyint(4) DEFAULT NULL,
  `ratio` tinyint(4) DEFAULT NULL,
  `caldariStationTypeID` smallint(6) DEFAULT NULL,
  `minmatarStationTypeID` smallint(6) DEFAULT NULL,
  `amarrStationTypeID` smallint(6) DEFAULT NULL,
  `gallenteStationTypeID` smallint(6) DEFAULT NULL,
  `joveStationTypeID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`operationID`),
  KEY `activityID` (`activityID`),
  KEY `caldariStationTypeID` (`caldariStationTypeID`),
  KEY `minmatarStationTypeID` (`minmatarStationTypeID`),
  KEY `amarrStationTypeID` (`amarrStationTypeID`),
  KEY `gallenteStationTypeID` (`gallenteStationTypeID`),
  KEY `joveStationTypeID` (`joveStationTypeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `staServices` (
  `serviceID` int(11) NOT NULL,
  `serviceName` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`serviceID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `staStationTypes` (
  `stationTypeID` smallint(6) NOT NULL,
  `dockingBayGraphicID` smallint(6) DEFAULT NULL,
  `hangarGraphicID` smallint(6) DEFAULT NULL,
  `dockEntryX` double DEFAULT NULL,
  `dockEntryY` double DEFAULT NULL,
  `dockEntryZ` double DEFAULT NULL,
  `dockOrientationX` double DEFAULT NULL,
  `dockOrientationY` double DEFAULT NULL,
  `dockOrientationZ` double DEFAULT NULL,
  `operationID` tinyint(3) unsigned DEFAULT NULL,
  `officeSlots` tinyint(4) DEFAULT NULL,
  `reprocessingEfficiency` double DEFAULT NULL,
  `conquerable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`stationTypeID`),
  KEY `dockingBayGraphicID` (`dockingBayGraphicID`),
  KEY `hangarGraphicID` (`hangarGraphicID`),
  KEY `operationID` (`operationID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `staStations` (
  `stationID` int(11) NOT NULL,
  `security` smallint(6) DEFAULT NULL,
  `dockingCostPerVolume` double DEFAULT NULL,
  `maxShipVolumeDockable` double DEFAULT NULL,
  `officeRentalCost` int(11) DEFAULT NULL,
  `operationID` tinyint(3) unsigned DEFAULT NULL,
  `stationTypeID` smallint(6) DEFAULT NULL,
  `corporationID` int(11) DEFAULT NULL,
  `solarSystemID` int(11) DEFAULT NULL,
  `constellationID` int(11) DEFAULT NULL,
  `regionID` int(11) DEFAULT NULL,
  `stationName` varchar(100) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `reprocessingEfficiency` double DEFAULT NULL,
  `reprocessingStationsTake` double DEFAULT NULL,
  `reprocessingHangarFlag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`stationID`),
  KEY `staStations_IX_constellation` (`constellationID`),
  KEY `staStations_IX_corporation` (`corporationID`),
  KEY `staStations_IX_operation` (`operationID`),
  KEY `staStations_IX_region` (`regionID`),
  KEY `staStations_IX_system` (`solarSystemID`),
  KEY `staStations_IX_type` (`stationTypeID`),
  KEY `solarSystemID` (`solarSystemID`,`constellationID`,`regionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO schema_migrations (version) VALUES ('20100612151116');

INSERT INTO schema_migrations (version) VALUES ('20100612172415');