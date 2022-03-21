--liquibase formatted sql

--changeset sys:FK_ibfk_2 --runOnChange:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 SELECT COUNT(1) FROM INFORMATION_SCHEMA.STATISTICS WHERE INDEX_SCHEMA = DATABASE() AND TABLE_NAME='Table1' AND INDEX_NAME = 'FK_ibfk_2'
ALTER TABLE Table1 ADD CONSTRAINT FK_ibfk_2 FOREIGN KEY (Id) REFERENCES Table2 (Id)
--rollback ALTER TABLE Table1 DROP FOREIGN KEY FK_ibfk_2 ;
GO;