-- U9 Aspecto 2 

-- Crear la base de datos
CREATE DATABASE db_mascotafeliz;

-- Utilizar la base de datos
USE db_mascotafeliz;

-- Crear la tabla "Mascotas"
CREATE TABLE Mascotas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  especie VARCHAR(50),
  raza VARCHAR(50),
  edad INT,
  precio DECIMAL(8, 2)
);

-- Insertar registros de ejemplo en la tabla "Mascotas"
INSERT INTO Mascotas (nombre, especie, raza, edad, precio)
VALUES ('Max', 'Perro', 'Labrador', 3, 500.00),
       ('Luna', 'Gato', 'Siames', 2, 300.50),
       ('Rocky', 'Perro', 'Bulldog', 5, 800.75),
       ('Simba', 'Gato', 'Persa', 1, 250.00),
       ('Coco', 'Perro', 'Chihuahua', 4, 350.25);

-- Crear la tabla "Clientes"
CREATE TABLE Clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  direccion VARCHAR(100),
  telefono VARCHAR(20),
  correo_electronico VARCHAR(100)
);

-- Insertar registros de ejemplo en la tabla "Clientes"
INSERT INTO Clientes (nombre, apellido, direccion, telefono, correo_electronico)
VALUES ('Juan', 'Perez', 'Calle 123, Ciudad', '1234567890', 'juan.perez@email.com'),
       ('Maria', 'Gonzalez', 'Avenida XYZ, Ciudad', '9876543210', 'maria.gonzalez@email.com'),
       ('Carlos', 'Lopez', 'Calle ABC, Ciudad', '5555555555', 'carlos.lopez@email.com'),
       ('Laura', 'Rodriguez', 'Avenida DEF, Ciudad', '1111111111', 'laura.rodriguez@email.com'),
       ('Pedro', 'Hernandez', 'Calle 456, Ciudad', '9999999999', 'pedro.hernandez@email.com');

      
CREATE VIEW MascotasJovenes AS
SELECT * FROM Mascotas WHERE Edad < 2;

CREATE VIEW MascotasCaras AS
SELECT * FROM Mascotas WHERE Precio > 1000;

CREATE VIEW ClientesVIP AS
SELECT * FROM Clientes WHERE id IN (1, 3, 5);

CREATE VIEW MascotasPerdidas AS
SELECT * FROM Mascotas WHERE id IN (7, 8, 9, 10);

CREATE VIEW MascotasClientes AS
SELECT m.nombre AS NombreMascota, c.nombre AS NombreCliente
FROM Mascotas m
JOIN Clientes c ON m.id_cliente = c.id;
CREATE VIEW MascotasPorEspecie AS
SELECT especie, COUNT(*) AS Cantidad
FROM Mascotas
GROUP BY especie;

CREATE VIEW MascotasPorRaza AS
SELECT raza, COUNT(*) AS Cantidad
FROM Mascotas
GROUP BY raza;
CREATE VIEW ClientesConMascotas AS
SELECT c.nombre, COUNT(*) AS CantidadMascotas
FROM Clientes c
JOIN Mascotas m ON c.id = m.id_cliente
GROUP BY c.nombre;
CREATE VIEW ClientesDireccionPopular AS
SELECT direccion, COUNT(*) AS Cantidad
FROM Clientes
GROUP BY direccion
HAVING COUNT(*) > 3;





      