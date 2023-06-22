create database DVDLibrary;
use DVDLibrary;

drop table if exists dvdlibrary;
create table dvdlibrary(
dvdID varchar(3) primary key,
title varchar(100) not null,
releaseDate date,
mpaaRating varchar(6),
directorName varchar(50),
studio varchar(40),
userRating varchar(7)
);

delete from dvdlibrary;
insert into dvdlibrary values
("1", "Inception", "2010-07-16", "PG-13", "Christopher Nolan", "Warner Bros.", "8.8/10"),
("2", "The Shawshank Redemption", "1994-09-23", "R", "Frank Darabont", "Columbia Pictures", "9.3/10"),
("3", "The Dark Knight", "2008-07-18", "PG-13", "Christopher Nolan", "Warner Bros.", "9.0/10"),
("4", "Pulp Fiction", "1994-10-14", "R", "Quentin Tarantino", "Miramax Films", "8.9/10"),
("5", "Fight Club", "1999-10-15", "R", "David Fincher", "20th Century Fox", "8.8/10"),
("6", "The Lord of the Rings: The Fellowship of the Ring", "2001-12-19", "PG-13", "Peter Jackson", "New Line Cinema", "8.8/10"),
("7", "Forrest Gump", "1994-07-06", "PG-13", "Robert Zemeckis", "Paramount Pictures", "8.8/10"),
("8", "Star Wars: Episode V - The Empire Strikes Back", "1980-05-21", "PG", "Irvin Kershner", "20th Century Fox", "8.7/10"),
("9", "The Matrix", "1999-03-31", "R", "Lana Wachowski, Lilly Wachowski", "Warner Bros.", "8.7/10"),
("10", "Avengers: Endgame", "2019-04-26", "PG-13", "Anthony Russo, Joe Russo", "Marvel Studios", "8.4/10"),
("11", "Interstellar", "2014-11-07", "PG-13", "Christopher Nolan", "Paramount Pictures", "8.6/10"),
("12", "movie", "2014-11-07", "PG-13", "smth", "smth", "9/10");