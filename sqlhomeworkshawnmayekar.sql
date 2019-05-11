SELECT A.emp_no, last_name, first_name, gender, salary  FROM public."Employees" A, public."salaries" B WHERE A.emp_no = B.emp_no;

SELECT emp_no, last_name, first_name, hire_date  FROM public."Employees" A
WHERE A.hire_date BETWEEN CAST('01/01/1986' AS date) AND CAST('12/31/1986' AS date);

SELECT    	C.dept_no,
 	  	B.dept_name , 
C.emp_no , 
A.last_name,
A.first_name, 
C.from_date, 
C.to_date
FROM 	public."Employees" A, public."Departments" B, public."DeptManager" C
WHERE
 C.dept_no = B.dept_no  AND
 C.emp_no = A.emp_no ORDER BY C.dept_no;
 
 SELECT    	A.emp_no,
A.last_name,
A.first_name, 
 	  	B.dept_name 
FROM 	public."Employees" A, public."Departments" B, public."DeptEmployees" C
WHERE
 C.dept_no = B.dept_no  AND
 C.emp_no = A.emp_no ORDER BY A.emp_no;
 
 SELECT     A.last_name,
                  A.first_name
FROM 	public."Employees" A
WHERE
 A.first_name = 'Hercules' and 
 A.last_name LIKE 'B%' ORDER BY A.last_name;
 
 SELECT    		A.emp_no,
				A.last_name,
                A.first_name,
				C.dept_name
FROM  public."Employees" A, public."DeptEmployees" B,  public."Departments" C
WHERE
 A.emp_no = B.emp_no AND
 B.dept_no = C.dept_no AND 
 C.dept_name IN ('Sales', 'Development')
 ORDER by C.dept_no;
 
 SELECT last_name, COUNT(*) as frequency
FROM public."Employees"
GROUP BY last_name
ORDER BY COUNT(*) DESC;


