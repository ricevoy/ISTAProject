-- Name: Rawlston Morton
-- File: ISTAProject-Database
-- Date: August 11, 2020

create database istaproject;

Use istaproject;

--Member Table
drop table if exists WebUser 

create table WebUser
(
	id varchar (60),
    FirstName varchar(20),
    lastName varchar (60),
	roadName varchar (60),
	city varchar(60),
    state varchar (60),
    zipcode varchar (60),
	phone varchar (60),
	email varchar(100)
);

BULK INSERT WebUser 
FROM '"D:\quantico06\ISTAPROJECT\istaproject.db"'
WITH
(
DATAFILETYPE = 'char',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);


--Forums
drop table if exists Forums

create table Forums
(
	id varchar (10),
	ForumName varchar(30),
	ForumDescription varchar(60),
	ThreadID int(60),
	ThreadName varchar (20),

	
);

BULK INSERT	 Forums
FROM '"D:\quantico06\ISTAPROJECT\istaproject.db"'
WITH
(
DATAFILETYPE = 'char',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);


--Players
drop table if exists Players

create table Players
(
	id varchar (10),
	PlayerNum varchar(60),
	Firstname varchar (60),
	Lastname varchar (60),
	Position varchar (60),

);

BULK INSERT	 Players
FROM '"D:\quantico06\ISTAPROJECT\istaproject.db"'
WITH
(
DATAFILETYPE = 'char',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

--qualifications
drop table if exists PlayerStats;

create table PlayerStats
(
	id varchar (10),
	HitterStats varchar(30),
	PitcherStats varchar (60),
	TeamAverages varchar (60),
	PlayerID varchar (60),
	
);

BULK INSERT	 PLayerStats
FROM '"D:\quantico06\ISTAPROJECT\istaproject.db"'
WITH
(
DATAFILETYPE = 'char',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

select * from WebUser;
select * from Forums;
select * from Players;
select * from PlayerStats;

