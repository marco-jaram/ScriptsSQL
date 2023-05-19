CREATE database factoria;
use factoria;
CREATE TABLE Empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    edad INT,
    salario DECIMAL(10, 2),
    fecha_contrato DATE
);

INSERT INTO Empleados (id, nombre, edad, salario, fecha_contrato) VALUES
    (1, 'Juan Perez', 30, 2500.00, '2020-01-15'),
    (2, 'Maria Lopez', 35, 3200.00, '2019-08-10'),
    (3, 'Pedro Ramirez', 28, 1800.50, '2021-03-20'),
    (4, 'Laura Gomez', 32, 2900.00, '2018-06-05'),
    (5, 'Carlos Torres', 40, 3800.75, '2022-02-12'),
    (6, 'Ana Martinez', 27, 2100.00, '2021-07-01'),
    (7, 'Luis Sanchez', 33, 2600.00, '2020-11-18'),
    (8, 'Elena Rodriguez', 31, 2700.25, '2019-04-25'),
    (9, 'Javier Vega', 29, 2400.50, '2020-09-30'),
    (10, 'Sofia Herrera', 34, 3200.00, '2017-12-03');
   
   -- Empleados con edad mayor a 30
SELECT * FROM Empleados WHERE edad > 30;

-- Empleados con salario inferior a 2500
SELECT * FROM Empleados WHERE salario < 2500;

-- Empleados con salario entre 2000 y 3000
SELECT * FROM Empleados WHERE salario BETWEEN 2000 AND 3000;



-- Empleados cuyo nombre comienza con "J"
SELECT * FROM Empleados WHERE nombre LIKE 'J%';

-- Empleados cuyo nombre contiene la letra "a"
SELECT * FROM Empleados WHERE nombre LIKE '%a%';

-- Empleados cuyo nombre termina con "ez"
SELECT * FROM Empleados WHERE nombre LIKE '%ez';


-- Empleados contratados antes de 2020
SELECT * FROM Empleados WHERE fecha_contrato < '2020-01-01';

-- Empleados contratados después de 2019
SELECT * FROM Empleados WHERE fecha_contrato > '2019-12-31';

-- Empleados contratados en marzo de 2021
SELECT * FROM Empleados WHERE fecha_contrato >= '2021-03-01' AND fecha_contrato <= '2021-03-31';


-- Empleados con edad menor a 30
SELECT * FROM Empleados WHERE edad < 30;

-- Empleados con salario mayor a 3000
SELECT * FROM Empleados WHERE salario > 3000;

-- Empleados con edad distinta de 35
SELECT * FROM Empleados WHERE edad <> 35;



-- Empleados con salario entre 2500 y 3500
SELECT * FROM Empleados WHERE salario BETWEEN 2500 AND 3500;

-- Empleados contratados entre enero de 2019 y diciembre de 2020
SELECT * FROM Empleados WHERE fecha_contrato BETWEEN '2019-01-01' AND '2020-12-31';



-- Empleados con ID 2, 5 y 8
SELECT * FROM Empleados WHERE id IN (2, 5, 8);

-- Empleados con edades 28, 32 y 34
SELECT * FROM Empleados WHERE edad IN (28, 32, 34);

-- 7
-- Empleados cuyo nombre empieza con "L"
SELECT * FROM Empleados WHERE nombre LIKE 'L%';

-- Empleados cuyo nombre contiene "ez"
SELECT * FROM Empleados WHERE nombre LIKE '%ez%';

-- 8
-- Empleados con edad mayor a 30 y salario superior a 2500
SELECT * FROM Empleados WHERE edad > 30 AND salario > 2500;

-- Empleados contratados después de 2019 y cuyo salario es mayor a 3000
SELECT * FROM Empleados WHERE fecha_contrato > '2019-12-31' AND salario > 3000;
-- 9
-- Empleados con edad menor a 30 o salario superior a 3000
SELECT * FROM Empleados WHERE edad < 30 OR salario > 3000;

-- Empleados contratados antes de 2020 o cuyo salario es mayor a 3500
SELECT * FROM Empleados WHERE fecha_contrato < '2020-01-01' OR salario > 3500;

-- 10
-- Empleados ordenados por edad de forma ascendente
SELECT * FROM Empleados ORDER BY edad ASC;

-- Empleados ordenados por salario de forma descendente
SELECT * FROM Empleados ORDER BY salario DESC;

-- Empleados ordenados por fecha de contrato de forma ascendente
SELECT * FROM Empleados ORDER BY fecha_contrato ASC;

-- 11
-- Empleados cuyo nombre contiene la letra "a" y su edad es menor a 30
SELECT * FROM Empleados WHERE nombre LIKE '%a%' AND edad < 30;

-- Empleados cuyo salario es mayor a 2500 y su edad es mayor o igual a 30
SELECT * FROM Empleados WHERE salario > 2500 AND edad >= 30;


-- 12

-- Empleados cuyo nombre comienza con "M" y su salario es mayor a 3000
SELECT * FROM Empleados WHERE nombre LIKE 'M%' && salario > 3000;

-- Empleados cuya edad es menor a 30 y su salario está entre 2000 y 2500
SELEACT * FROM Empleados WHERE edad < 30 && salario BETWEEN 2000 AND 2500;


-- 13

-- Habilitar la verificación de resultados
SET VERIFY ON;

SELECT * FROM Empleados;

-- Deshabilitar la verificación de resultados
SET VERIFY OFF;

SELECT * FROM Empleados;


