drop database if exists vinyl_record_shop;

create database vinyl_record_shop;
use vinyl_record_shop;

create table album(
albumID int primary key,
albumTitle varchar(100) not null,
label varchar(50),
releaseDate date,
price float(5,2)
);

create table artist(
artistID int primary key,
artistFirstName varchar(25),
artistLastName varchar(50) not null
);

create table band(
bandID int primary key,
bandName varchar(50) not null
);

create table song(
songID int primary key,
songTitle varchar(100) not null,
videoUrl varchar(100),
bandID int, constraint foreign key(bandID) references band(bandID)
);

create table songAlbum(
songID int, constraint foreign key(songID) references song(songID),
albumID int, constraint foreign key(albumID) references album(albumID),
primary key(songID, albumID)
);

create table bandArtist(
bandID int, constraint foreign key(bandID) references band(bandID),
artistID int, constraint foreign key(artistID) references artist(artistID),
primary key(bandID, artistID)
);


