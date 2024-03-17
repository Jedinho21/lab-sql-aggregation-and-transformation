SELECT 
    MAX(LENGTH) as max_duration,
    MIN(LENGTH) as min_duration
FROM film;

SELECT 
    CONCAT(
        FLOOR(AVG(LENGTH) / 60), ' hours ',
        ROUND(AVG(LENGTH) % 60), ' minutes'
    ) AS average_duration
FROM FILM;

SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) AS days_operating 
FROM rental;

SELECT 
    rental_id, 
    rental_date, 
    MONTH(rental_date) AS rental_month,
    DAYNAME(rental_date) AS rental_weekday
FROM rental
LIMIT 20;


SELECT 
    rental_id, 
    rental_date, 
    DAYNAME(rental_date) AS rental_weekday,
    CASE 
        WHEN DAYOFWEEK(rental_date) = 1 OR DAYOFWEEK(rental_date) = 7 THEN 'weekend'
        ELSE 'workday'
    END AS DAY_TYPE
FROM rental
LIMIT 20;


SELECT 
    title AS film_title, 
    IFNULL(rental_duration, 'Not Available') AS rental_duration
FROM film
ORDER BY film_title;


SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    SUBSTRING(email, 1, 3) AS email_prefix
FROM 
    customer
ORDER BY 
    last_name ASC;
    
    
    SELECT COUNT(*) AS total_films
FROM film;


SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating;


SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating
ORDER BY film_count DESC;

SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1;


SELECT*FROM SAKILA.FILM;