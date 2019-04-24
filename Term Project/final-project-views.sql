/*Final Project Views
USE myBasketball;
GO
CREATE VIEW VI_updatable 
AS 
SELECT CareerAvgPPG, CollegeAvgPPG, College 
FROM CareerStats 
JOIN CollegeStats ON CareerStats.PlayerID = CollegeStats.PlayerID;
GO

UPDATE VI_updatable
SET CareerAvgPPG = 24.1
WHERE College = 'Kansas';

USE myBasketball;
GO
CREATE VIEW VI_basketballview2 
AS 
SELECT SeasonAvgPPG, CollegeAvgPPG, College 
FROM SeasonStats 
JOIN CollegeStats ON SeasonStats.PlayerID = CollegeStats.PlayerID;
GO

USE myBasketball;
GO
CREATE VIEW VI_basketballview3
AS 
SELECT PlayerFName, PlayerLName, CareerFGP
FROM Players 
JOIN CareerStats ON Players.PlayerID = CareerStats.PlayerID;
GO

USE myBasketball;
GO
CREATE VIEW VI_basketballview4
AS 
SELECT PlayerFName, PlayerLName, College3PP
FROM Players 
JOIN CollegeStats ON Players.PlayerID = CollegeStats.PlayerID;
GO*/