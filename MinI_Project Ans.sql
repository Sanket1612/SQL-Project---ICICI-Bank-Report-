use mini_project ;

show tables;

select * from account_type;
select * from bank_details;
select * from customer;
select * from department;
select * from employees;
select * from job_details;

SELECT c.customer_name, a.type_account, a.state
FROM 
    Customers c
JOIN 
    Accounts a ON c.account_no = a.account_no
JOIN 
    ATMs t ON a.account_no = t.account_no
WHERE 
    t.atm_no = '422748663';

select * from customer
where ATM_No = 422748663;



select d.dep_id, d.dep_name, e.job_id 
from department d
join employees e on d.Dep_Id = d.Dep_Id
where d.Dep_Name in ( "loan", "HR", "Admin");


ALTER TABLE `mini_project`.`account`  
CHANGE COLUMN `Account_no` `Account_no` INT NOT NULL , 
CHANGE COLUMN `Type_Acc ount` `Type_Account` VARCHAR(50) NOT NULL, 
CHANGE COLUMN `Manager_id` `Manager_id` INT NOT NULL, 
CHANGE COLUMN `Department_name` `Department_name` VARCHAR(30) , 
CHANGE COLUMN `Opening_Date` `Opening_Date`DATE  , 
DROP PRIMARY KEY, 
ADD PRIMARY KEY (`Account_no`, `Type_Account`);

ALTER TABLE `mini_project`.`bank_details`  
CHANGE COLUMN `Branch_code` `Branch_code` INT NOT NULL, 
CHANGE COLUMN `Address` `Address` VARCHAR(50) NULL DEFAULT NULL, 
CHANGE COLUMN `Branch_name` `Branch_name` VARCHAR(50) NULL DEFAULT NULL, 
CHANGE COLUMN `State` `State` VARCHAR(30) NULL DEFAULT NULL, 
ADD PRIMARY KEY (`Branch_code`);


ALTER TABLE `mini_project`.`customer` 

CHANGE COLUMN `pin_no` `pin_no` int  NULL DEFAULT NULL ;

alter table department 
modify department_id int  ;

alter table department
change column department_id department_id int primary key ;

alter table manager_id 
modify manager_id int ;

insert into bank_details values 
(100  ,"Ngapur"	, 1 ,"ICIC_N","Maharashtra"),
(101  ,"pune",	1 ,"ICIC_P	","Maharashtra"),
(102  ,	"Mumbai",	1 ,	"ICIC_M	","Maharashtra");






