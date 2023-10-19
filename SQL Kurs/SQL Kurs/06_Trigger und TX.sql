drop table if exists o1
drop table if exists t1

select * into o1 from orders;
Go

create table t1 (id int)
GO




create or alter trigger trgdemo on o1
for  insert, update, delete
as
select 'A',* from o1 where orderid = 10248
select 'B',* from inserted
select 'C',* from deleted
select '---------'
insert into t1 
select orderid from inserted
Go


select * from o1

begin tran
update o1 set freight = 200 where orderid = 10248 
select * from t1
rollback
select * from t1

---instead of
create table t2 (id int, spx int, spy int)


create or alter trigger trgdemo2 on t2
instead of insert
as
insert into t2
select id, spx*100, spy*100 from inserted

insert into t2
select 1,2,3
GO

select * from t2
