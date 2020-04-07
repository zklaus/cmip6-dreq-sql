BEGIN TRANSACTION;

INSERT INTO "modelConfig" VALUES('PrognosticConservativeTemperature','bigthetao','Prognostic Conservative Temperature',NULL,'True for models using conservative temperature as prognostic field.','capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('BoussinesqOcean','BoussinesqOcean','Boussinesq Ocean (with constant reference density)','OMIP','The rhozero field is only required for Boussinesq models.','capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('BoussinesqOceanConstantTh','BoussinesqOceanConstantTh','Boussinesq Ocean With Constant Cell Thickness','OMIP','The ocean grid cell mass (masscello) can be supplied as a fixed field for Boussinesq models if the grid cell thickness is constant in time. Otherwise, this variable is required at monthly frequency.','capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('CartesianOceanGrid','CartesianOcean','Cartesian Ocean Grid','OMIP','Used to indicate whether a model has a regular lat-lon ocean grid.','capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('CospEnabled','CospEnabled','The CFMIP Observation Simulation Package (COSP)','CFMIP',NULL,'capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('DynamicIceSheet','DynamicIceSheet','Evolving ice sheets.','ISMIP6',NULL,'capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('horizontalAmosphereMeshSize','horizontalAmosphereMeshSize','Horizontal Amosphere Mesh Size',NULL,'Used in volume estimates','size','xs:integer');
INSERT INTO "modelConfig" VALUES('horizontalOceanMeshSize','horizontalOceanMeshSize','Horizontal Ocean Mesh Size',NULL,'Used in volume estimates','size','xs:integer');
INSERT INTO "modelConfig" VALUES('horizontalSoilMeshSize','horizontalSoilMeshSize','Horizontal Soil Mesh Size',NULL,'Used in volume estimates','size','xs:integer');
INSERT INTO "modelConfig" VALUES('HydrostaticAtmosphere','HydrostaticAtmosphere','Hydrostatic Atmosphere (pressure determined by weight of air column alone)',NULL,NULL,'capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('DepthResolvedIcebergMelt','IcebergMeltZResolution','Depth Resolved Iceberg Meltwater Flux','OMIP','Used to distinguish whether the fresh water flux from icebergs into the model resolution has resolved dpeth dependence.','capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('InteractiveChemistry','InteractiveChemistry','Interactive chemistry schemes','C4MIP','Different experiment specifications in C4MIP for models with and without interactive chemistry','capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('OfflineIceSheetModel','OfflineIceSheetModel','Offline ice sheet model (run with prescribed atmosphere and ocean boundary conditions)','ISMIP6',NULL,'category','xs:boolean');
INSERT INTO "modelConfig" VALUES('OfflineLandUseModel','OfflineLandUseModel','Offline ice sheet model (run with prescribed atmosphere boundary conditions)','LUMIP',NULL,'category','xs:boolean');
INSERT INTO "modelConfig" VALUES('SubmesoscaleEddyParam','submesoscaleEddy','Submesoscale Eddy Parameterization',NULL,'True for models which parameterize sub-mesoscale eddies.','capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('TimeVaryingThkcello','thkcello','Time Varying Thkcello',NULL,'True for models have temporally varying ocean cell volume','capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('TiledLandUseModel','TiledLandUseModel','Sub-grid land use reporting','LUMIP','Used on LUMIP to indicate variables only needed from models which have the capability to report on land use tiles.','capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('82e1d982-626c-11e7-90be-ac72891c3257','TimeVaryingGeothermalFlux','Time Varying Geothermal Heat Flux at Sea Floor','GeoMIP','Set True if model resolves temporal variation in geothermal heat flux through the sea floor','capability','xs:boolean');
INSERT INTO "modelConfig" VALUES('usePlev27','usePlev27','Use 27 pressure levels rather than model levels were option exists.','HighResMIP','A range of variables in the HighResMIP have the option of being delivered either on model levels or 27 pressure levels.','ioOption','xs:boolean');
INSERT INTO "modelConfig" VALUES('verticalAtmosphereLevelCount','verticalAtmosphereLevelCount','Vertical Atmosphere Level Count',NULL,'Used in volume estimates','size','xs:integer');
INSERT INTO "modelConfig" VALUES('verticalOceanLevelCount','verticalOceanLevelCount','Vertical Ocean Level Count',NULL,'Used in volume estimates','size','xs:integer');
INSERT INTO "modelConfig" VALUES('verticalSoilLevelCount','verticalSoilLevelCount','Vertical Soil Level Count',NULL,'Used in volume estimates','size','xs:integer');
INSERT INTO "modelConfig" VALUES('TimeVaryingVolcello','volcello','Time Varying Volcello',NULL,'True for models have temporally varying ocean cell thickness','capability','xs:boolean');

COMMIT TRANSACTION;
