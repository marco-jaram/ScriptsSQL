CREATE DATABASE automotriz;
USE automotriz;

CREATE TABLE vehiculos (
  id INT PRIMARY KEY,
  marca VARCHAR(50),
  modelo VARCHAR(50),
  precio DECIMAL(10, 2)
);
INSERT INTO vehiculos (id, marca, modelo, precio) VALUES
  (1, 'Toyota', 'Corolla', 20000.50),
  (2, 'Ford', 'Mustang', 35000.75),
  (3, 'Honda', 'Civic', 18000.25),
  (4, 'Chevrolet', 'Camaro', 40000.00),
  (5, 'BMW', 'X5', 50000.00),
  (6, 'Mercedes-Benz', 'E-Class', 45000.80),
  (7, 'Audi', 'A4', 38000.50),
  (8, 'Volkswagen', 'Golf', 22000.75),
  (9, 'Hyundai', 'Elantra', 19000.25),
  (10, 'Nissan', 'Sentra', 21000.00);

 
--  Consultas
 
 -- Consulta 1: Convertir el precio a formato monetario
SELECT id, marca, modelo, CONCAT('$', FORMAT(precio, 2)) AS precio_formato
FROM vehiculos;

-- Consulta 2: Convertir el id a formato de tres dígitos con ceros a la izquierda
SELECT LPAD(id, 3, '0') AS id_formato, marca, modelo, precio
FROM vehiculos;
-- Consulta 1: Convertir una fecha en formato texto a formato de fecha
SELECT id, marca, modelo, CAST('2023-01-15' AS DATE) AS fecha_compra
FROM vehiculos;

-- Consulta 2: Extraer el año de una fecha y convertirlo a formato texto
SELECT id, marca, modelo, CAST(YEAR('2022-05-20') AS CHAR) AS año_compra
FROM vehiculos;
-- Consulta 1: Mostrar el precio de los vehículos y utilizar 0 como valor predeterminado para los precios nulos
SELECT id, marca, modelo, COALESCE(precio, 0) AS precio
FROM vehiculos;

-- Consulta 2: Calcular la suma de los precios y utilizar 0 como valor predeterminado si no hay registros
SELECT COALESCE(SUM(precio), 0) AS total_precios
FROM vehiculos;
-- Consulta 1: Mostrar el modelo de los vehículos y asignar una categoría según el precio
SELECT id, marca,
  CASE 
    WHEN precio >= 40000 THEN 'Premium'
    WHEN precio >= 30000 THEN 'Intermedio'
    ELSE 'Económico'
  END AS categoria,
  modelo, precio
FROM vehiculos;

-- Consulta 2: Calcular el descuento de precio para los vehículos y asignar un mensaje según el descuento
SELECT id, marca, modelo, precio,
  CASE 
    WHEN precio >= 40000 THEN 'Descuento del 20%'
    WHEN precio >= 30000 THEN 'Descuento del 10%'
    ELSE 'Sin descuento'
  END AS mensaje_descuento
FROM vehiculos;
