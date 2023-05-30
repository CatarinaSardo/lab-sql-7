-- In the table actor, which are the actors whose last names are not repeated?

select last_name
from actor
group by last_name
having count(*) = 1;

-- Which last names appear more than once?

select last_name
from actor
group by last_name
having count(*) > 1;

-- Using the rental table, find out how many rentals were processed by each employee.

select staff_id, count(*) from rental
group by 1;

-- Using the film table, find out how many films were released each year.

select release_year, count(*) from film
group by 1;

-- Using the film table, find out for each rating how many films were there.

select rating, count(*) as film_count
from film
group by rating;

-- What is the mean length of the film for each rating type. Round off the average lengths to two decimal places

select rating, round(avg(length), 2) as average_lenght
from film
group by rating;

-- Which kind of movies (rating) have a mean duration of more than two hours?

select rating
from film
group by rating
having avg(length) > 120;
