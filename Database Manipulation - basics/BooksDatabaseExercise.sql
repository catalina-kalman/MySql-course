drop database if exists books_database;

create database books_database;
use books_database;

create table Author(
authorID int primary key,
firstName varchar(25) not null,
middleName varchar(25),
lastName varchar(50) not null,
gender varchar(1),
dateOfBirth date not null,
dateOfDeath date
);

create table Formats(
formatID int primary key,
formatName varchar(12) not null
);

create table Genre(
genreID int primary key,
genreName varchar(12)
);

alter table Genre
modify column genreName varchar(12) not null;

create table Book(
BookID int primary key,
title varchar(100) not null,
publicationDate date
);

create table AuthorBook(
authorID int, constraint foreign key(authorID) references Author(authorID) on update cascade on delete cascade,
bookID int, constraint foreign key(bookID) references Book(bookID) on update cascade on delete cascade,
primary key(authorID, bookID)
);

create table BookFormat(
bookID int, constraint foreign key(bookID) references Book(bookID) on update cascade on delete cascade,
formatID int, constraint foreign key(formatID) references Formats(formatID) on update cascade on delete cascade,
price double,
quantityOnHand int,
primary key(bookID, formatID)
);

create table BookGenre(
bookID int, constraint foreign key(bookID) references Book(bookID) on update cascade on delete cascade,
genreID int, constraint foreign key(genreID) references Genre(genreID) on update cascade on delete cascade,
primary key(bookID, genreID)
);

