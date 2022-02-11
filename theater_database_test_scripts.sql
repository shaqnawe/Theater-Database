-- Scripts to check for data

select * from movie m
join ticket t on t.movie_id = m.id 
join receipt r on r.movie_id = t.movie_id
order by m.showtime 

select co.item_name,first_name,last_name from concession co
join customer c on co.customer_id = c.id
group by co.item_name, first_name,last_name

select s.first_name,s.last_name, s.id from staff s
join receipt r on r.staff_id = s.id
where r.id = 601
group by s.first_name,s.last_name, s.id

select co.amount,first_name,last_name from concession co
join customer c on co.customer_id = c.id
group by co.amount, first_name,last_name
order by co.amount desc

select r.movie_id, r.title from staff s
join receipt r on r.staff_id = s.id
where r.id = 601