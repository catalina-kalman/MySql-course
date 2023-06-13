use books_database;
SET SQL_SAFE_UPDATES = 0;

delete from author;
insert into author values
(1, "Jane", null, "Austen", "F", "1775-12-16", "1817-07-18"),
(2, "Ernest", null, "Hemingway", "M", "1899-07-21", "1961-07-02"),
(3, "Virginia", null, "Woolf", "F", "1882-01-25", "1941-03-28"),
(4, "William", null, "Shakespeare", "M", "1564-04-26", "1616-04-23"),
(5, "J.R.R.", null, "Tolkien", "M", "1892-01-03", "1973-09-02"),
(6, "Toni", null, "Morrison", "F", "1931-02-18", "2019-08-05"),
(7, "F. Scott", null, "Fitzgerald", "M", "1896-09-24", "1940-12-21"),
(8, "Harper", null, "Lee", "F", "1926-04-28", "2016-02-19"),
(9, "George", null, "Orwell", "M", "1903-06-25", "1950-01-21"),
(10, "Emily", null, "Dickinson", "F", "1830-12-10", "1886-05-15");

delete from formats;
insert into formats values
(1, "paper"),
(2, "e-book"),
(3, "audio");

delete from genre;
insert into genre values
(1, "Romance"),
(2, "Realism"),
(3, "Modernism"),
(4, "Tragedy"),
(5, "Comedy"),
(6, "Poetry"),
(7, "Fantasy");

delete from book;
insert into book values
(7, "The Great Gatsby", "1925-04-10"),
(6, "Beloved", "1987-09-02"),
(4, "Romeo and Juliet", "1597-01-01"),
(5, "The Hobbit", "1937-09-21"),
(10, "The Complete Poems of Emily Dickinson", "1890-01-01"),
(9, "Nineteen Eighty-Four", "1949-06-08"),
(3, "Mrs Dalloway", "1925-05-14"),
(8, "To Kill a Mockingbird", "1960-07-11"),
(1, "Pride and Prejudice", "1813-01-28"),
(2, "The Old Man and the Sea", "1952-09-01");

delete from authorbook;
insert into authorbook values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

delete from bookformat;
insert into bookformat values
(1, 2, 35.99, 150),
(2, 1, 24.50, 100),
(3, 3, 18.75, 180),
(4, 1, 12.80, 120),
(5, 3, 42.25, 80),
(6, 2, 29.99, 160),
(7, 3, 47.50, 90),
(8, 2, 15.99, 170),
(9, 1, 39.50, 110),
(10, 3, 21.75, 190);

delete from bookgenre;
insert into bookgenre values
(7, 2),
(6, 3),
(4, 4),
(5, 7),
(10, 6),
(9, 3),
(3, 3),
(8, 2),
(1, 1),
(2, 2);

