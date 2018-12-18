USE LAB5
GO
DROP TABLE IF EXISTS Tc 
DROP TABLE IF EXISTS Ta 
DROP TABLE IF EXISTS Tb


CREATE TABLE Ta(
	aid INT PRIMARY KEY,
	a2 INT UNIQUE,
	a3 VARCHAR(100),
	a4 INT
)

CREATE TABLE Tb(
	bid INT PRIMARY KEY,
	b2 INT,
	b3 VARCHAR(100)
)

CREATE TABLE Tc(
	cid INT PRIMARY KEY,
	aid INT,
	bid INT,
	CONSTRAINT FK_bid
		FOREIGN KEY(bid) REFERENCES Tb(bid),
	CONSTRAINT FK_aid
		FOREIGN KEY(aid) REFERENCES Ta(aid),
)

INSERT INTO Ta
	VALUES	(1,1,'a',1),
			(2,2,'a',1),
			(3,3,'a',1),
			(4,4,'a',1),
			(5,5,'a',1),
			(6,6,'a',1),
			(7,7,'a',1),
			(8,8,'a',1),
			(9,9,'a',1),
			(10,10,'a',1)

INSERT INTO Tb
	VALUES	(1,1,'1'),
			(2,2,'1'),
			(3,3,'1'),
			(4,4,'1'),
			(5,5,'1'),
			(6,6,'1'),
			(7,7,'1'),
			(8,8,'1'),
			(9,9,'1'),
			(10,10,'1')

INSERT INTO Tc
	VALUES	(1,1,1),
			(2,2,2),
			(3,3,3),
			(4,4,4),
			(5,5,5),
			(6,6,6),
			(7,7,7),
			(8,8,8),
			(9,9,9),
			(10,10,10)

--a. Write queries on Ta such that their corresponding execution plans contain the following operators:

	--clustered index scan; 
		SELECT * FROM Ta
    
	--clustered index seek;
		SELECT * FROM Ta
		WHERE aid >= 5
    
	--nonclustered index scan;
		DROP INDEX IF EXISTS idx_1 ON Ta
		CREATE NONCLUSTERED INDEX idx_1 ON Ta(a2)
		SELECT a2 FROM Ta
		

    --nonclustered index seek.
	SELECT a2 FROM Ta WITH (INDEX=idx_1) WHERE a2 >= 5

	--key look-up
	SELECT * FROM Ta WITH (INDEX=idx_1) 

	--b. Write a query on table Tb with a WHERE clause of the form WHERE b2 = value and analyze its execution plan. 
	-- Create a nonclustered index that can speed up the query. 
	-- Recheck the query’s execution plan (operators, SELECT’s estimated subtree cost).

	-- 0.0032897
	CREATE NONCLUSTERED INDEX idx2 ON Tb(b2)
	SELECT b.b2
	FROM Tb b
	WHERE b.b2 > 3
	-- 0.003293
	DROP INDEX idx2 ON Tb
	SELECT b.b2
	FROM Tb b
	WHERE b.b2 > 3

	--c. Create a view that joins at least 2 tables. 
	-- Check whether existing indexes are helpful; if not, reassess existing indexes / examine the cardinality of the tables.
	GO
	CREATE VIEW JoinTables
	AS
	SELECT b.bid, b.b2
	FROM Tb b
	INNER JOIN Tc c ON c.bid = b.bid AND b.b2 > 4
	INNER JOIN Ta a ON a.aid = c.cid AND a.a3 = 'a'
	GO
	CREATE NONCLUSTERED INDEX idx_1 ON Ta(a3)
	CREATE NONCLUSTERED INDEX idx_2 ON Tb(b2)
	SELECT * FROM 
	JoinTables
	DROP INDEX idx_1 ON Ta
	DROP INDEX idx_2 ON Tb
	SELECT * FROM JoinTables

	DROP VIEW JoinTables