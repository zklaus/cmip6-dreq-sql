PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

CREATE TABLE uids (
  uid TEXT PRIMARY KEY NOT NULL
  ,table_name TEXT
  );

CREATE TABLE units (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"group" TEXT
  ,"text" TEXT
  );

CREATE TABLE remarks (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"tid" TEXT
  ,"tattr" TEXT
  ,"description" TEXT
  ,"class" TEXT
  ,"qid" TEXT
  ,"techNote" TEXT
  ,"prov" TEXT
  );

CREATE TABLE exptgroup (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"tierMin" INTEGER
  ,"ntot" INTEGER
  );

CREATE TABLE mip (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"description" TEXT
  ,"url" TEXT
  );

CREATE TABLE miptable (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"description" TEXT
  ,"frequency" TEXT
  ,"altLabel" TEXT
  ,"comment" TEXT
  );

CREATE TABLE modelConfig (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"MIPs" TEXT
  ,"usage" TEXT
  ,"type" TEXT
  ,"range" TEXT
  );

CREATE TABLE varChoice (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"choiceClass" TEXT
  ,"description" TEXT
  ,"varList" TEXT
  ,"optionList" TEXT
  );

CREATE TABLE spatialShape (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"dimensions" TEXT
  ,"dimids" TEXT
  ,"levels" INTEGER
  ,"levelFlag" BOOLEAN
  );

CREATE TABLE cellMethods (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"cell_methods" TEXT
  ,"description" TEXT
  );

CREATE TABLE timeSlice (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"type" TEXT
  ,"start" INTEGER
  ,"end" INTEGER
  ,"step" FLOAT
  ,"sliceLen" INTEGER
  ,"nyears" FLOAT
  ,"startList" TEXT
  ,"sliceLenUnit" TEXT
  ,"description" TEXT
  ,"child" TEXT
  );

CREATE TABLE tags (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"description" TEXT
  );

CREATE TABLE varRelations (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"description" TEXT
  ,"relation" TEXT
  );

CREATE TABLE varRelLnk (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"rlid" TEXT
  ,"rid" TEXT
  );

CREATE TABLE "standardname" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"description" TEXT
  ,"units" TEXT
  ,"first_version" INTEGER
  );

CREATE TABLE requestItemTarget (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  , "kind" TEXT, "experiment" TEXT REFERENCES experiment (uid)
  , "exptgroup" TEXT REFERENCES exptgroup (uid)
  , "mip" TEXT REFERENCES mip (uid)
  );

CREATE TABLE "CMORvar" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"stid" TEXT REFERENCES structure (uid)
  ,"vid" TEXT REFERENCES var (uid)
  ,"deflate" TEXT
  ,"deflate_level" TEXT
  ,"shuffle" TEXT
  ,"defaultPriority" INTEGER
  ,"type" TEXT
  ,"modeling_realm" TEXT
  ,"positive" TEXT
  ,"mipTableSection" TEXT
  ,"mtid" TEXT REFERENCES miptable (uid)
  ,"mipTable" TEXT
  ,"prov" TEXT
  ,"processing" TEXT
  ,"provNote" TEXT
  ,"frequency" TEXT
  ,"rowIndex" INTEGER
  ,"description" TEXT
  ,"subGroup" TEXT
  , UNIQUE (vid, mtid, stid)
  );

CREATE TABLE "experiment" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"description" TEXT
  ,"egid" TEXT REFERENCES exptgroup (uid)
  ,"mip" TEXT REFERENCES mip (uid)
  ,"mcfg" TEXT
  ,"tier" TEXT
  ,"nstart" INTEGER
  ,"starty" TEXT
  ,"endy" TEXT
  ,"yps" INTEGER
  ,"ensz" TEXT
  ,"ntot" INTEGER
  ,"comment" TEXT
  );

CREATE TABLE "grids" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"tables" TEXT
  ,"altLabel" TEXT
  ,"description" TEXT
  ,"standardName" TEXT REFERENCES standardname (uid)
  ,"axis" TEXT
  ,"units" TEXT
  ,"isIndex" TEXT
  ,"coords" TEXT
  ,"bounds" TEXT
  ,"direction" TEXT
  ,"valid_min" FLOAT
  ,"valid_max" FLOAT
  ,"type" TEXT
  ,"positive" TEXT
  ,"value" TEXT
  ,"boundsValues" TEXT
  ,"requested" TEXT
  ,"boundsRequested" TEXT
  ,"tolRequested" TEXT
  ,"isGrid" TEXT
  );

CREATE TABLE "objective" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"description" TEXT
  ,"mip" TEXT REFERENCES mip (uid)
  );

