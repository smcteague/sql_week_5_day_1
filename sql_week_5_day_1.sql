-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name, COUNT(last_name) AS last_name_count
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name;


-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount) AS amount_count
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id) AS film_id_count
FROM inventory
GROUP BY film_id
ORDER BY film_id_count DESC;


-- 4. How many customers have the last name ‘William’?
SELECT last_name, COUNT(last_name) AS last_name_count
FROM customer
WHERE last_name = 'William'
GROUP BY last_name;


-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(rental_id) AS rental_id_count
FROM rental
GROUP BY staff_id
ORDER BY rental_id_count DESC;


-- 6. How many different district names are there?
SELECT COUNT(DISTINCT district) AS unique_districts_count
FROM address;


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(DISTINCT actor_id) as unique_actor_id_count -- using DISTINCT just as a precaution
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id, COUNT(last_name) AS last_name_count
FROM customer
WHERE store_id = '1' AND last_name LIKE '%es'
GROUP BY store_id;


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(rental_id) AS rental_id_count
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250
ORDER BY amount ASC;


-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT rating, COUNT(film_id) AS film_id_count
FROM film
GROUP BY rating
ORDER BY film_id_count DESC;








