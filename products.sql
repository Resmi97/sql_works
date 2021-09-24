use products;

 CREATE TABLE  storeadmin  
   (admin_name VARCHAR(4000),   
	password VARCHAR(200)
   ) ;  
   
insert into storeadmin values ('manu','manustore');
insert into storeadmin values ('sanu','sanustore');

select * from storeadmin;


 CREATE TABLE  product  
   (product_id int PRIMARY KEY,
	product_code VARCHAR(50),
	brand VARCHAR(50),   
	color VARCHAR(50),
    spec VARCHAR(10),
    price double,
    availability VARCHAR(1),
	in_stock int
   ) ;  
   drop table product;
insert into product values (100,'M31','Samsung','OceanBlue','4GB-64GB',16000,'Y',10);
insert into product values (101,'6','Realme','Blue','4GB-128GB',18000,'Y',5);
insert into product values (102,'C12','Realme','Black','3GB-32GB',12000,'Y',3);
insert into product values (103,'7Pro','OnePlus','MirrorGrey','8GB-256GB',52000,'N',0);

select * from product;