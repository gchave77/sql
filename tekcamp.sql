-- Take a look at the tables in the students database. In the tekcamp.sql file, write a sql comment mentioning the name of the original sql database and any tables that currently exist in the database.
-- the original sql database name is students, the tables are tekcamp01 and tekcampers

-- Create your own students database. Name the database in the following format : tc1-<firstname-lastname>-.
-- ONE-TIME RUN!!!
show databases;
-- delete tc1_gabechavez.tekcampers from tc1_gabechavez;
CREATE DATABASE IF NOT EXISTS tc1_gabechavez;

-- Create a table on your personal copy of the students database. Call the table tekcampers.
USE tc1_gabechavez;
CREATE TABLE if not exists tekcampers like students.tekcamp01;

-- Transfer over all the data UNMODIFIED from tc1 table of the original students database.
-- Note that you may need to research how to transfer data from one table to another in MySQL.
select * from students.tekcamp01;
select * from tc1_gabechavez.tekcampers;
truncate table tc1_gabechavez.tekcampers;
insert into tc1_gabechavez.tekcampers select * from students.tekcamp01;
select * from tc1_gabechavez.tekcampers;

-- I then used Workbench to manually assign the primary key before adding student
-- You should see that there are a number of students that are missing from the original list of students in the students database. There are a total of 35 registered students @ TEKcamp. Find out the missing students and add them to the tekcampers table. Find out the necessary information missing from those students and add them to your tekcampers table.
INSERT INTO tekcampers(first_name, last_name, gender) VALUES 
('John', 'Bozarov', 'M'), ('Devon', 'Brewster', 'M'), ('Justin', 'Cheng', 'M'), ('Cody', 'Clark', 'M'), 
('Tyler', 'Clements','M'), ('Monica', 'Howard', 'F'), ('Gotham', 'Katta', 'M'), ('Kevin', 'Keesee','M'), 
('John','Kol','M'), ('Vimala','Murthy','F'), ('Arron','White','M');
select * from tc1_gabechavez.tekcampers;

-- There may be records of students that are not part of TEKcamp or are no longer part of TEKcamp. Remove those records from your tekcampers table.
select * from tekcampers order by id;
delete from tc1_gabechavez.tekcampers where last_name = "Kremling";
delete from tekcampers where last_name = "Garcia";
delete from tekcampers where last_name = "Myers";
-- select * from tekcampers;

-- You may have noticed that the data in the table is not quite accurate. Put the gender data in the appropriate column, and fix any incorrect entries. For the education field, reach out to your fellow tekcampers to find their educational background and update your table accordingly. If they do not give permission or don't feel comfortable sharing their educational background, put NULL as the value for that particular record.
-- UPDATE tc1_gabechavez.tekcampers SET education = "High School Diploma";
UPDATE tc1_gabechavez.tekcampers SET gender = 'F' WHERE first_name = 'Abigail';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Gabe';
UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Nancy';
UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Jessica';
UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Sabitha';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Adam';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Marcelo';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Caleb';
UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Norita';
UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Katherine';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Julian';
UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Vani';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Kevin';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'George';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Jose';
UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Phoenix';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Mathew';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Victor';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Michael';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Korey';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Christian';
UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Zachary';
UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Sarah';
-- select * from tc1_gabechavez.tekcampers;

UPDATE tc1_gabechavez.tekcampers SET education = 'High School Diploma';
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Abigail';
UPDATE tekcampers SET education = NULL WHERE first_name = 'Gabe';
UPDATE tekcampers SET education = 'Masters Degree' WHERE first_name = 'Nancy';
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Jessica';
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Sabitha';
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Adam';
UPDATE tekcampers SET education = 'Some College' WHERE first_name = 'Marcelo';
UPDATE tekcampers SET education = 'Associates Degree' WHERE first_name = 'Caleb';
UPDATE tekcampers SET education = 'Doctorate' WHERE first_name = 'Norita';
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Katherine';
UPDATE tekcampers SET education = 'Some College' WHERE first_name = 'Julian';
UPDATE tekcampers SET education = 'Masters Degree' WHERE first_name = 'Vani';
UPDATE tekcampers SET education = 'Some College' WHERE first_name = 'George';
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Jose';
UPDATE tekcampers SET education = 'Associates Degree' WHERE first_name = 'Phoenix';
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE last_name = 'Castiglione';
UPDATE tekcampers SET education = 'Some College' WHERE first_name = 'Victor';
UPDATE tekcampers SET education = 'Masters Degree' WHERE first_name = 'Korey';
UPDATE tekcampers SET education = 'Some College' WHERE first_name = 'Christian';
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Sarah';
UPDATE tekcampers SET education = 'Masters Degree' WHERE first_name = 'Vimala';
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Gotham';
UPDATE tekcampers SET education = 'Bachelor Degree' WHERE first_name = 'John';
UPDATE tekcampers SET education = 'Masters Degree' WHERE last_name = 'Choat';
select * from tc1_gabechavez.tekcampers;

-- Perform SQL queries on the tekcampers table that returns data that show the following:

-- Students whose last names are longer than 7 characters
SELECT * FROM tc1_gabechavez.tekcampers WHERE LENGTH(last_name) > 7;

-- Alphabatized by student's first name
SELECT * FROM tc1_gabechavez.tekcampers ORDER BY first_name;

-- Alphabatized by student's last name
SELECT * FROM tc1_gabechavez.tekcampers ORDER BY last_name;

