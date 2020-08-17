/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [PlayerID]
      ,[FirstName]
      ,[LastName]
      ,[Position]
      ,[Active]
      ,[PlayerNum]
  FROM [istaproject].[dbo].[Players]