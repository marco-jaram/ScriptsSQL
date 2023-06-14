-- Script par u10 trabajo final aspecto 1

CREATE DATABASE comercializadora;
USE comercializadora;
CREATE TABLE Clientes (
  IDCliente INT AUTO_INCREMENT PRIMARY KEY,
  Nombre VARCHAR(50),
  Apellido VARCHAR(50),
  Direccion VARCHAR(100),
  Telefono VARCHAR(15),
  Email VARCHAR(100),
  Ciudad VARCHAR(50)
);
CREATE TABLE Productos (
  IDProducto INT AUTO_INCREMENT PRIMARY KEY,
  Nombre VARCHAR(50),
  Descripcion VARCHAR(200),
  Precio DECIMAL(10,2),
  Stock INT,
  Categoria VARCHAR(50)
);
CREATE TABLE Ventas (
  IDVenta INT AUTO_INCREMENT PRIMARY KEY,
  Fecha DATE,
  IDCliente INT,
  IDProducto INT,
  Cantidad INT,
  Total DECIMAL(10,2),
  FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente),
  FOREIGN KEY (IDProducto) REFERENCES Productos(IDProducto)
);
INSERT INTO Clientes (Nombre, Apellido, Direccion, Telefono, Email, Ciudad)
VALUES
  ('Juan', 'Pérez', 'Calle 123, Ciudad A', '555-1234', 'juan.perez@email.com', 'Ciudad A'),
  ('María', 'López', 'Calle 456, Ciudad B', '555-5678', 'maria.lopez@email.com', 'Ciudad B'),
  ('Carlos', 'García', 'Calle 789, Ciudad A', '555-9876', 'carlos.garcia@email.com', 'Ciudad A'),
  ('Laura', 'Rodríguez', 'Calle 321, Ciudad C', '555-4321', 'laura.rodriguez@email.com', 'Ciudad C'),
  ('Ana', 'Martínez', 'Calle 654, Ciudad A', '555-8765', 'ana.martinez@email.com', 'Ciudad A'),
  ('Pedro', 'Sánchez', 'Calle 987, Ciudad B', '555-2198', 'pedro.sanchez@email.com', 'Ciudad B'),
  ('Sofia', 'Torres', 'Calle 852, Ciudad C', '555-7852', 'sofia.torres@email.com', 'Ciudad C');
INSERT INTO Productos (Nombre, Descripcion, Precio, Stock, Categoria)
VALUES
  ('Laptop', 'Laptop de última generación', 1000.00, 10, 'Electrónica'),
  ('Teléfono', 'Teléfono inteligente', 500.00, 20, 'Electrónica'),
  ('Camisa', 'Camisa de manga corta', 30.00, 50, 'Ropa'),
  ('Pantalón', 'Pantalón de mezclilla', 50.00, 30, 'Ropa'),
  ('Zapatos', 'Zapatos de cuero', 80.00, 15, 'Calzado'),
  ('Reloj', 'Reloj de pulsera', 100.00, 5, 'Accesorios'),
  ('Bolso', 'Bolso de mano', 70.00, 8, 'Accesorios'); 
 
 INSERT INTO Ventas (Fecha, IDCliente, IDProducto, Cantidad, Total)
VALUES
  ('2023-01-01', 1, 1, 2, 2000.00),
  ('2023-02-05', 2, 3, 5, 150.00),
  ('2023-03-10', 3, 2, 1, 500.00),
  ('2023-04-15', 4, 4, 3, 150.00),
  ('2023-05-20', 5, 6, 1, 100.00),
  ('2023-06-25', 6, 5, 2, 160.00),
  ('2023-07-30', 7, 7, 1, 70.00);

 SELECT * FROM Clientes;

SELECT V.IDVenta, V.Fecha, C.Nombre, C.Apellido, V.Total
FROM Ventas V
JOIN Clientes C ON V.IDCliente = C.IDCliente;
SELECT V.IDVenta, V.Fecha, P.Nombre, P.Precio, V.Cantidad, V.Total
FROM Ventas V
JOIN Productos P ON V.IDProducto = P.IDProducto;
SELECT C.IDCliente, C.Nombre, P.IDProducto, P.Nombre
FROM Clientes C
CROSS JOIN Productos P;

