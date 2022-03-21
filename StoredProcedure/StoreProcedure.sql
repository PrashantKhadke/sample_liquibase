--liquibase formatted sql formatted sql
--changeset sys:CreateOrReplaceProcedure --runOnChange:true --endDelimiter:GO;
CREATE StoredProcedure

--rollback  DROP PROCEDURE IF EXISTS activityInsert;