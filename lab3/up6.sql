CREATE PROCEDURE up6
AS
BEGIN
	CREATE TABLE PlayerStuff
		(stuffId INT IDENTITY(1,1) PRIMARY KEY,
		stuffName VARCHAR(200))
END
GO