CREATE TABLE "objectiveLink" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"oid" TEXT REFERENCES objective (uid)
  ,"rid" TEXT REFERENCES requestLink (uid)
  );

CREATE TABLE "places" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"mip" TEXT REFERENCES mip (uid)
  ,"vid" TEXT REFERENCES CMORvar (uid)
  ,"pid" TEXT REFERENCES places (uid)
  );

CREATE TABLE "qcranges" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"url" TEXT
  ,"comment" TEXT
  ,"prov" TEXT
  ,"vid" TEXT REFERENCES CMORvar (uid)
  ,"valid_min" FLOAT
  ,"valid_max" FLOAT
  ,"ok_min_mean_abs" FLOAT
  ,"ok_max_mean_abs" FLOAT
  ,"valid_min_status" TEXT
  ,"valid_max_status" TEXT
  ,"ok_min_mean_abs_status" TEXT
  ,"ok_max_mean_abs_status" TEXT
  );

CREATE TABLE "requestItem" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"mip" TEXT
  ,"tab" TEXT
  ,"expt" TEXT
  ,"rlid" TEXT REFERENCES requestLink (uid)
  ,"esid" TEXT REFERENCES requestItemTarget (uid)
  ,"esidComment" TEXT
  ,"preset" INTEGER
  ,"treset" INTEGER
  ,"ny" INTEGER
  ,"nexmax" INTEGER
  ,"nenmax" INTEGER
  ,"nymax" FLOAT
  ,"tslice" TEXT REFERENCES timeSlice (uid)
  );

CREATE TABLE "requestLink" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"mip" TEXT REFERENCES mip (uid)
  ,"tab" TEXT
  ,"objective" TEXT
  ,"grid" TEXT
  ,"gridreq" TEXT
  ,"comment" TEXT
  ,"ref" TEXT
  ,"refNote" TEXT
  ,"refid" TEXT REFERENCES requestVarGroup (uid)
  ,"opt" TEXT
  ,"opar" TEXT
  );

CREATE TABLE "requestVar" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"priority" INTEGER
  ,"vid" TEXT REFERENCES CMORvar (uid)
  ,"vgid" TEXT REFERENCES requestVarGroup (uid)
  ,"mip" TEXT
  );

CREATE TABLE "requestVarGroup" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"mip" TEXT REFERENCES mip (uid)
  ,"ref" TEXT
  ,"refNote" TEXT
  );

CREATE TABLE "structure" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"spid" TEXT REFERENCES spatialShape (uid)
  ,"tmid" TEXT REFERENCES temporalShape (uid)
  ,"odims" TEXT
  ,"dids" TEXT
  ,"coords" TEXT
  ,"cids" TEXT
  ,"cell_methods" TEXT
  ,"cell_measures" TEXT
  ,"flag_values" TEXT
  ,"flag_meanings" TEXT
  ,"description" TEXT
  ,"procNote" TEXT
  ,"prov" TEXT
  ,"cmid" TEXT REFERENCES cellMethods (uid)
  );

CREATE TABLE "tableSection" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"gpid" TEXT REFERENCES miptable (uid)
  ,"mip" TEXT
  ,"ref" TEXT
  ,"refNote" TEXT
  );

CREATE TABLE "temporalShape" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"dimid" TEXT REFERENCES grids (uid)
  ,"dimensions" TEXT
  ,"description" TEXT
  );

CREATE TABLE "transfers" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"frid" TEXT REFERENCES places (uid)
  ,"toid" TEXT REFERENCES places (uid)
  ,"isOneWay" BOOLEAN
  ,"signInverted" BOOLEAN
  ,"mip" TEXT REFERENCES mip (uid)
  ,"vid" TEXT REFERENCES CMORvar (uid)
  );

CREATE TABLE "var" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"sn" TEXT REFERENCES standardname (uid)
  ,"units" TEXT
  ,"description" TEXT
  ,"procnote" TEXT
  ,"procComment" TEXT
  ,"prov" TEXT
  ,"provmip" TEXT REFERENCES mip (uid)
  ,"unid" TEXT REFERENCES units (uid)
  );

CREATE TABLE "varChoiceLinkC" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"vid" TEXT REFERENCES CMORvar (uid)
  ,"cfgid" TEXT REFERENCES modelConfig (uid)
  ,"cfg" BOOLEAN
  ,"cid" TEXT REFERENCES varChoice (uid)
  );

CREATE TABLE "varChoiceLinkR" (
  "uid" TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,"label" TEXT
  ,"title" TEXT
  ,"vid" TEXT REFERENCES CMORvar (uid)
  ,"cid" TEXT REFERENCES varChoice (uid)
  ,"rank" INTEGER
  );

COMMIT TRANSACTION;
