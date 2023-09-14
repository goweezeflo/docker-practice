USE `goweezeflo`;

CREATE TABLE `books`
(
    `id`        int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `book_name` text,
    `author`    VARCHAR(25) DEFAULT 'Unknown',
    `year`      int         DEFAULT '2023',
    `edition`   int         DEFAULT '1'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO goweezeflo.books (`book_name`, `author`, `year`, `edition`)
VALUES ('Clean Code: A Handbook of Agile Software Craftsmanship', 'Robert Cecil Martin', '2008', '1'),
       ('Code Complete: A Practical Handbook of Software Construction', 'Steve McConnell', '2004', '2'),
       ('The Pragmatic Programmer: Your Journey To Mastery, 20th Anniversary Edition', 'David Thomas', '2019', '2'),
       ('Introduction to Algorithms', 'Thomas H. Cormen', '2022', '4'),
       ('Refactoring: Improving the Design of Existing Code', 'Martin Fowler', '2018', '2'),
       ('Head First Design Patterns: Building Extensible and Maintainable Object-Oriented Software', 'Eric Freeman', '2021', '2'),
       ('Code: The Hidden Language of Computer Hardware and Software', 'Charles Petzold', '2022', '2'),
       ('Working Effectively with Legacy Code', 'Michael Feathers', '2004', '1'),
       ('Terraform: Up and Running: Writing Infrastructure as Code', 'Yevgeniy Brikman', '2022', '3'),
       ('Cracking the Coding Interview: 189 Programming Questions and Solutions', 'Gayle Laakmann McDowell', '2015', '6');

CREATE TABLE `fruit`
(
    `id`       int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name`     VARCHAR(25) DEFAULT 'Unknown',
    `quantity` int(4) UNSIGNED  NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO goweezeflo.fruit (`name`, `quantity`)
VALUES ('Apple', '154'),
       ('Orange', '22'),
       ('Raspberry', '1357'),
       ('Pear', '435'),
       ('Strawberry', '22'),
       ('Watermelon', '0'),
       ('Kiwi', '8'),
       ('Banana', '32'),
       ('Lemon', '3'),
       ('Mango', '6');

CREATE TABLE `users`
(
    `id`            int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `first_name`    VARCHAR(25)      NOT NULL,
    `last_name`     VARCHAR(25)      NOT NULL,
    `year_of_birth` int(4)           NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

insert into goweezeflo.users (`first_name`, `last_name`, `year_of_birth`)
values ('Brian', 'Kernighan', 1942),
       ('Ken', 'Thompson', 1943),
       ('Dennis', 'Ritchie', 1941),
       ('Rob', 'Pike', 1956),
       ('Robert', 'Griesemer', 1964),
       ('Robert C.', 'Martin', 1952),
       ('Guido', 'van Rossum', 1956),
       ('James', 'Gosling', 1955),
       ('Bjarne', 'Stroustrup', 1950);
