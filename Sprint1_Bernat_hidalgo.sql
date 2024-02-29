# Nivell 1
# Exercici 2
select company_name, email, country from company
order by company_name;

# Exercici 3
select distinct country as Països from company
join transaction on company.id = transaction.company_id;

# Exercici 4
select count(distinct country) as Num_Països from company
join transaction on company.id = transaction.company_id;

# Exercici 5
select company_name, country from company
join transaction on company.id = transaction.company_id
where company_id = 'b-2354';

# Exercici 6
select company_name, avg(amount) as mitjana from company
join transaction on company.id = transaction.company_id
group by company_name 
order by  mitjana desc
limit 1;


# Nivell 2

# Exercici 1 ambdós casos el resultat es 100 per tant no tenim duplicats
select count(id) from company;
select count(distinct id) from company;

# Exercici 2
SELECT CAST(timestamp AS DATE) AS SaleDay,
       SUM(amount) AS Total
FROM transaction
GROUP BY CAST(timestamp AS DATE)
order by Total desc
limit 1
;

# Exercici 3
SELECT CAST(timestamp AS DATE) AS SaleDay,
       SUM(amount) AS Total
FROM transaction
GROUP BY CAST(timestamp AS DATE)
order by Total asc
limit 1
;

# Exercici 4
select avg(amount) as mitjana, country from company
join transaction on company.id = transaction.company_id
group by country
order by mitjana desc;


#Nivell 3

# Exercici 1
select company_name, phone, country, sum(amount) as total 
from company
join transaction
on company.id = transaction.company_id
group by company_name, phone, country
having total between 100 and 200
order by total desc;

# Exercici 2
select company_name, date(timestamp) 
from company
join transaction
on company.id = transaction.company_id
where date(timestamp) in ( '2022-03-16', '2022-02-28', '2022-02-13') ;
