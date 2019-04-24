/*USE myBasketball;
SELECT COUNT(*) AS NumberOfPlayers,
	MAX(SeasonAvgPPG) AS HighestPointTotal,
	MIN(SeasonAvgPPG) AS LowestPointTotal
FROM SeasonStats;*/

/*USE myBasketball;
SELECT COUNT(*) AS NumberOfPlayers,
	AVG(SeasonAvgPPG) AS AverageOfAverages
FROM SeasonStats;*/

/*USE myBasketball;
SELECT COUNT(*) AS NumberOfPlayers,
	SUM(Weightlbs) AS WeightInPounds
FROM Players
WHERE Age = 30;*/

/*USE myBasketball;
SELECT COUNT(*) AS NumberOfPlayers,
	MAX(SeasonAvgRPG) AS HighestReboundAverage,
	MIN(SeasonAvgRPG) AS LowestReboundAverage,
	AVG(SeasonAvgRPG) AS AverageOfAverages
FROM SeasonStats;*/