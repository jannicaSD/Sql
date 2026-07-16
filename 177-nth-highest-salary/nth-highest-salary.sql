
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  -- 1. Create a variable to handle the 0-indexed offset
  SET N = N - 1; 
  
  RETURN (
    -- 2. Fetch the unique Nth highest salary
    SELECT DISTINCT salary 
    FROM Employee 
    ORDER BY salary DESC 
    LIMIT 1 OFFSET N
  );
END