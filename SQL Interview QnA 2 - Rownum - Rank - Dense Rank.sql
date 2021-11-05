--SQL Interview Questions and Answers 
--Difference between row_number, rank and dense rank

--Author: Rohan Suresh
--YouTube: Learning with Rohan 
--Website: https://rohanbs.com

--Execute the following DDLs and DMLs to create the test data
create table customers (
	cust_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	contact_no VARCHAR(50)
);
insert into customers (cust_id, first_name, last_name, email, gender, contact_no) values (1, 'Steve', 'Shearsby', 'gshearsby0@stumbleupon.com', 'Female', '273-789-3679');
insert into customers (cust_id, first_name, last_name, email, gender, contact_no) values (2, 'Mark', 'Bernollet', 'hbernollet1@vinaora.com', 'Female', '194-513-8003');
insert into customers (cust_id, first_name, last_name, email, gender, contact_no) values (3, 'Chris', 'Steely', 'lsteely2@addthis.com', 'Non-binary', '687-336-0772');
insert into customers (cust_id, first_name, last_name, email, gender, contact_no) values (4, 'Lance', 'Brunet', 'lbrunet3@joomla.org', 'Female', '762-457-4294');
insert into customers (cust_id, first_name, last_name, email, gender, contact_no) values (5, 'Amanda', 'Hansley', 'ahansley4@google.cn', 'Female', '452-183-9351');
insert into customers (cust_id, first_name, last_name, email, gender, contact_no) values (6, 'Chris', 'Steely', 'lsteely2@addthis.com', 'Non-binary', '687-336-0772');
insert into customers (cust_id, first_name, last_name, email, gender, contact_no) values (7, 'Lance', 'Brunet', 'lbrunet3@joomla.org', 'Female', '762-457-4294');
insert into customers (cust_id, first_name, last_name, email, gender, contact_no) values (8, 'Chris', 'Steely', 'lsteely2@addthis.com', 'Non-binary', '687-336-0772');


--Query to identify duplicate records
SELECT EMAIL, COUNT(*) COUNTS
FROM CUSTOMERS
GROUP BY EMAIL
HAVING COUNT(*)>1;


--Query to identify duplicate records along with other fields
SELECT cust_id, first_name, email,
	row_number() over (order by email) rownum,
	      rank() over (order by email) ranks,
	dense_rank() over (order by email) dense_ranks
FROM CUSTOMERS;


--Along with partition by clause
SELECT cust_id, first_name, email,
	row_number() over (partition by email order by cust_id) rownum,
	      rank() over (partition by email order by cust_id) ranks,
	dense_rank() over (partition by email order by cust_id) dense_ranks
FROM CUSTOMERS;