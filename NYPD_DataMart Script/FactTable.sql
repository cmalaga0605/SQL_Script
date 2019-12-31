create table Crime.FactTable(
	CrimeID int identity(1,1)not null,
	ARREST_DATEID int foreign key references [Crime].[ARREST_DATEDIM](ARREST_DATEID) null,
	OFNS_DESCID int foreign key references [Crime].[OFNS_DESCDIM](OFNS_DESCID) null,
	PERP_RACEID int foreign key references [Crime].[PERP_RACE_DIM](PERP_RACEID) null,
	PERP_SEXID int foreign key references [Crime].[PERP_SEXDIM](PERP_SEXID) null,
	ARREST_KEY int null,
	primary key(CrimeID)
	);