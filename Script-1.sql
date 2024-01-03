--1--

select count(last_name)
from actor
Where last_name like 'Wahlberg';

--4--

select *
from customer 
where first_name like 'Willie';

--5--
select staff_id ,count(staff_id)
from rental
group by staff_id

select *
from staff 


--8--


select store_id,count(last_name)
from customer  
where last_name like '%es'
group by store_id; 

--2--

select amount,count(*)
from payment
where amount between 3.99 and 5.99
group by amount;
--7--
select actor_id,film_id,count(film_id)
from film_actor 
group by actor_id,film_id 
order by film_id desc;

--3--
select film_id,count(film_id)
from inventory
group by film_id
having count(*) = 7;

--9--
select amount,count(amount)
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;

--answer: 3 amounts (2.99,4.99,0.99)

--10--

select rating,count(rating) as filmz
from film
group by rating
order by filmz desc;


--7--

select film_id,count(*) AS num_actors
from film_actor 
group by film_id 
order by num_actors desc
limit 1;
--answer - 508 with 15 actors
--6--
select count(distinct district)
from address;
--answer - 378
