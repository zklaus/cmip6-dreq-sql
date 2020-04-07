CREATE TABLE uids (
  uid TEXT PRIMARY KEY NOT NULL,
  table_name TEXT);
CREATE TABLE relations (
  table_name TEXT,
  field_name TEXT,
  foreign_table TEXT,
  UNIQUE (table_name, field_name));

CREATE TABLE units (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"group" TEXT
  ,"text" TEXT
  );


CREATE TABLE places (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"mip" TEXT
  REFERENCES uids (uid)  -- Real table: mip
  ,"vid" TEXT
  REFERENCES uids (uid)  -- Real table: CMORvar
  ,"pid" TEXT
  REFERENCES uids (uid)  -- Real table: places
  );


CREATE TABLE qcranges (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"url" TEXT
  ,"comment" TEXT
  ,"prov" TEXT
  ,"vid" TEXT
  REFERENCES uids (uid)  -- Real table: CMORvar
  ,"valid_min" FLOAT
  ,"valid_max" FLOAT
  ,"ok_min_mean_abs" FLOAT
  ,"ok_max_mean_abs" FLOAT
  ,"valid_min_status" TEXT
  ,"valid_max_status" TEXT
  ,"ok_min_mean_abs_status" TEXT
  ,"ok_max_mean_abs_status" TEXT
  );


CREATE TABLE transfers (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"frid" TEXT
  REFERENCES uids (uid)  -- Real table: places
  ,"toid" TEXT
  REFERENCES uids (uid)  -- Real table: places
  ,"isOneWay" BOOLEAN
  ,"signInverted" BOOLEAN
  ,"mip" TEXT
  REFERENCES uids (uid)  -- Real table: mip
  ,"vid" TEXT
  REFERENCES uids (uid)  -- Real table: CMORvar
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


CREATE TABLE experiment (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"description" TEXT
  ,"egid" TEXT
  REFERENCES uids (uid)  -- Real table: exptgroup
  ,"mip" TEXT
  REFERENCES uids (uid)  -- Real table: mip
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


CREATE TABLE objective (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"description" TEXT
  ,"mip" TEXT
  REFERENCES uids (uid)  -- Real table: mip
  );


CREATE TABLE requestVarGroup (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"mip" TEXT
  REFERENCES uids (uid)  -- Real table: mip
  ,"ref" TEXT
  ,"refNote" TEXT
  );


CREATE TABLE requestLink (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"mip" TEXT
  REFERENCES uids (uid)  -- Real table: mip
  ,"tab" TEXT
  ,"objective" TEXT
  ,"grid" TEXT
  ,"gridreq" TEXT
  ,"comment" TEXT
  ,"ref" TEXT
  ,"refNote" TEXT
  ,"refid" TEXT
  REFERENCES uids (uid)  -- Real table: requestVarGroup
  ,"opt" TEXT
  ,"opar" TEXT
  );


CREATE TABLE objectiveLink (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"oid" TEXT
  REFERENCES uids (uid)  -- Real table: objective
  ,"rid" TEXT
  REFERENCES uids (uid)  -- Real table: requestLink
  );


CREATE TABLE standardname (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"description" TEXT
  ,"units" TEXT
  );


CREATE TABLE var (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"sn" TEXT
  REFERENCES uids (uid)  -- Real table: standardname
  ,"units" TEXT
  ,"description" TEXT
  ,"procnote" TEXT
  ,"procComment" TEXT
  ,"prov" TEXT
  ,"provmip" TEXT
  REFERENCES uids (uid)  -- Real table: mip
  ,"unid" TEXT
  REFERENCES uids (uid)  -- Real table: units
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


CREATE TABLE varChoiceLinkC (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"vid" TEXT
  REFERENCES uids (uid)  -- Real table: CMORvar
  ,"cfgid" TEXT
  REFERENCES uids (uid)  -- Real table: modelConfig
  ,"cfg" BOOLEAN
  ,"cid" TEXT
  REFERENCES uids (uid)  -- Real table: varChoice
  );


CREATE TABLE varChoiceLinkR (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"vid" TEXT
  REFERENCES uids (uid)  -- Real table: CMORvar
  ,"cid" TEXT
  REFERENCES uids (uid)  -- Real table: varChoice
  ,"rank" INTEGER
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


CREATE TABLE temporalShape (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"dimid" TEXT
  REFERENCES uids (uid)  -- Real table: grids
  ,"dimensions" TEXT
  ,"description" TEXT
  );


CREATE TABLE cellMethods (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"cell_methods" TEXT
  ,"description" TEXT
  );


CREATE TABLE structure (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"spid" TEXT
  REFERENCES uids (uid)  -- Real table: spatialShape
  ,"tmid" TEXT
  REFERENCES uids (uid)  -- Real table: temporalShape
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
  ,"cmid" TEXT
  REFERENCES uids (uid)  -- Real table: cellMethods
  );


CREATE TABLE CMORvar (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"stid" TEXT
  REFERENCES uids (uid)  -- Real table: structure
  ,"vid" TEXT
  REFERENCES uids (uid)  -- Real table: var
  ,"deflate" TEXT
  ,"deflate_level" TEXT
  ,"shuffle" TEXT
  ,"defaultPriority" INTEGER
  ,"type" TEXT
  ,"modeling_realm" TEXT
  ,"positive" TEXT
  ,"mipTableSection" TEXT
  ,"mtid" TEXT
  REFERENCES uids (uid)  -- Real table: miptable
  ,"mipTable" TEXT
  ,"prov" TEXT
  ,"processing" TEXT
  ,"provNote" TEXT
  ,"frequency" TEXT
  ,"rowIndex" INTEGER
  ,"description" TEXT
  ,"subGroup" TEXT
  );


CREATE TABLE tableSection (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"gpid" TEXT
  REFERENCES uids (uid)  -- Real table: miptable
  ,"mip" TEXT
  ,"ref" TEXT
  ,"refNote" TEXT
  );


CREATE TABLE requestVar (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"priority" INTEGER
  ,"vid" TEXT
  REFERENCES uids (uid)  -- Real table: CMORvar
  ,"vgid" TEXT
  REFERENCES uids (uid)  -- Real table: requestVarGroup
  ,"mip" TEXT
  );


CREATE TABLE grids (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"tables" TEXT
  ,"altLabel" TEXT
  ,"description" TEXT
  ,"standardName" TEXT
  REFERENCES uids (uid)  -- Real table: standardname
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


CREATE TABLE requestItem (
  uid TEXT PRIMARY KEY NOT NULL REFERENCES uids (uid)
  ,label TEXT
  ,title TEXT
  ,"mip" TEXT
  ,"tab" TEXT
  ,"expt" TEXT
  ,"rlid" TEXT
  REFERENCES uids (uid)  -- Real table: requestLink
  ,"esid" TEXT
  ,"esidComment" TEXT
  ,"preset" INTEGER
  ,"treset" INTEGER
  ,"ny" INTEGER
  ,"nexmax" INTEGER
  ,"nenmax" INTEGER
  ,"nymax" FLOAT
  ,"tslice" TEXT
  REFERENCES uids (uid)  -- Real table: timeSlice
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


