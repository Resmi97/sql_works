create database hdfc;
use hdfc;
create table customer_details
(
cus_id int auto_increment primary key,
cus_name varchar(50) not null,
cus_age int not null
);

insert into customer_details(cus_name,cus_age)
values('ram',25),
('anu',30),
('manu',20),
('sanu',35);
select * from customer_details;

create table account_details
(
acc_no int auto_increment primary key,
cus_id int,
cus_name varchar(50),
FOREIGN KEY (cus_id) REFERENCES customer_details (cus_id) ON DELETE CASCADE
);

insert into account_details(cus_id,cus_name)
values(1,'ram'),
(2,'anu'),
(3,'manu'),
(4,'sanu');
select * from account_details;

create table transaction_details
(tran_id int auto_increment primary key,
acc_no int not null,
deposit int not null,
withdraw int ,
avail_bal int ,
last_tran_date date,
FOREIGN KEY (acc_no) REFERENCES account_details (acc_no) ON DELETE CASCADE
);
insert into transaction_details(tran_id, acc_no, deposit, withdraw, avail_bal, last_tran_date)
values(1,1000),
(2,2000),
(3,5000),
(4,1000);
select * from transaction_details;




