SELECT current_database();
-- creation of table 
create table retails_sales
			(
			transactions_id INT,
			sale_date DATE,
			sale_time TIME ,
			customer_id	INT,
			gender VARCHAR(15),
			age	 INT,
			category VARCHAR(15),
			quantiy	INT ,
			price_per_unit FLOAT,
			cogs	FLOAT,
			total_sale FLOAT_
		);
--  TOPIC 1 DATA CLEANING_____

SELECT * FROM retails_sales limit(150)
select count(*) from retails_sales
select * from retails_sales where 
		transactions_id is null
		or 
		sale_date  is null
		or
		sale_time is null
		or
		sale_time is null
		or 
		customer_id is null
		or
		gender is null
		or
		age is null
		or
		category is null
		or 
		quantiy is null
		or
		price_per_unit is null
		or
		cogs is null
		or 
		total_sale is  null
		;
delete from retails_sales  
where transactions_id is null
		or 
		sale_date  is null
		or
		sale_time is null
		or
		sale_time is null
		or 
		customer_id is null
		or
		gender is null
		or
		age is null
		or
		category is null
		or 
		quantiy is null
		or
		price_per_unit is null
		or
		cogs is null
		or 
		total_sale is  null
		;


--TOPIC 2 ____EDA (EXPLOTORY DATA ANALYSIS)___

-- __HOW MANY NO OF THE SALES ARE ??

SELECT COUNT(*) total_sale from retails_sales

-- __ how many  UNIQUE customer id TOTAL__-

SELECT COUNT( DISTINCT customer_id) total_sale from retails_sales

SELECT DISTINCT category as total_sale from retails_sales 



-- TOPIC 3 ___ DATA ANALYSIS AND BUSINESS KEY PROBLEM AND ANSWER _______

-- QUE 1 WRITE A QUERY TO RETRIVE ALL THE COLUMN  OF TOTAL SALES MADE ON "2022-11-5"

SELECT * FROM retails_sales where sale_date='2022-11-05';

---QUE 2 WRITE A QUERY TO RETRIVE ALL  THE  TRANCTION WHERE THE CATEGOY IS "CLOTHING "  AND  QUANTIRTY SOLD MORE THAN 10 IM MONTH OF THE  NOV '2022'

SELECT * from  retails_sales  where category='Clothing' and  TO_CHAR(sale_date,'yyyy-mm')='2022-11' And  quantiy>=4


--- waq to calculate total sale of each category
select category,sum(total_sale),count(*) as total_orders from  retails_sales 
group by 1

----waq to find  the average age of the customer whose  brought item likes 'beuty ' category 
select avg(age) from  retails_sales  
where category='Beauty'


--- waq to find all the transaction  where total sale is greter than 1000
select * from retails_sales
where total_sale>=1000



---waq to  find total number of the trancation ( transactions_id ) made by each gender in each category 

select gender,category,count(*) as total_tractions  from retails_sales
 group by 
gender,category


---- waq to find   the avg sale of each months and find best sale of the months 

select YEAR,MONTH   FROM(  
SELECT extract(YEAR FROM sale_date) as YEAR,extract(MONTH FROM sale_date) as MONTH, avg(total_sale),
RANK() OVER(PARTITION BY  extract(YEAR FROM sale_date) ORDER BY  avg(total_sale) DESC )  AS RANK 
from retails_sales  
GROUP BY 1,2
) AS T1 
WHERE RANK =1 

---- WAQ TO FIND THE  top 5 customer have highest sale 

select customer_id,SUM(total_sale)as sAle from  retails_sales 
group by 1
ORDER BY 2 
limit 5

----waq to find  the   no of unique customer  who buy  item from each category --

select count(distinct(customer_id)) as bhai , category 
from retails_sales  group by category 

--- waq to  find each shift and  number of order ----
select *, case
when extract (hour from sale_time) <12 then 'morning '
when extract (hour from sale_time) between 12 and 17  then 'afternoon ' else 'afternoon '
 end as shift from retails_sales   

select extract ( hour from current _time)

