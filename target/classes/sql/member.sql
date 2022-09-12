mysql> create table member(
    -> user_seq  int(11) AUTO_INCREMENT primary key,
    -> id varchar(50) not null,
    -> nick  varchar(100) not null,
    -> pw varchar(100) not null,
    -> freedom varchar(50) not null,
    -> registerDate DATETIME
    -> );
    
    