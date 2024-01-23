USE sakila;
-- 1. Display all available tables in the Sakila database.
SHOW tables;
-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3. Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table 
SELECT title from film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT distinct name AS language_from_the_language_table FROM language;
-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;
-- 4. Retrieve unique release years.
-- (unique means select distinct) 
 SELECT DISTINCT release_year FROM film;
 -- 5. Counting records for database insights:
 -- 5.1 Determine the number of stores that the company has.
 SELECT count(*) store_id FROM store; 
 -- 5.2 Determine the number of employees that the company has.
 SELECT count(*) staff_id FROM staff;
-- 5.3. Determine how many films are available for rent and how many have been rented.
-- How many films in total are available:
select count(inventory_id) from inventory; 
-- How many have been rented: (I understand it means we want to check the total amount of rent) 
select count(rental_id) from rental; 
 
 -- 6. Retrieve the 10 longest films.
 SELECT * from film order by length DESC limit 10;
 
 -- 7. Use filtering techniques in order to:
 -- 7.1 Retrieve all actors with the first name "SCARLETT".
  select * from actor where first_name = 'SCARLETT';
  -- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
  select * from film where title like 'ARMAGEDDON%' and length > 100;
  -- 7.3 Determine the number of films that include Behind the Scenes content
  select count(*) from film where special_features like 'Behind the Scenes';