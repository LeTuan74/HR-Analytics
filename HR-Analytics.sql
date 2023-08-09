-- Cleaning Data In SQL Queries

    SELECT *
    FROM [MyNewDatabase].[dbo].[HR-Employee-Attrition]

-- Checking for duplicate entries in the Employee number field 

    SELECT COUNT(DISTINCT(EmployeeNumber))
    FROM [MyNewDatabase].[dbo].[HR-Employee-Attrition]

-- Checking for NULL or fields have blanks

    SELECT *
    FROM [MyNewDatabase].[dbo].[HR-Employee-Attrition]
    WHERE [Attrition] = '' or [Attrition] IS NULL

-- Pull out the necessary datas without affecting the table for visualization

    SELECT 
       [Age]
       ,CASE
                WHEN [Age] < 25 THEN 'Under 25'
                WHEN [Age] BETWEEN 25 AND 34 THEN '25-34'
                WHEN [Age] BETWEEN 35 AND 44 THEN '35-33'
                WHEN [Age] BETWEEN 45 AND 54 THEN '45-54'
                WHEN [Age] >= 55 THEN 'Over 55'
        END AS [AgeGroup] -- Divide age into groups
      ,[Attrition]
      ,CASE 
                WHEN [Attrition] = 'Yes' THEN 1
                WHEN [Attrition] = 'No' THEN 0
        END AS [AttritionCount] --Convert Attrition column into number 1 and 0 to improve visualization.
      ,[BusinessTravel]
      ,[DailyRate]
      ,[Department]
      ,[DistanceFromHome]
      ,[Education]
      ,[EducationField]
      ,[EmployeeCount]
      ,[EmployeeNumber]
      ,[EnvironmentSatisfaction]
      ,[Gender]
      ,[HourlyRate]
      ,[JobInvolvement]
      ,[JobLevel]
      ,[JobRole]
      ,[JobSatisfaction]
      ,[MaritalStatus]
      ,[MonthlyIncome]
      ,[MonthlyRate]
      ,[NumCompaniesWorked]
      ,[Over18]
      ,[OverTime]
      ,[PercentSalaryHike]
      ,[PerformanceRating]
      ,[RelationshipSatisfaction]
      ,[StandardHours]
      ,[StockOptionLevel]
      ,[TotalWorkingYears]
      ,[TrainingTimesLastYear]
      ,[WorkLifeBalance]
      ,[YearsAtCompany]
      ,[YearsInCurrentRole]
      ,[YearsSinceLastPromotion]
      ,[YearsWithCurrManager]
  FROM [MyNewDatabase].[dbo].[HR-Employee-Attrition]