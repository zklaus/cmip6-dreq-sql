BEGIN TRANSACTION;

INSERT INTO "tags" VALUES('TAG:4co2','4co2','Radiation fields with quadrupled CO2','Radiation fields should be computed with atmospheric CO2 concentrations multiplied by  a factor 4.');
INSERT INTO "tags" VALUES('TAG:CL','CL','climatology ',NULL);
INSERT INTO "tags" VALUES('TAG:emOnly','emOnly','Only Emission Driven','Only required for emission driven runs');
INSERT INTO "tags" VALUES('TAG:gw','gw','Gravity wave diagnostics','Gravity wave diagnostics');
INSERT INTO "tags" VALUES('TAG:MSK','MSK','masking',NULL);
INSERT INTO "tags" VALUES('TAG:NS','NS','near surface (atmosphere)',NULL);
INSERT INTO "tags" VALUES('TAG:SD','SD','specialised definition','specialised definition of variable which is more tightly constrained than the CF standard name; variables marked with this will need special attention.');
INSERT INTO "tags" VALUES('TAG:si','si','Sea ice','Variables which are restricted to sea-ice.');
INSERT INTO "tags" VALUES('TAG:SM','SM','spectral mean',NULL);
INSERT INTO "tags" VALUES('TAG:SPI','SPI','spatial interpolation',NULL);
INSERT INTO "tags" VALUES('TAG:STAT','STAT','temporal statistics',NULL);
INSERT INTO "tags" VALUES('TAG:TM','TM','time mean',NULL);
INSERT INTO "tags" VALUES('TAG:VCI','VCI','vertical coordinate interpolation',NULL);
INSERT INTO "tags" VALUES('TAG:WM','WM','weighted time mean','The weighted time mean is important when a time varying mask is used (e.g. sea ice)');
INSERT INTO "tags" VALUES('TAG:zm','zm','Zonal mean',NULL);

COMMIT TRANSACTION;
