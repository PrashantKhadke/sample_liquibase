--liquibase formatted sql
--changeset sys:CreateTable --runOnChange:false --endDelimiter:GO;

 
CREATE TABLE IF NOT EXISTS (
) 
GO;
--rollback SET FOREIGN_KEY_CHECKS = 0; DROP TABLE IF EXISTS LegalEntityLookup; SET FOREIGN_KEY_CHECKS = 1;
--comment: To alter table schema changeset should be "--changeset sys:AlterTable  --runOnChange:true --endDelimiter:GO;"
