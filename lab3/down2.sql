CREATE PROCEDURE down2
AS
BEGIN
	ALTER TABLE Player
	DROP COLUMN playerAge
END