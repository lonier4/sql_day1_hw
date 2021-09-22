-- 1. How many actors are there with the last name ‘Wahlberg’? 
SELECT last_name, COUNT(last_name)
FROM actor
WHERE last_name LIKE 'Wahlberg'
Group BY last_name;

-- Answer: 2

-- 2. How many payments were made between $3.99 and $5.99? 
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--Answer: 5607

-- 3. What film does the store have the most of? (search in inventory) 
SELECT *
FROM inventory;

SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

--Answer: I get 72 different film_id's that appear 8 times each

-- 4. How many customers have the last name ‘William’? 
SELECT last_name, COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';
GROUP BY last_name;

--Answer: 0

-- 5. What store employee (get the id) sold the most rentals? 
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id;

--Answer: 1 - Mike Hillyer

-- 6. How many different district names are there? 
SELECT COUNT(DISTINCT district)
FROM address;

--Answer: 378

-- 7. What film has the most actors in it? (use film_actor table and get film_id) 
SELECT film_id,  COUNT(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

SELECT title
FROM film
WHERE film_id = 508;

-- Answer: Lambs Cincinatti

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es%'
ORDER BY store_id ASC;

--Answer: 15

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
SELECT *
FROM payment;

SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430 
GROUP BY amount
HAVING COUNT(amount) >250
ORDER BY COUNT(amount) DESC;

--Answer: 3

-- 10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
SELECT *
FROM film;

SELECT rating, COUNT(DISTINCT rating)
FROM film
GROUP BY rating;

-- Answer: 5 categories
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;

-- Answer: PG-13



