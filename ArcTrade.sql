CREATE TABLE Users
(
	Id int identity primary key,
	Username nvarchar(50),
	Password nvarchar(50),
	Email nvarchar(50),
	Timestamp DATETIME,
	[Authorization] int,
	UserType nvarchar(50)
)

CREATE TABLE Applications
(
	Id int identity primary key,
	UserId int UNIQUE FOREIGN KEY REFERENCES Users(Id),
	ResumeId int FOREIGN KEY REFERENCES Files(Id),
	Salary int,
	FirstName nvarchar(50),
	LastName nvarchar(50),
	Gender nvarchar(10),
	DateApplied DATETIME,
	Job nvarchar(50),
	Address nvarchar(50),
	City nvarchar(50),
	State nvarchar(20),
	Zip int,	
)

CREATE TABLE Files
(
	Id int identity primary key,
	Data varbinary(MAX),
	ContentType nvarchar(50)
)

INSERT INTO Users (username, password, usertype) VALUES ('test','test', 'applicant')
INSERT INTO Users (username, password, usertype) VALUES ('arctrade','arctrade', 'manager')
INSERT INTO Applications (userid) VALUES (1)


select * from users
select * from applications
select * from files 




