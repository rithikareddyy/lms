insert into member 
(memberId, firstName, lastName, emailAddress, phoneNumber) 
values (
121,'Rithika', 'Reddy', 'rithika@gmail.com', '3167356789'
);

insert into member 
(memberId, firstName, lastName, emailAddress, phoneNumber) 
values (
676,'Shruthi', 'Thirunagari', 'shruthi@gmail.com', '8987654567'
);
insert into member 
(memberId, firstName, lastName, emailAddress, phoneNumber) 
values (
565,'Harry', 'Potter', 'harry@gmail.com', '7879096578'
);

select * from member;
select memberId, firstName from member;
select concat(firstName, ' ', lastName, ' ') from member;
select concat(firstName, ' ', lastName, ' ') as Full_Name from member;
select count(*) from member;
select distinct * from member;
select count(distinct emailAddress) from member;

select * from member where memberId > 100 and firstName = 'Rithika';
select * from member where memberId > 100 and firstName in ('Rithika', 'Shruthi');
select * from member where firstName like 'Rith%';

update member set lastName = 'Reddy' where memberId = 565;
delete from member where memberId > 600;
truncate member;











