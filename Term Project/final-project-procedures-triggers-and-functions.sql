/*Final Project Procedures

--Retrieves and displays data
USE myBasketball;
GO
CREATE PROC spPlayers
AS
SELECT * FROM Players
ORDER BY PlayerLName;
GO

EXEC spPlayers;

--Takes an input parameter
USE myBasketball;
GO
CREATE PROC spGetPlayers
	@PlayerID int
AS
BEGIN
	SELECT * FROM Players
	WHERE PlayerID = @PlayerID;
END
GO
EXEC spGetPlayers 1

--Takes one input parameter and returns three output parameters

USE myBasketball;
GO
CREATE PROC spPlayersInfo
	@PlayerID int,
	@PlayerFName varchar(20) OUTPUT,
	@PlayerLName varchar(30) OUTPUT,
	@Age tinyint OUTPUT
AS
SELECT @PlayerFName = PlayerFName, @PlayerLName = PlayerLName, @Age = Age
FROM Players
WHERE PlayerID = @PlayerID;
GO

--Run the procedure

DECLARE @PlayerFName varchar(20);
DECLARE @PlayerLName varchar(30);
DECLARE @Age tinyint;
EXEC spPlayersInfo 3, @PlayerFName OUTPUT, @PlayerLName OUTPUT, @Age OUTPUT;
SELECT @PlayerFName AS 'First Name', @PlayerLName AS 'Last Name', @Age AS 'Player Age';

--Stored procedure that has a return value
USE myBasketball;
GO
CREATE PROC spPlayerCount
AS
DECLARE @PlayerCount int;
SELECT @PlayerCount = COUNT(*)
FROM Players
RETURN @PlayerCount;
GO

DECLARE @PlayerCount int;
EXEC @PlayerCount = spPlayerCount;
PRINT 'There are ' + CONVERT(varchar, @PlayerCount) + ' customers in your database';
GO

Final Project User Defined Functions

--creates the function
USE myBasketball;
GO
CREATE FUNCTION fnGetPlayerName
	(@PlayerLName varchar(30) = '%')
	RETURNS int
BEGIN
	RETURN (SELECT PlayerID FROM Players WHERE PlayerLName LIKE @PlayerLName);
END;

--uses the function
GO
SELECT PlayerID, PlayerFName, PlayerLName
FROM Players
WHERE PlayerID = dbo.fnGetPlayerName('Harden%');

USE myBasketball;
GO
CREATE FUNCTION fnPlayers
	(@PlayerLName varchar(30) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Players WHERE PlayerLName LIKE @PlayerLName);
GO
SELECT * FROM dbo.fnPlayers(' %H% ');

Final Project Triggers

--create archive table by copying players table without any rows
USE myBasketball;
GO
SELECT * INTO PlayerArchive
FROM Players
WHERE 1=0;

--update playerarchive table and add activity column for status
ALTER TABLE PlayerArchive
ADD Status varchar(20);
GO

--create insert trigger
CREATE TRIGGER PlayerArchive_INSERT ON Players
	AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @PlayerID int
		DECLARE @PlayerFName varchar(20)
		DECLARE @PlayerLName varchar(30)
		DECLARE @Age tinyint

	SELECT @PlayerID = INSERTED.PlayerID, @PlayerFName = INSERTED.PlayerFName, @PlayerLName = INSERTED.PlayerLName, @Age = INSERTED.Age
	FROM INSERTED
	INSERT INTO PlayerArchive_INSERT VALUES(@PlayerID, @PlayerFName, @PlayerLName, @Age, 'Inserted')
END
GO

--create update trigger
CREATE TRIGGER PlayerArchive_Update ON Players
	AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @PlayerID int
		DECLARE @PlayerFName varchar(20)
		DECLARE @PlayerLName varchar(30)
		DECLARE @Age tinyint
	SELECT @PlayerID = INSERTED.PlayerID, @PlayerFName = INSERTED.PlayerFName, @PlayerLName = INSERTED.PlayerLName, @Age = INSERTED.Age
	FROM INSERTED;
	INSERT INTO PlayerArchive_Update VALUES(@PlayerID, @PlayerFName, @PlayerLName, @Age, 'Updated')
END
GO*/