SELECT C.IDCliente, C.Nombre, P.IDProducto, P.Nombre
FROM Clientes C
CROSS JOIN Productos P;
SELECT V.IDVenta, V.Fecha, C.Nombre, C.Apellido, V.Total
FROM Ventas V
INNER JOIN Clientes C USING (IDCliente);
SELECT V.IDVenta, V.Fecha, P.Nombre, P.Precio, V.Cantidad, V.Total
FROM Ventas V
INNER JOIN Productos P USING (IDProducto);
SELECT V.IDVenta, V.Fecha, C.Nombre, C.Apellido, V.Total
FROM Ventas V
JOIN Clientes C ON V.IDCliente = C.IDCliente;
SELECT V.IDVenta, V.Fecha, P.Nombre, P.Precio, V.Cantidad, V.Total
FROM Ventas V
JOIN Productos P ON V.IDProducto = P.IDProducto;
SELECT V.IDVenta, V.Fecha, P.Nombre, P.Precio, V.Cantidad, V.Total
FROM Ventas V
JOIN Productos P ON V.IDProducto = P.IDProducto
WHERE V.IDCliente = 1;
SELECT V.IDVenta, V.Fecha, C.Nombre, C.Apellido, V.Cantidad, V.Total
FROM Ventas V
JOIN Clientes C ON V.IDCliente = C.IDCliente
WHERE V.IDProducto = 3;
SELECT V.IDVenta, V.Fecha, C.Nombre, C.Apellido, V.Total
FROM Ventas V
JOIN Clientes C ON V.IDCliente = C.IDCliente
JOIN (
    SELECT AVG(Total) AS PromedioVenta
    FROM Ventas
    GROUP BY IDCliente
) AS PV ON V.Total > PV.PromedioVenta;
SELECT V.IDVenta, V.Fecha, P.Nombre, P.Precio, V.Total
FROM Ventas V
JOIN Productos P ON V.IDProducto = P.IDProducto
JOIN (
    SELECT SUM(Total) AS TotalVentas
    FROM Ventas
    JOIN Productos ON Ventas.IDProducto = Productos.IDProducto
    WHERE Productos.Stock < 10
) AS TV ON V.Total > TV.TotalVentas;
SELECT C.Nombre, C.Apellido, V.IDVenta, V.Fecha, V.Total
FROM Clientes C
LEFT OUTER JOIN Ventas V ON C.IDCliente = V.IDCliente;
SELECT P.Nombre, P.Precio, V.IDVenta, V.Fecha, V.Total
FROM Productos P
LEFT OUTER JOIN Ventas V ON P.IDProducto = V.IDProducto;
SELECT V.IDVenta, V.Fecha, C.Nombre, C.Apellido, V.Total
FROM Clientes C
LEFT OUTER JOIN Ventas V ON C.IDCliente = V.IDCliente;
SELECT V.IDVenta, V.Fecha, C.Nombre, C.Apellido, V.Total
FROM Clientes C
LEFT OUTER JOIN Ventas V ON C.IDCliente = V.IDCliente
UNION
SELECT V.IDVenta, V.Fecha, C.Nombre, C.Apellido, V.Total
FROM Ventas V
RIGHT OUTER JOIN Clientes C ON V.IDCliente = C.IDCliente
WHERE V.IDVenta IS NULL;
SELECT P.Nombre, P.Precio, V.IDVenta, V.Fecha, V.Total
FROM Productos P
LEFT OUTER JOIN Ventas V ON P.IDProducto = V.IDProducto
UNION
SELECT P.Nombre, P.Precio, V.IDVenta, V.Fecha, V.Total
FROM Ventas V
RIGHT OUTER JOIN Productos P ON V.IDProducto = P.IDProducto
WHERE V.IDVenta IS NULL;



