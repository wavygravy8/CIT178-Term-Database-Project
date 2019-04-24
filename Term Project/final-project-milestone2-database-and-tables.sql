/*CREATE DATABASE myBasketball

GO

USE myBasketball;
CREATE TABLE Seasons(
	PlayerID int NOT NULL,
	PositionID char(2) NOT NULL,
	TeamID int NOT NULL,
	Season smallint NOT NULL,
	PRIMARY KEY(PlayerID)
);
GO
CREATE TABLE Team(
	TeamID int NOT NULL,
	TeamName varchar(15) NOT NULL,
	PRIMARY KEY(TeamID)
);
GO
CREATE TABLE Players(
	PlayerID int NOT NULL,
	PlayerFName varchar(20) NOT NULL,
	PlayerLName varchar(30) NOT NULL,
	Age tinyint NOT NULL,
	HeightInches tinyint NULL,
	Weightlbs tinyint NULL,
	PRIMARY KEY(PlayerID)
);
GO
CREATE TABLE Position(
	PositionID char(2) NOT NULL,
	PositionName varchar(15) NOT NULL,
	PRIMARY KEY(PositionID)
);
GO
CREATE TABLE CareerStats(
	PlayerID int NOT NULL,
	CareerAvgPPG decimal(3,1) NOT NULL,
	CareerAvgRPG decimal(3,1) NOT NULL,
	CareerAvgAPG decimal(3,1) NOT NULL,
	CareerFGP decimal(4,1) NOT NULL,
	Career3PP decimal(4,1) NOT NULL,
	CareerFTP decimal(4,1) NOT NULL,
	PRIMARY KEY(PlayerID)
);
GO
CREATE TABLE SeasonStats(
	PlayerID int NOT NULL,
	Season smallint NOT NULL,
	SeasonAvgPPG decimal(3,1) NOT NULL,
	SeasonAvgRPG decimal(3,1) NOT NULL,
	SeasonAvgAPG decimal(3,1) NOT NULL,
	SeasonFGP decimal(3,1) NOT NULL,
	Season3PP decimal(3,1) NOT NULL,
	SeasonFTP decimal(3,1) NOT NULL,
	PRIMARY KEY(PlayerID)
);
GO
CREATE TABLE CollegeStats(
	PlayerID int NOT NULL,
	College varchar(50) NOT NULL,
	CollegeAvgPPG decimal(3,1) NOT NULL,
	CollegeAvgRPG decimal(3,1) NOT NULL,
	CollegeAvgAPG decimal(3,1) NOT NULL,
	CollegeFGP decimal(3,1) NOT NULL,
	College3PP decimal(3,1) NOT NULL,
	CollegeFTP decimal(3,1) NOT NULL,
	PRIMARY KEY(PlayerID)
);
GO
CREATE TABLE Awards(
	PlayerID int NOT NULL,
	Season smallint NOT NULL,
	MVP bit NULL,
	Championships bit NULL,
	PRIMARY KEY(PlayerID)
);*/

GO

/*ALTER TABLE Seasons WITH CHECK
ADD CONSTRAINT FK_PlayerID FOREIGN KEY(PlayerID) REFERENCES Players(PlayerID)
ON UPDATE CASCADE
GO
ALTER TABLE Seasons WITH CHECK
ADD CONSTRAINT FK_PositionID FOREIGN KEY(PositionID) REFERENCES Position(PositionID)
ON UPDATE CASCADE
GO
ALTER TABLE Seasons WITH CHECK
ADD CONSTRAINT FK_TeamID FOREIGN KEY(TeamID) REFERENCES Team(TeamID)
ON UPDATE CASCADE
GO
ALTER TABLE CareerStats WITH CHECK
ADD CONSTRAINT FK_PlayerID1 FOREIGN KEY(PlayerID) REFERENCES Players(PlayerID)
ON UPDATE CASCADE
GO
ALTER TABLE SeasonStats WITH CHECK
ADD CONSTRAINT FK_PlayerID2 FOREIGN KEY(PlayerID) REFERENCES Players(PlayerID)
ON UPDATE CASCADE
GO
ALTER TABLE CollegeStats WITH CHECK
ADD CONSTRAINT FK_PlayerID3 FOREIGN KEY(PlayerID) REFERENCES Players(PlayerID)
ON UPDATE CASCADE
GO
ALTER TABLE Awards WITH CHECK
ADD CONSTRAINT FK_PlayerID4 FOREIGN KEY(PlayerID) REFERENCES Players(PlayerID)
ON UPDATE CASCADE*/

GO

CREATE INDEX idx_PlayerID ON Seasons(PlayerID)
GO
CREATE INDEX idx_PositionID ON Seasons(PositionID)
GO
CREATE INDEX idx_TeamID ON Seasons(TeamID)
GO
CREATE INDEX idx_PlayerID1 ON CareerStats(PlayerID)
GO
CREATE INDEX idx_PlayerID2 ON SeasonStats(PlayerID)
GO
CREATE INDEX idx_PlayerID3 ON CollegeStats(PlayerID)
GO
CREATE INDEX idx_PlayerID4 ON Awards(PlayerID)