create table lms.member (
memberId int primary key,
firstName varchar(20),
lastName varchar(20),
emailAddress varchar(50),
phoneNumber bigint
);

create table lms.Book (
bookId int primary key,
title varchar(20),
author varchar(20),
yearPublished int
);


ALTER TABLE member
DROP COLUMN phoneNumber;

ALTER TABLE member
ADD COLUMN phoneNumber bigint;

ALTER TABLE Book
MODIFY COLUMN title VARCHAR(30);

