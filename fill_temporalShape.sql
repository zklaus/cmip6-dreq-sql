BEGIN TRANSACTION;

INSERT INTO "temporalShape" VALUES('7a97ae58-8042-11e6-97ee-ac72891c3257','climatology','Climatological mean','dim:time2','time2',NULL);
INSERT INTO "temporalShape" VALUES('7a972f78-8042-11e6-97ee-ac72891c3257','diurnal-cycle','Mean Diurnal Cycle','dim:time3','time3',NULL);
INSERT INTO "temporalShape" VALUES('7a96eb30-8042-11e6-97ee-ac72891c3257','None','No temporal dimensions ... fixed field',NULL,NULL,NULL);
INSERT INTO "temporalShape" VALUES('cf34c974-80be-11e6-97ee-ac72891c3257','time-mean','Temporal mean','dim:time','time',NULL);
INSERT INTO "temporalShape" VALUES('7a976ce0-8042-11e6-97ee-ac72891c3257','time-point','Instantaneous value (i.e. synoptic or time-step value)','dim:time1','time1',NULL);

COMMIT TRANSACTION;
