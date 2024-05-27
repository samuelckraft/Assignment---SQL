create database music_library;

use music_library;
Create table Albums (
id INT auto_increment Primary key,
title VARCHAR(100) NOt Null,
artist_id INT,
genre_id INT, 
release_year date NOT NULL,
total_tracks INT NOT NULL,
foreign key (artist_id) references Artists(id),
foreign key (genre_id) references Genre(id));

Create table Genre (
id INT auto_increment Primary key,
name varchar(100) NOT NULL);

Create table Artists(
id INT auto_increment Primary key,
name varchar(100) NOT NULL)