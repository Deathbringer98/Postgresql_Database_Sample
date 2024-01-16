SELECT film.film_id, film.title, film.release_year, film.rental_rate, customer.customer_id, customer.first_name, customer.last_name, customer.email
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
JOIN customer ON rental.customer_id = customer.customer_id
WHERE film.release_year > 2005
GROUP BY film.film_id, customer.customer_id
ORDER BY film.release_year DESC, customer.last_name, customer.first_name;
