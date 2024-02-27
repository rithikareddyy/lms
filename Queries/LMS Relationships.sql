create table lms.member (
memberId int primary key,
firstName varchar(255),
lastName varchar(255),
phoneNumber bigint,
emailAddress varchar(255)
);

drop table member;
drop table book;

use lms;
create table library_member (
member_id int primary key,
first_name varchar(25),
last_name varchar(25),
phone_number bigint,
email_address varchar(35),
membership_level varchar(10),
address_id int
);

alter table library_member 
add foreign key (address_id) references address(address_id);


create table checkout (
id int primary key,
isbn bigint,
member_id int,
checkout_date datetime,
due_date datetime,
is_returned boolean
);

alter table checkout
add foreign key (member_id) references library_member(member_id),
add foreign key (isbn) references book_isbn(isbn);


create table book_isbn(
isbn bigint primary key,
book_id int
);
alter table book_isbn
add foreign key (book_id) references book(book_id);



create table book (
book_id int primary key,
title varchar(45),
author_name varchar(50),
year_published int,
quantity int
);

create table address (
address_id int primary key,
line1 varchar(30),
line2 varchar(30),
city varchar(20),
state char(2),
zip int
);

INSERT INTO address (address_id, line1, line2, city, state, zip)
VALUES
(1, '123 Main St', 'Apt 101', 'Anytown', 'NY', 12345),
(2, '456 Elm St', '', 'Sometown', 'CA', 54321),
(3, '789 Oak St', 'Unit B', 'Othertown', 'TX', 67890),
(4, '101 Pine St', 'Suite 200', 'Anothertown', 'FL', 98765),
(5, '202 Maple St', '', 'Lasttown', 'WA', 54321),
(6, '303 Cedar St', '', 'Newtown', 'MA', 13579);


INSERT INTO library_member (member_id, first_name, last_name, email_address, phone_number, membership_level, address_id)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 1234567890, 'Gold', 1),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 9876543210, 'Silver', 2),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 5551234567, 'Bronze', 3),
(4, 'Emily', 'Brown', 'emily.brown@example.com', 9998887776, 'Gold', 4),
(5, 'David', 'Davis', 'david.davis@example.com', 1112223334, 'Silver', 5),
(6, 'Emma', 'Wilson', 'emma.wilson@example.com', 4445556668, 'Bronze', 6),
(7, 'Olivia', 'Martinez', 'olivia.martinez@example.com', 7778889991, 'Gold', 1),
(8, 'Daniel', 'Anderson', 'daniel.anderson@example.com', 2223334445, 'Silver', 2),
(9, 'Sophia', 'Taylor', 'sophia.taylor@example.com', 6667778882, 'Bronze', 3),
(10, 'William', 'White', 'william.white@example.com', 8889990003, 'Gold', 4);


INSERT INTO book (book_id, title, author_name, year_published, quantity)
VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 1960, 10),
(2, '1984', 'George Orwell', 1949, 15),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 12),
(4, 'Pride and Prejudice', 'Jane Austen', 1813, 8),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 1951, 11),
(6, 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 1997, 20);

INSERT INTO book_isbn (isbn, book_id)
VALUES
(9780061120084, 1),
(9780451524935, 2),
(9780743273565, 3),
(9780140434261, 4),
(9780316769488, 5),
(9780590353427, 6),
(9780061120085, 1),
(9780451524936, 2),
(9780743273566, 3),
(9780140434262, 4),
(9780316769489, 5),
(9780590353428, 6),
(9780061120086, 1),
(9780451524937, 2),
(9780743273567, 3),
(9780140434263, 4),
(9780316769490, 5),
(9780590353429, 6),
(9780061120087, 1),
(9780451524938, 2);

select * from library_member;


 