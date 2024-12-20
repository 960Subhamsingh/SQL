select * FROM detail;
create view empv as select * from detail where category='Clothing';

 -- create view empview1 as select emp_no,dept_no,emp_name,sal,dept_name from emp_049;

-- 4.  A. SELECT COMMAND select * from empv;
select * from empv;
--  B. delete 'Saree' from epmv view 
delete from empv where sub_category='Saree';
-- drop view
 drop view empv;