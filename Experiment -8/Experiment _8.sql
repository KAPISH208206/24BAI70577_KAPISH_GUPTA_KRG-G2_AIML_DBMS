CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    gender VARCHAR(10)
);

INSERT INTO employees (emp_name, gender) VALUES
('Aman', 'Male'),
('Riya', 'Female'),
('John', 'Male'),
('Sara', 'Female'),
('Neha', 'Female'),
('Rahul', 'Male');

CREATE OR REPLACE FUNCTION get_employee_count_by_gender(p_gender VARCHAR)
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
DECLARE
    emp_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO emp_count
    FROM employees
    WHERE gender = p_gender;

    RETURN emp_count;
END;
$$;

SELECT get_employee_count_by_gender('Male') AS male_count;
SELECT get_employee_count_by_gender('Female') AS female_count;