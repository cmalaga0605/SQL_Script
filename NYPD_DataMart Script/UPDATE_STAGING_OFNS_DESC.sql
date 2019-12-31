UPDATE [Crime].[Staging_Table]
SET [Crime].[Staging_Table].OFNS_DESCID = [Crime].[OFNS_DESCDIM].OFNS_DESCID
FROM [Crime].[Staging_Table]
INNER JOIN [Crime].[OFNS_DESCDIM] ON [Crime].[Staging_Table].OFNS_DESC = [Crime].[OFNS_DESCDIM].OFNS_DESC

