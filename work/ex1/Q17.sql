SELECT category.name, count(rental.rental_id), avg(DATE_PART('day', return_date - rental_date))
FROM category
    JOIN film_category ON category.category_id=film_category.category_id
    JOIN inventory ON film_category.film_id=inventory.film_id
    JOIN rental ON inventory.inventory_id=rental.inventory_id
    GROUP BY category.category_id;