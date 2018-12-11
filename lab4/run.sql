DROP TABLE Tests
USE DnDPartyManager
INSERT INTO Tables(Name) VALUES
	('Player'),
	('Party'),
	('PlayerStuff'),
	('Party_X_Player')
GO
SELECT * FROM TestViews
DELETE FROM TestRuns 
--insert views
INSERT INTO Views(Name)
VALUES
	('singleTable'),
	('twoTables'),
	('view3')

INSERT INTO Tests(Name)
VALUES
	('insertPlayer_1000'),
	('insertParty_1000'),
	('insertPlayerStuff_1000'),
	('insertParty_X_Player_1000'),
	('view1'),
	('view2'),
	('view3'),
	('deleteParty_X_Player_1000'),
	('deletePlayerStuff_1000'),
	('deleteParty_1000'),
	('deletePlayer_1000')
	
INSERT INTO TestTables(TestID,TableID,Position,NoOfRows)
VALUES
	(1,1,1,1000),
	(1,2,2,1000),
	(1,3,3,1000),
	(1,4,4,1000),
	(3,4,5,1000),
	(3,3,6,1000),
	(3,2,7,1000),
	(3,1,8,1000)

INSERT INTO TestViews(TestID,ViewID)
VALUES
	(2,1),
	(2,2),
	(2,3)


GO

CREATE OR ALTER PROCEDURE runTests
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @dateStartTest DATETIME
	DECLARE @dateEndTest DATETIME
	SET @dateStartTest = GETDATE()
	DELETE FROM PlayerStuff
	DELETE FROM Party_X_Player
	DELETE FROM Party
	DELETE FROM Player
	DELETE FROM TestRunTables
	DELETE FROM TestRunViews
	DELETE FROM TestRuns


	DECLARE @testID INT
	DECLARE @tableID INT
	DECLARE @position INT
	DECLARE @noRows INT
	DECLARE @tableName VARCHAR(50)
	DECLARE @dateStart DATETIME
	DECLARE @dateEnd DATETIME
	DECLARE @testCount INT
	DECLARE @viewPos INT
	DECLARE @viewID INT
	DECLARE @viewName VARCHAR(50)

	SET @testCount = 1
	SET @position = 1
	SET @testID = 1
	SET @viewPos = 1

	--INSERT INTO TestRuns
	--VALUES('insert', null, null)
	WHILE @position < 5
	BEGIN
		PRINT ''
		SELECT @tableID = tt.TableID, @noRows = tt.NoOfRows FROM TestTables tt  WHERE tt.Position = @position AND tt.TestID = @testID
		SELECT @tableName = t.Name FROM Tables t WHERE @tableID = t.TableID 

		PRINT 'table name: ' + @tableName

		SET @dateStart = GETDATE()
		PRINT 'start ' + CONVERT(VARCHAR(100),@dateStart)

		DECLARE @command VARCHAR(150)
		
		SET @command = 'insert' + @tableName + ' ' + CONVERT(VARCHAR(4), @noRows)
		PRINT (@command)
		--PRINT (
		EXEC (@command)
		SET @dateEnd = GETDATE()
		PRINT 'end' + CONVERT(VARCHAR(100), @dateEnd)

		DECLARE @description VARCHAR(50)
		SET @description = 'insert into' + @tableName
		INSERT INTO TestRuns
		VALUES(@description,@datestart,@dateend)
		SELECT TOP 1 @testCount = tr.TestRunID FROM TestRuns tr ORDER BY tr.TestRunID DESC

		INSERT INTO TestRunTables
		VALUES(@testCount, @tableID, @dateStart, @dateEnd)

		SET @position = @position + 1
		
	END

	SET @testID = 2
	WHILE @viewPos < 4
	BEGIN
		PRINT ''
		SELECT @viewID = tv.ViewId FROM TestViews tv WHERE tv.TestID = @testID AND tv.ViewID = @viewPos
		SELECT @viewName = v.Name FROM Views v where v.ViewID = @viewID
		SET @dateStart = GETDATE()
		DECLARE @commandView VARCHAR(100)
		SET @commandView = 'select * from ' + @viewName
		PRINT (@commandView)
		EXEC (@commandView)
		SET @dateEnd = GETDATE()

		SET @viewPos = @viewPos + 1
		SET @description = 'view' + @viewName

		SELECT TOP 1 @testCount = tr.TestRunID FROM TestRuns tr ORDER BY tr.TestRunID DESC

		INSERT INTO TestRunViews
		VALUES(@testCount,@viewID,@dateStart,@dateEnd)
	END

	SET @testId = 3
	WHILE @position >= 5 and @position < 9
	BEGIN
		PRINT ''
		SELECT @tableID = tt.TableId, @noRows = tt.NoOfRows FROM TestTables tt WHERE @testID = tt.TestID AND tt.Position = @position
		SELECT @tableName = t.Name from Tables T WHERE T.TableID = @tableID
		SET @dateStart = GETDATE()
		DECLARE @commandDel VARCHAR(100)
		SET @commandDel = 'delete' + @tableName + ' ' + CONVERT(VARCHAR(5),@noRows)
		PRINT (@commandDel)
		EXEC (@commandDel)
		SET @dateEnd = GETDATE()

		DECLARE @descriptionDel VARCHAR(50)
		SET @descriptionDel = 'delete from' + @tableName
		
		INSERT INTO TestRuns
		VALUES(@descriptionDel,@dateStart,@dateEnd)
		SELECT TOP 1 @testCount = tr.TestRunId from TestRuns tr ORDER BY tr.TestRunID DESC
		INSERT INTO TestRunTables
		VALUES(@testCount,@tableID,@dateStart,@dateEnd)
		SET @position = @position + 1
	END

	SET @dateEndTest = GETDATE()

	UPDATE TestRuns
	SET Description = 'test', StartAt = @dateStartTest, EndAt=@dateEndTest

END

GO
USE DnDPartyManager
GO
	EXEC runTests
GO


CREATE OR ALTER PROCEDURE updateRows
@newNr INT
AS
BEGIN
	UPDATE TestTables
	SET NoOfRows = @newNr
END

GO

EXEC updateRows 1

SELECT * FROM Party
SELECT * FROM Party_X_Player
SELECT * FROM PlayerStuff
SELECT * FROM Player

SELECT * FROM Tests
SELECT * FROM Tables
SELECT * FROM TestTables
SELECT * FROM TestViews
SELECT * FROM Views
SELECT * FROM TestRuns
SELECT * FROM TestRunTables
SELECT * FROM TestRunViews

DELETE FROM TestRunTables
DELETE FROM TestRuns
DELETE FROM TestRunViews
