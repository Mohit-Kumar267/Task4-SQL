CREATE DATABASE D;
USE D;
CREATE TABLE Sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(50),
    region VARCHAR(50),
    amount DECIMAL(10, 2),
    sale_date DATE
);
INSERT INTO Sales (employee_name, region, amount, sale_date) VALUES
('Alice', 'North', 500.00, '2025-09-01'),
('Bob', 'South', 700.00, '2025-09-01'),
('Alice', 'North', 800.00, '2025-09-02'),
('Charlie', 'South', 200.00, '2025-09-02'),
('Alice', 'North', 450.00, '2025-09-03'),
('Bob', 'South', 600.00, '2025-09-03'),
('Charlie', 'South', 900.00, '2025-09-03'),
('Alice', 'North', 300.00, '2025-09-04');
SELECT 
    employee_name,
    region,
    SUM(amount) AS total_sales,
    AVG(amount) AS avg_sale
FROM 
    Sales
GROUP BY 
    employee_name, region
HAVING 
    SUM(amount) > 1000;