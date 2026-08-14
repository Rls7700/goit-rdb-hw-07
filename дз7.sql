select
	id,
    date,
    year(date) as year,
    month(date) as month,
    day(date) as day
from orders;

select
	id,
    date,
    date_add(date, interval 1 day) as date_plus_one_day
from orders;

select
	id,
    date,
    unix_timestamp(date) as timestamp_seconds
from orders;

select
	count(*) as orders_count
from orders
where date between '1996-07-10 00:00:00'
	and '1996-10-08 00:00:00';
    
select
	id,
    date,
    json_object(
    'id', id,
    'date', date
) as json_data
from orders;