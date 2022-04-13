CREATE DATABASE CINEMAAZ
 CREATE TABLE Actor(
 Id int identity(1,1) Primary Key,
 FullName nvarchar(150) NoT nULL,
 MovieJanrId int references MovieJanr (Id)
 )

 CREATE TABLE MoviesJanr(
 Id int identity(1,1) PRIMARY KEY,
 MoviesId int references Movies (Id),
 JanrId int references Janr (Id)
 )
  Create table Janr(
  Id int identity(1,1) PRIMARY key,
  Name nvarchar(100) Not null
  )

  Create TaBLE Movies(
  Id int identity(1,1) PRIMARY KEY,
  Name nvarchar(100) Not null,
  ReleaseDate date DEFAULT GETDATE()
  )
  
  CREATE TABLE Seans(
  Id int identity(1,1) PRIMARY KEY,
  SessionTime dateTIME default getdate()
  )

  CREATE TABLE Hall(
  Id int identity(1,1) Primary key,
  Name nvarchar(75) Not null,
  SeatCount int Not null
  )

  CREATE TABLE CUSTOMER(
  iD INT IDENTITY(1,1) pRIMARY KEY,
  FullName nvarchar(150) Not nULL
  )

  CREATE TABLE TICKET(
  Id int identity(1,1) PRIMARY KEY,
  SoldDate date default getdate(),
  Price int NOT NULL,
  Place int Not null,
  CustomerId int references Customer (Id),
  HallId INT references Hall (Id),
  MoviesId int references Movies (Id),
  SeansId int references Seans (ID)
 )

 Create Table Actors(
 Id int identity(1,1) PRIMARY KEY,
 FullName nvarchar(150) NOT NULL
 )
 CREATE TABLE MOVIESActors(
 Id int identity(1,1) Primary Key,
 MoviesId int references Movies (Id),
 ActorsId int references Actors (Id)
 )