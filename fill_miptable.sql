BEGIN TRANSACTION;

INSERT INTO "miptable" VALUES('MIPtable::3hr','3hr','3-hourly data',NULL,'3hr','3hr',NULL);
INSERT INTO "miptable" VALUES('MIPtable::6hrLev','6hrLev','6-hourly data on atmospheric model levels',NULL,'6hr','6hrLev',NULL);
INSERT INTO "miptable" VALUES('MIPtable::6hrPlev','6hrPlev','6-hourly atmospheric data on pressure levels (time mean)',NULL,'6hr','6hrPlev',NULL);
INSERT INTO "miptable" VALUES('MIPtable::6hrPlevPt','6hrPlevPt','6-hourly atmospheric data on pressure levels (instantaneous)',NULL,'6hr','6hrPlevpt','Some 6-hourly variables are requested in both time mean and instantaneous forms to support different scientific analyses.');
INSERT INTO "miptable" VALUES('MIPtable::AERday','AERday','Daily atmospheric chemistry and aerosol data',NULL,'day','aerdaily',NULL);
INSERT INTO "miptable" VALUES('MIPtable::AERfx','AERfx','Fixed atmospheric chemistry and aerosol data',NULL,'fx','aerfixed',NULL);
INSERT INTO "miptable" VALUES('MIPtable::AERhr','AERhr','Hourly atmospheric chemistry and aerosol data',NULL,'1hr','aerhourly',NULL);
INSERT INTO "miptable" VALUES('MIPtable::AERmon','AERmon','Monthly atmospheric chemistry and aerosol data',NULL,'mon','aermonthly',NULL);
INSERT INTO "miptable" VALUES('MIPtable::AERmonZ','AERmonZ','Monthly atmospheric chemistry and aerosol data',NULL,'mon','aermonthlyz',NULL);
INSERT INTO "miptable" VALUES('MIPtable::Amon','Amon','Monthly atmospheric data',NULL,'mon','Amon','Monthly data is split between Amon, Omon, AERmon, CFmon, Lmon, LImon, SImon, EMmon, LImonAnt and LImonGre. Amon includes some monhly climatologies (frequency monClim) which should be provided as 12 monthly values averaged over the years requested.');
INSERT INTO "miptable" VALUES('MIPtable::CF3hr','CF3hr','3-hourly associated with cloud forcing',NULL,'3hr','cf3hr',NULL);
INSERT INTO "miptable" VALUES('MIPtable::CFday','CFday','Daily data associated with cloud forcing',NULL,'day','cfDay','Includes model level fields (ua, va, etc)');
INSERT INTO "miptable" VALUES('MIPtable::CFmon','CFmon','Monthly data associated with cloud forcing',NULL,'mon','cfMon',NULL);
INSERT INTO "miptable" VALUES('MIPtable::CFsubhr','CFsubhr','Diagnostics for cloud forcing analysis at specific sites',NULL,'subhr','cfSites',NULL);
INSERT INTO "miptable" VALUES('MIPtable::day','day','Daily Data (extension - contains both atmospheric and oceanographic data)',NULL,'day','day','Includes presure level fields (ua, va, etc)');
INSERT INTO "miptable" VALUES('MIPtable::E1hr','E1hr','Hourly Atmospheric Data (extension)',NULL,'1hr','em1hr','Data in the ''E...'' tables is requested by specific endorsed MIPs, and is generally more specialised than other tables.');
INSERT INTO "miptable" VALUES('MIPtable::E1hrClimMon','E1hrClimMon','Diurnal Cycle','Hourly data, averaged over days','1hrClimMon','em1hrclimmon','Average daily cycle, in 1 hour steps, monthly averages.');
INSERT INTO "miptable" VALUES('MIPtable::E3hr','E3hr','3-hourly (time mean, extension)',NULL,'3hr','em3hr','Data in the ''E...'' tables is requested by specific endorsed MIPs, and is generally more specialised than other tables.');
INSERT INTO "miptable" VALUES('MIPtable::E3hrPt','E3hrPt','3-hourly (instantaneous, extension)',NULL,'3hr','em3hrpt','Data in the ''E...'' tables is requested by specific endorsed MIPs, and is generally more specialised than other tables.');
INSERT INTO "miptable" VALUES('MIPtable::E6hrZ','E6hrZ','6-hourly Zonal Mean (extension)',NULL,'6hr','em6hrZ','Data in the ''E...'' tables is requested by specific endorsed MIPs, and is generally more specialised than other tables.');
INSERT INTO "miptable" VALUES('MIPtable::Eday','Eday','Daily (time mean, extension)',NULL,'day','emDay','Data in the ''E...'' tables is requested by specific endorsed MIPs, and is generally more specialised than other tables.');
INSERT INTO "miptable" VALUES('MIPtable::EdayZ','EdayZ','Daily Zonal Mean (extension)',NULL,'day','emDayZ','Data in the ''E...'' tables is requested by specific endorsed MIPs, and is generally more specialised than other tables.');
INSERT INTO "miptable" VALUES('MIPtable::Efx','Efx','Fixed (extension)',NULL,'fx','emFx','Data in the ''E...'' tables is requested by specific endorsed MIPs, and is generally more specialised than other tables.');
INSERT INTO "miptable" VALUES('MIPtable::Emon','Emon','Monthly (time mean, extension)',NULL,'mon','emMon','Data in the ''E...'' tables is requested by specific endorsed MIPs, and is generally more specialised than other tables.');
INSERT INTO "miptable" VALUES('MIPtable::EmonZ','EmonZ','Monthly zonal means (time mean, extension)',NULL,'mon','emMonZ','Data in the ''E...'' tables is requested by specific endorsed MIPs, and is generally more specialised than other tables.');
INSERT INTO "miptable" VALUES('MIPtable::Esubhr','Esubhr','Sub-hourly (extension)',NULL,'subhr','emSubhr','Data in the ''E...'' tables is requested by specific endorsed MIPs, and is generally more specialised than other tables.');
INSERT INTO "miptable" VALUES('MIPtable::Eyr','Eyr','Daily (time mean, extension)',NULL,'yr','emYr','Data in the ''E...'' tables is requested by specific endorsed MIPs, and is generally more specialised than other tables.');
INSERT INTO "miptable" VALUES('MIPtable::fx','fx','Fixed variables','Variables with no time dependency','fx','fx',NULL);
INSERT INTO "miptable" VALUES('MIPtable::IfxAnt','IfxAnt','Fixed fields on the Antarctic ice sheet',NULL,'fx','LIfxant',NULL);
INSERT INTO "miptable" VALUES('MIPtable::IfxGre','IfxGre','Fixed fields on the Greenland ice sheet',NULL,'fx','LIfxgre',NULL);
INSERT INTO "miptable" VALUES('MIPtable::ImonAnt','ImonAnt','Monthly fields on the Antarctic ice sheet',NULL,'mon','LImonant',NULL);
INSERT INTO "miptable" VALUES('MIPtable::ImonGre','ImonGre','Monthly fields on the Greenland ice sheet',NULL,'mon','LImongre',NULL);
INSERT INTO "miptable" VALUES('MIPtable::IyrAnt','IyrAnt','Annual fields on the Antarctic ice sheet',NULL,'yr','LIyrant',NULL);
INSERT INTO "miptable" VALUES('MIPtable::IyrGre','IyrGre','Annual fields on the Greenland ice sheet',NULL,'yr','LIyrgre',NULL);
INSERT INTO "miptable" VALUES('MIPtable::LImon','LImon','Monthly fields for the terrestrial cryosphere',NULL,'mon','LImon','Includes both fields over all land and fields restricted to ice sheets.');
INSERT INTO "miptable" VALUES('MIPtable::Lmon','Lmon','Monthly land surface and soil model fields',NULL,'mon','Lmon',NULL);
INSERT INTO "miptable" VALUES('MIPtable::Oclim','Oclim','Monthly climatologies of ocean data','Monthly Mean Climatology','monClim','Oclim','Ocean climatologies,  12 monthly values, averaged over the time period requested.');
INSERT INTO "miptable" VALUES('MIPtable::Oday','Oday','Daily ocean data','Daily Mean Atmosphere, Ocean and Surface Fields','day','Oday',NULL);
INSERT INTO "miptable" VALUES('MIPtable::Odec','Odec','Decadal ocean data',NULL,'decadal','Odec',NULL);
INSERT INTO "miptable" VALUES('MIPtable::Ofx','Ofx','Fixed ocean data',NULL,'fx','Ofx',NULL);
INSERT INTO "miptable" VALUES('MIPtable::Omon','Omon','Monthly ocean data',NULL,'mon','Omon',NULL);
INSERT INTO "miptable" VALUES('MIPtable::Oyr','Oyr','Annual ocean variables','Annual mean variables on the ocean grid.','yr','Oyr','ocean as in ocean grid');
INSERT INTO "miptable" VALUES('MIPtable::SIday','SIday','Daily sea-ice data',NULL,'day','SIday',NULL);
INSERT INTO "miptable" VALUES('MIPtable::SImon','SImon','Monthly sea-ice data','Monthly Mean Ocean Cryosphere Fields','mon','SImon',NULL);

COMMIT TRANSACTION;
