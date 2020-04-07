BEGIN TRANSACTION;

INSERT INTO "varChoice" VALUES('0c31d56a-0c2d-11e8-9d87-1c4d70487308','bigthetao','Conservative Temperature','ConfigurationOptionSet','Variables which are only needed for models which include conservative termperature as a prognostic variable.','bigthetao bigthetaoga',NULL);
INSERT INTO "varChoice" VALUES('BoussinesqOceanOptionSet','BoussinesqOceanOptionSet','Option set for BoussinesqOcean','ConfigurationOptionSet','Variable(s) only required for models with Boussinesq oceans.','rhozero',NULL);
INSERT INTO "varChoice" VALUES('iceberg-ficeberg','ficeberg','Option set for DepthResolvedIcebergMelt','ConfigurationOptionSet','The freshwater flux from melting icebergs should be provided as a depth dependent field if possible, otherwise as a depth integrated flux.','ficeberg',NULL);
INSERT INTO "varChoice" VALUES('boussinesq-masscello','masscello','Option set for BoussinesqOceanConstantTh','ConfigurationOptionSet','The ocean grid cell mass (masscello) can be supplied as a fixed field for Boussinesq models if the grid cell thickness is constant in time. Otherwise, this variable is required at monthly frequency.','masscello',NULL);
INSERT INTO "varChoice" VALUES('meridionalOverturning','msftmzsmpa','Option set for CartesianOceanGrid','ConfigurationOptionSet','For models which do not have a Cartesian ocean grid (with grid lines of constant latitude) the meridional overturning fluxes should be provided both relative to the grid and as an approximated zonal mean using a zig-zag path','msftmzsmpa',NULL);
INSERT INTO "varChoice" VALUES('choices_HighResMIP.overlap.hus','overlap-hus','hus [6hrPlev_extr]','RedundancySet','The 3hrPlev and 6hrPlev_extr fields overlap','3hrPlev:hus; 6hrPlev_extr:hus;','3;2;');
INSERT INTO "varChoice" VALUES('choices_HighResMIP.overlap.ta','overlap-ta','ta [6hrPlev]','RedundancySet','The 3hrPlev and 6hrPlev_extr fields overlap','3hrPlev:ta; 6hrPlev_extr:ta; 6hrPlev:ta;','3;2;');
INSERT INTO "varChoice" VALUES('0c31d56b-0c2d-11e8-9d87-1c4d70487308','submesoscaleEddy','Submesoscale Eddy Parameterization','ConfigurationOptionSet',NULL,'msftmzsmpa msftyzsmpa',NULL);
INSERT INTO "varChoice" VALUES('0d518fd0-0c2d-11e8-9d87-1c4d70487308','thkcello','Time Varying Thkcello','ConfigurationOptionSet',NULL,'thkcello',NULL);
INSERT INTO "varChoice" VALUES('832f877c-626c-11e7-90be-ac72891c3257','TimeVaryingGeothermalFlux','Time Varying Geothermal Heat Flux at Sea Floor','ConfigurationOptionSet','Alternate variables depending on whether geothermal heat flux through sea floor is fixed or not.','hfgeou',NULL);
INSERT INTO "varChoice" VALUES('0c31d56c-0c2d-11e8-9d87-1c4d70487308','volcello','Time Varying Volcello','ConfigurationOptionSet',NULL,'volcello',NULL);

COMMIT TRANSACTION;
