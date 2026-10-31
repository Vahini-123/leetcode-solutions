CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set N=N-1;
  RETURN (
    select Distinct salary from Employee
    order by salary desc
     LIMIT N,1
    

  );
END