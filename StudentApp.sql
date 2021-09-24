use StudentApp;

CREATE TABLE  registeruser   
   (  userName VARCHAR(4000),   
    pass VARCHAR(4000),   
    name VARCHAR(4000),
    address VARCHAR(4000)
   ) ;
insert into registeruser values
 ("ram","pass","Ram Kumar","Mumbai");
 insert into registeruser values
 ("anu","password","Anu Kumar","Mumbai");
select * from registeruser;



