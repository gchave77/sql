-- Take a look at the tables in the students database. In the tekcamp.sql file, write a sql comment mentioning the name of the original sql database and any tables that currently exist in the database.
-- the original sql database name is students, the tables are tekcamp01 and tekcampers

-- Create your own students database. Name the database in the following format : tc1-<firstname-lastname>-.
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
select 

-- You may have noticed that the data in the table is not quite accurate. Put the gender data in the appropriate column, and fix any incorrect entries. For the education field, reach out to your fellow tekcampers to find their educational background and update your table accordingly. If they do not give permission or don't feel comfortable sharing their educational background, put NULL as the value for that particular record.

-- Perform SQL queries on the tekcampers table that returns data that show the following:

-- Students whose last names are longer than 7 characters
-- Alphabatized by student's first name
-- Alphabatized by student's last name
-- Students that are male
-- Students that are female
-- Students that have a Masters degree
-- Students that have a Bachelors degree
-- Students that have an Associate degree
-- Students that don't currently have a Higher Education Degree
-- Create another table in YOUR database. The table name should follow the following format: ta-<ta-name>. In this table, only put those students that are part of your TA team. You may use any method to add the data to this table, whether it is manual entry, subquery, or some other method.

-- Create another table in YOUR database. Call the table: hobbies. Insert a set of hobbies into this table. It may be useful to ask your TA team about various hobbies that can be used as data for this table. Make sure each hobby record is tied to a student from your tekcampers table.

-- Once the hobbies table has been created and populated, create an aggregate table of every student in your TA team being matched with the hobby they like. Take a screen shot of this table after the successful query and save the screen shot file as a .jpg or .png file.

-- All the student data needs an additional field, bootcamp. This field represents a previous bootcamp the student has attended prior to TEKcamp. Modify the table to add this field to the tc1-<firstname-lastname>- table you have already created.

-- Add the bootcamp field / column to your ta-<ta-name> table as well.

