insert into products values (1001 ,'PEN','Pen Red',5000,1.23);
insert into products values (1002 ,'PEN','Pen Blue',58000,1.25);
insert into products values (1003 ,'PEN','Pen Black',2000,1.25);
insert into products values (1004 ,'PCL','Pencil 2B',10000,0.49);
insert into products values (1005 ,'PCL','Pencil 2H',9000,0.48);


update products set price= ; 


MySQL update && select 
CREATE TABLE `testupdate` ( 
  `id` bigint(20) NOT NULL AUTO_INCREMENT, 
  `val` bigint(20) NOT NULL DEFAULT '0', 
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 
update testupdate set val = val+1 where id = 1 and @value := val+1; 
select @value; 

Select * from products;

CREATE TABLE `books`(
	isbn int,
	title varchar(50),
	price float,
	qty int,
	PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into books values(1001,'Java for Dummies',11.11,11);
insert into books values(1002,'Only Java',22.22,22);
insert into books values(1003,'Java ABC',33.33,33);
insert into books values(1004,'Java 123',44.44,44);
select * from books;


CREATE TABLE `authors`(
	authorID int,
	name varchar(30),
	email varchar(30),
	PRIMARY KEY (`authorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into authors(authorID,name,email) values(1,'Tan Ah Teck','tec@nowhere.com');
insert into authors(authorID,name,email) values(2,'Mohamed Ali','ali@somewhere.com');
insert into authors(authorID,name,email) values(3,'Kumar','kumar@abc.com');
insert into authors(authorID,name,email) values(4,'Kelvin Jones','kelvin@xyz.com');
select * from authors;
update authors set name='Tan Ah Teck' where authorID=1;

CREATE TABLE `books_authors`(
	authorID int,
	isbn int
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into books_authors values(1,1001);
insert into books_authors values(2,1001);
insert into books_authors values(3,1001);
insert into books_authors values(1,1002);
insert into books_authors values(3,1002);
insert into books_authors values(2,1003);
insert into books_authors values(2,1004);
select * from books_authors;


SELECT books.title, books.price, authors.name
   FROM books, books_authors, authors
   WHERE books.isbn = books_authors.isbn
      AND authors.authorID = books_authors.authorID
      AND authors.name = 'Tan Ah Teck';
	  
	  
select b.title,b.price,b.qty 
	from books b,authors a,books_authors ba 
	where b.isbn=ba.isbn
		and a.authorID=ba.authorID
		and a.name='Tan Ah Teck'
		and b.price<20;
		
select a.name,a.email
	from authors a,books b, books_authors ba
	where b.title='Java for Dummies'
		and b.isbn=ba.isbn
		and a.authorID=ba.authorID;
		
select b.title,b.price,b.qty,a.name,a.email
	from books b,authors a,books_authors ba 
	where b.isbn=ba.isbn
		and a.authorID=ba.authorID
		and b.title like 'Java%';
