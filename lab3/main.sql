CREATE PROCEDURE [dbo].[main]
@vers INT
AS
BEGIN
	DECLARE @currVers INT
		DECLARE @proc VARCHAR(50)

		SELECT @currVers = currentVers
		FROM CurrentVersion

		IF @currVers = @vers
		BEGIN
			PRINT 'Already this version'
		END

		WHILE @currVers < @vers
		BEGIN
			SET @currVers = @currVers + 1
			SET @proc = 'up' + cast(@currVers AS VARCHAR(50))
			PRINT @proc
			EXEC @proc
		END

		WHILE @currVers > @vers
		BEGIN
			SET @currVers = @currVers - 1
			SET @proc = 'down' + cast(@currVers AS VARCHAR(50))
			PRINT @proc
			EXEC @proc
		END
	UPDATE CurrentVersion
	SET currentVers = @vers
END

EXEC main @vers = 1
DELETE FROM CurrentVersion
INSERT INTO CurrentVersion VALUES (0)