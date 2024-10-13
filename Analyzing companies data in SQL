1) What is the average revenue among the companies on the list? Distributed by industry?

  select 
      	industry
      	,avg(revenue) as Average_revenue
  from companies 
  group by industry

2) Which industries are most and least represented on the list?
The most represented on the list:

select 	
	industry
	,count(*) as Amount
from companies
group by industry 
order by Amount desc

The least represented on the list:

select 
	industry
	,count(*) as Amount
from companies
group by industry
order by Amount ASC

3) Which industries recorded the highest average growth rate?

select 	
	industry
	,avg(growth) as Average_of_growth_rate
from companies 
group by industry 
order by Average_of_growth_rate desc

4) Which ten companies had the largest increase in staff/new hires?

select 
	name
	,workers - previous_workers as increase_in_staff
from companies
order by increase_in_staff desc
limit 10

5) Did any companies increase revenue while reducing staff?

select 
	name
from companies 
where 
previous_workers > workers
and 
growth > 0
