create table Crime.PERP_RACE_DIM(
	PERP_RACEID int identity(1,1)not null,
	PERP_RACE varchar(200) null
	primary key (PERP_RACEID)
	);