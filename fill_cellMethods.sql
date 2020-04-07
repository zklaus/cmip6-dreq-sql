BEGIN TRANSACTION;

INSERT INTO "cellMethods" VALUES('CellMethods::aclim','aclim','Annual Climatology','area: mean time: mean within years time: mean over years',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::adm-tm','adm-tm','Area, Depth and Time Mean','area: depth: time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::am','am','Area Mean','area: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::am-tm','am-tm','Area and Time Mean','area: time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::am-tmh','am-tmh','Maximum Hourly Rate','area: mean time: mean within hours time: maximum over hours',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::am-ts','am-ts','Area Mean and Time Sum','area: mean time: sum',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amc-twm','amc-twm','Weighted Time Mean on Crops','area: time: mean where crops (comment: mask=cropFrac)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amds-tmn','amds-tmn','Sum over upper 100m, Time Mean','area: mean where sea depth: sum where sea (top 100m only) time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amdss-tmn','amdss-tmn','Sum over depth, Time Mean','area: mean where sea depth: sum where sea time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amgi-fx','amgi-fx','Fixed Area Mean over Grounded Ice Sheets','area: mean where grounded_ice_sheet',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::ami-fx','ami-fx','Fixed Area Mean over Grounded Ice Sheets','area: mean where ice_sheet',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amla','amla','Fixed Area Mean','area: mean where land',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amlax-tpt','amlax-tpt','Contribution from Land (Instantaneous)','area: mean where land over all_area_types time: point',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amlu-tpt','amlu-tpt','Instantaneous mean on Landuse Tiles','area: mean where sector time: point','sector is an auxiliary coordinate, used for dimension landuse');
INSERT INTO "cellMethods" VALUES('CellMethods::amlu-twm','amlu-twm','Weighted Time Mean on Landuse Tiles','area: time: mean where sector','sector is an auxiliary coordinate, used for dimension landuse');
INSERT INTO "cellMethods" VALUES('CellMethods::amn-fx','amn-fx','Fixed Area Mean','area: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amn-tdnl','amn-tdnl','Mean Diurnal Cycle','area: mean time: mean within days time: mean over days',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amn-tpt','amn-tpt','Area Mean Instantaneous','area: mean time: point',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amncl-twm','amncl-twm','Weighted Time Mean on Cloud','area: time: mean where cloud',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnfi-twmn','amnfi-twmn','Weighted Time Mean on Floating Ice Shelf','area: time: mean where floating_ice_shelf (comment: mask=sftflf)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amng-twm','amng-twm','Weighted Time Mean on Natural Grasses','area: time: mean where natural_grasses (comment: mask=grassFrac)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amngi-twmn','amngi-twmn','Weighted Time Mean on Grounded Ice Shelf','area: time: mean where grounded_ice_sheet (comment: mask=sfgrlf)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amni-twmn','amni-twmn','Weighted Time Mean on Ice Sheet','area: time: mean where ice_sheet',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnifs-tmn','amnifs-tmn','Partial Mean over Ice-free sea','area: mean where ice_free_sea over sea time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnla-tmn','amnla-tmn','Time Mean over Land','area: mean where land time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnla-tmnsn','amnla-tmnsn','Snow Mass Weighted','area: mean where land time: mean (with samples weighted by snow mass)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnla-tpt','amnla-tpt','Instantaneous Mean over Land','area: mean where land time: point',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnlax-tmn','amnlax-tmn','Time Mean contribution from Land','area: mean where land over all_area_types time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnlsi-tpt','amnlsi-tpt','Mean Contribution from land and sea ice','area: mean (comment: over land and sea ice) time: point',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnlsi-twm','amnlsi-twm','Mean Contribution from land and sea ice','area: time: mean (comment: over land and sea ice)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amns-fx','amns-fx','Area Mean over Sea','area: mean where sea',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnsi-tpt','amnsi-tpt','Instantaneous over Sea-ice','area: mean where sea_ice (comment: mask=siconc) time: point',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnsi-twm','amnsi-twm','Weighted Time Mean on Sea-ice','area: time: mean where sea_ice (comment: mask=siconc)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnsia-twm','amnsia-twm','Weighted Time Mean on Sea-ice (atmospheric grid)','area: time: mean where sea_ice (comment: mask=siconca)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnsib-twm','amnsib-twm','Weighted Time Mean in Sea-ice Thickness Bands','area: time: mean where sea_ice (comment: mask=siitdconc)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnsimp-twm','amnsimp-twm','Weighted Time Mean in Sea-ice Melt Ponds','area: time: mean where sea_ice_melt_pond (comment: mask=simpconc)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnsirdg-twm','amnsirdg-twm','Weighted Time Mean on Sea-ice Rdges','area: time: mean where sea_ice_ridges (comment: mask=sirdgconc)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amnsnla-twm','amnsnla-twm','Weighted Time Mean in over Snow and Ice covered Land','area: time: mean where snow (comment: mask=snc)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amp-twm','amp-twm','Weighted Time Mean on Pastures','area: time: mean where pastures (comment: mask=pastureFrac)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::ams-twm','ams-twm','Weighted Time Mean on Shrubs','area: time: mean where shrubs (comment: mask=shrubFrac)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amse-tmn','amse-tmn','Time Mean over Sea','area: mean where sea time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amse-tpt','amse-tpt','Instantaneous over Sea','area: mean where sea time: point',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amsnsi-tmn','amsnsi-tmn','Weighted Time Mean over area of Snow on Sea-ice','area: mean where snow over sea_ice area: time: mean where sea_ice','For snow heat content and snow thickness.');
INSERT INTO "cellMethods" VALUES('CellMethods::amtr-twm','amtr-twm','Weighted Time Mean on Unfrozen Ground','area: time: mean where trees (comment: mask=treeFrac)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amunf-twm','amunf-twm','Weighted Time Mean on Bare Ground','area: time: mean where unfrozen_soil',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::amv-twm','amv-twm','Weighted Time Mean on Vegetation','area: time: mean where vegetation (comment: mask=vegFrac)',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::apt','apt','Point Values','area: point',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::apt-tpt','apt-tpt','Point-Instantaneous','area: point time: point',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::asm-tmn','asm-tmn','Time Mean of Area Sum','area: sum where sea time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::asmi-tmn','asmi-tmn','Time Mean of Area Sum on Ice Sheet','area: sum where ice_sheet time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::asum-fx','asum-fx','Fixed Area Sum','area: sum',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::bgzmean','bgzmean','Basin Zonal Mean on Model Grid','time: mean grid_longitude: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::bzzsum','bzzsum','Basin Zig-Zag Zonal Sum','longitude: sum (comment: basin sum [along zig-zag grid path]) depth: sum time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::dmax','dmax','Daily Maximum','area: mean time: maximum within days time: mean over days',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::dmaxc','dmaxc','Daily Maximum over Crops','area: mean where crops time: maximum within days time: mean over days',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::dmin','dmin','Daily Minimum','area: mean time: minimum within days time: mean over days',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::dminc','dminc','Daily Minimum over Crops','area: mean where crops time: minimum within days time: mean over days',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::fixed','fixed','Fixed field',NULL,NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::tmax','tmax','Time Maximum','area: mean time: maximum','Time maximum over the time interval specified by the frequency.');
INSERT INTO "cellMethods" VALUES('CellMethods::tmaxc','tmaxc','Time Maximum over Crops','area: mean where crops time: maximum','Time maximum over the time interval specified by the frequency.');
INSERT INTO "cellMethods" VALUES('CellMethods::tmean','tmean','Time Mean','time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::tmin','tmin','Temporal Minimum','area: mean time: minimum',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::tminc','tminc','Temporal Minimum over Crops','area: mean where crops time: minimum',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::tpt','tpt','Instantaneous','time: point',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::tsum','tsum','Temporal Sum','area: mean where land over all_area_types time: sum',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::zmean','zmean','Zonal Time Mean','longitude: mean time: mean',NULL);
INSERT INTO "cellMethods" VALUES('CellMethods::zmean-tpt','zmean-tpt','Zonal Mean','longitude: mean time: point',NULL);

COMMIT TRANSACTION;