#!/bin/bash

rm dreq_redesign.db

for FILE in create.sql \
    fill_uids.sql \
    fill_units.sql \
    fill_remarks.sql \
    fill_exptgroup.sql \
    fill_mip.sql \
    fill_miptable.sql \
    fill_modelConfig.sql \
    fill_varChoice.sql \
    fill_spatialShape.sql \
    fill_cellMethods.sql \
    fill_timeSlice.sql \
    fill_tags.sql \
    fill_varRelations.sql \
    fill_varRelLnk.sql \
    fill_standardname.sql \
    fill_requestItemTarget.sql \
    fill_CMORvar.sql \
    fill_experiment.sql \
    fill_grids.sql \
    fill_objective.sql \
    fill_objectiveLink.sql \
    fill_qcranges.sql \
    fill_requestItem.sql \
    fill_requestLink.sql \
    fill_requestVar.sql \
    fill_requestVarGroup.sql \
    fill_structure.sql \
    fill_tableSection.sql \
    fill_temporalShape.sql \
    fill_var.sql \
    fill_varChoiceLinkC.sql \
    fill_varChoiceLinkR.sql ;
do
    echo $FILE
    sqlite3 dreq_redesign.db <$FILE
done