-- Students that are male
SELECT * FROM tc1_gabechavez.tekcampers WHERE gender = "m";

-- Students that are female
SELECT * FROM tc1_gabechavez.tekcampers WHERE gender = "f";

-- Students that have a Masters degree
SELECT * FROM tc1_gabechavez.tekcampers WHERE education = "Masters Degree";

-- Students that have a Bachelors degree
SELECT * FROM tc1_gabechavez.tekcampers WHERE education = "Bachelors Degree";

-- Students that have an Associate degree
SELECT * FROM tc1_gabechavez.tekcampers WHERE education = "Associates Degree";

-- Students that don't currently have a Higher Education Degree
SELECT * FROM tc1_gabechavez.tekcampers WHERE education = "High School Diploma";

-- Create another table in YOUR database. The table name should follow the following format: ta-<ta-name>. In this table, only put those students that are part of your TA team. You may use any method to add the data to this table, whether it is manual entry, subquery, or some other method.
CREATE TABLE IF NOT EXISTS ta_emilios SELECT * FROM tc1_gabechavez.tekcampers;
DELETE from ta_emilios WHERE first_name IN ("Nancy", "Sabitha", "Caleb", "Norita", "Katherine", "Vani", 
"Kevin", "George", "Mathew", "Korey", "Zachary", "Sarah", "John", "Justin", "Cody", "Tyler", "Gotham", 
"Victor", "Vimala", "Arron");
SELECT * FROM tc1_gabechavez.ta_emilios;

-- Create another table in YOUR database. Call the table: hobbies. Insert a set of hobbies into this table. It may be useful to ask your TA team about various hobbies that can be used as data for this table. Make sure each hobby record is tied to a student from your tekcampers table.
CREATE TABLE IF NOT EXISTS hobbies SELECT * FROM ta_emilios;
ALTER TABLE hobbies ADD COLUMN hobby VARCHAR(20) NOT NULL;
UPDATE hobbies SET hobby = 'Reading' WHERE first_name = 'Abigail';
UPDATE hobbies SET hobby = 'cattle rustling' WHERE first_name = 'Gabe';
UPDATE hobbies SET hobby = 'Listening to music/creating playlists' WHERE first_name = 'Jessica';
UPDATE hobbies SET hobby = 'Golfing' WHERE first_name = 'Adam';
UPDATE hobbies SET hobby = 'Jiu Jitsu' WHERE first_name = 'Marcelo';
UPDATE hobbies SET hobby = 'Pickle Ball' WHERE first_name = 'Julian';
UPDATE hobbies SET hobby = 'playing soccer' WHERE first_name = 'Jose';
UPDATE hobbies SET hobby = 'Aerial yoga' WHERE first_name = 'Phoenix';
UPDATE hobbies SET hobby = 'Gaming' WHERE first_name = 'Michael';
UPDATE hobbies SET hobby = 'ESC' WHERE first_name = 'Christian';
UPDATE hobbies SET hobby = 'Coding' WHERE first_name = 'Devon';
UPDATE hobbies SET hobby = 'Coding' WHERE first_name = 'Monica';
DELETE FROM hobbies WHERE first_name = "Victor";

ALTER TABLE hobbies DROP COLUMN gender;
ALTER TABLE hobbies DROP COLUMN education;
SELECT * FROM hobbies;

-- Once the hobbies table has been created and populated, create an aggregate table of every student in your TA team being matched with the hobby they like. Take a screen shot of this table after the successful query and save the screen shot file as a .jpg or .png file.
SELECT hobbies.hobby, ta_emilios.first_name FROM hobbies 
INNER JOIN ta_emilios ON hobbies.last_name = ta_emilios.last_name;
SELECT * FROM tc1_gabechavez.tekcampers;

-- All the student data needs an additional field, bootcamp. This field represents a previous bootcamp the student has attended prior to TEKcamp. Modify the table to add this field to the tc1-<firstname-lastname>- table you have already created.
ALTER TABLE tc1_gabechavez.tekcampers ADD COLUMN bootcamp VARCHAR(20);
UPDATE tekcampers SET bootcamp = "Coding Dojo" WHERE first_name = 'Adam';
UPDATE tekcampers SET bootcamp = "DevMountain" WHERE first_name = 'Phoenix';
UPDATE tekcampers SET bootcamp = "Coding Dojo" WHERE first_name = 'Julian';
UPDATE tekcampers SET bootcamp = "Coding Dojo" WHERE first_name = 'Marcelo';
UPDATE tekcampers SET bootcamp = "DevMountain" WHERE first_name = 'Zach';
UPDATE tekcampers SET bootcamp = "Trilogy Education" WHERE first_name = 'Cody';
UPDATE tekcampers SET bootcamp = "U.S. Navy bootcamp" WHERE first_name = 'Gabe';
UPDATE tekcampers SET bootcamp = "SMU Coding Bootcamp" WHERE last_name = 'Choat';
UPDATE tekcampers SET bootcamp = "Trilogy Education" WHERE first_name = 'Justin';

SELECT * FROM tc1_gabechavez.tekcampers;

-- Add the bootcamp field / column to your ta-<ta-name> table as well.
ALTER TABLE ta_emilios ADD bootcamp VARCHAR(20);
UPDATE ta_emilios INNER JOIN tekcampers ON ta_emilios.last_name = tekcampers.last_name 
SET ta_emilios.bootcamp = tekcampers.bootcamp;

SELECT * FROM tc1_gabechavez.ta_emilios;
