create table Crime.ARREST_DATEDIM(
	ARREST_DATEID int identity (1,1) not null,
	ARREST_DATE date(200) null
	primary key (ARREST_DATEID)
	);