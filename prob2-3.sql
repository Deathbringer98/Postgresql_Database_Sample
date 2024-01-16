SELECT language_id, COUNT(*) AS language_count
FROM film
GROUP BY language_id;
