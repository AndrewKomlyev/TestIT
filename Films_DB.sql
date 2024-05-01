/*droping the schema if exists*/
DROP DATABASE IF EXISTS FilmsDatabase;

/*createing the schema*/
CREATE DATABASE FilmsDatabase;

USE FilmsDatabase;

/*creating table films*/
CREATE TABLE Films
(
	id INT NOT NULL AUTO_INCREMENT,
    name_film VARCHAR(200),
    director_film VARCHAR(200),
    release_date DATETIME,
    CONSTRAINT PK_Films PRIMARY KEY (id)
);


CREATE TABLE Categories
(
	id INT NOT NULL AUTO_INCREMENT,
    name_categories VARCHAR(200),
    parent_category_if int NULL,
    CONSTRAINT PK_Categories PRIMARY KEY (id)
);

CREATE TABLE Film_Ctaegories
(
	id INT NOT NULL AUTO_INCREMENT,
    film_id int,
    category_id int,
    CONSTRAINT PK_Films_Categories PRIMARY KEY (id),
    CONSTRAINT FK_Film_ID FOREIGN KEY (film_id) REFERENCES Films(id),
    CONSTRAINT FK_Category_ID FOREIGN KEY (category_id) REFERENCES Categories(id)
);

Insert into Films (name_film, director_film, release_date) values ('Predator', 'John McTiernan', '1987-06-12');
Insert into Films (name_film, director_film, release_date) values ('Alien', 'Ridley Scott', '1979-05-25');
Insert into Films (name_film, director_film, release_date) values ('The Terminator', 'James Cameron', '1984-10-26');
Insert into Films (name_film, director_film, release_date) values ('Starship Troopers', 'Paul Verhoeven', '1997-11-04');
Insert into Films (name_film, director_film, release_date) values ('La La Land', 'Damien Chazelle', '2016-08-31');
Insert into Films (name_film, director_film, release_date) values ('Easy A', 'Will Gluck', '2010-09-11');


Insert into Categories (name_categories) values ('Action');
Insert into Categories (name_categories) values ('Sci-Fi');
Insert into Categories (name_categories) values ('Comedy');
Insert into Categories (name_categories) values ('Horror');


Insert into  Film_Ctaegories(film_id, category_id) values (1,1);
Insert into  Film_Ctaegories(film_id, category_id) values (2,4);
Insert into  Film_Ctaegories(film_id, category_id) values (3,1);
Insert into  Film_Ctaegories(film_id, category_id) values (4,2);
Insert into  Film_Ctaegories(film_id, category_id) values (5,3);
Insert into  Film_Ctaegories(film_id, category_id) values (6,3);


