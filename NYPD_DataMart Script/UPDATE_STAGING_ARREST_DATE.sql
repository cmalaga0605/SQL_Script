UPDATE [Crime].[Staging_Table]
SET [Crime].[Staging_Table].ARREST_DATEID = [Crime].[ARREST_DATEDIM].ARREST_DATEID
FROM [Crime].[Staging_Table]
INNER JOIN [Crime].[ARREST_DATEDIM] ON [Crime].[Staging_Table].ARREST_DATE = [Crime].[ARREST_DATEDIM].ARREST_DATE